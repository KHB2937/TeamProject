
import org.example.Board;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.List;


@WebServlet("/detail")
public class DetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
//        super.init();
        emf = Persistence.createEntityManagerFactory("myPU");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        int id = Integer.parseInt(request.getParameter("id"));
        Board board = em.find(Board.class, id);

        // 게시글 정보를 JSP 페이지에서 사용할 수 있도록 request에 저장합니다.
        request.setAttribute("board", board);

        // JSP 페이지로 포워딩합니다.
        RequestDispatcher rd = request.getRequestDispatcher("detail.jsp");
        rd.forward(request, response);

        // EntityManager를 종료합니다.
        em.close();
        emf.close();
    }

    @Override
    public void destroy() {
        emf.close();
    }
}
