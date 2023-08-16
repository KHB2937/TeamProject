
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


@WebServlet("/board1")
public class BoardServlet extends HttpServlet {
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
        String username = request.getParameter("username");
        String title = request.getParameter("title");
        String content = request.getParameter("content");


        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Query query = em.createQuery("SELECT s FROM Board s", Board.class);
        List<Board> boardList = query.getResultList();

        Board board = new Board(title, content);
        em.persist(board);

        em.getTransaction().commit();
        em.close();
        request.setAttribute("boardList", boardList);
        RequestDispatcher rd = request.getRequestDispatcher("/boardList.jsp");
        rd.forward(request, response);
    }

    @Override
    public void destroy() {
        emf.close();
    }
}
