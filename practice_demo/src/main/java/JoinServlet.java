
import org.example.Member;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.List;

@WebServlet("/register")
public class JoinServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
//        super.init();
        emf = Persistence.createEntityManagerFactory("myPU");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT s FROM org.example.Member s", Member.class);
        List<Member> memberList = query.getResultList();

        em.getTransaction().commit();

        em.close();

        req.setAttribute("memberList", memberList);

        RequestDispatcher rd = req.getRequestDispatcher("joinRes.jsp");
        rd.forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

//        int age = Integer.parseInt(request.getParameter("age"));

        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        Member member = new Member(username, email, password);
        em.persist(member);
        em.getTransaction().commit();

        em.close();

        RequestDispatcher dispatcher = request.getRequestDispatcher("/puppy_info.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    public void destroy() {
        emf.close();
    }
}
