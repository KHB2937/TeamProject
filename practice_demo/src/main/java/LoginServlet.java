
import org.example.Member;

import java.io.*;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
//        super.init();
        emf = Persistence.createEntityManagerFactory("myPU");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Query query = em.createQuery("SELECT s FROM Member s", Member.class);
        List<Member> memberList = query.getResultList();

        for (Member member : memberList) {
            if (member.getEmail().equals(email) && member.getPassword().equals(password)) {
                // 로그인 성공
//                response.sendRedirect("success.jsp");
                // 로그인에 성공한 사용자 정보를 세션에 저장하는 등의 작업 수행
                em.getTransaction().commit();
                em.close();
                request.setAttribute("memberList", memberList);
                RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
                rd.forward(request, response);
                break;
            } else {
                continue;
                // 로그인 실패
//                response.sendRedirect("Fail.jsp");
                // 오류 메시지 출력 등의 작업 수행
            }
        }
        em.getTransaction().commit();
        em.close();
        request.setAttribute("memberList", memberList);
        RequestDispatcher rd = request.getRequestDispatcher("Fail.jsp");
        rd.forward(request, response);
    }
}