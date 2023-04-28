
import org.example.Board;
import org.example.Comment;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.List;

@WebServlet("/comment")
public class CommentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
//        super.init();
        emf = Persistence.createEntityManagerFactory("myPU");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String author_id = request.getParameter("author_id");
        String comment = request.getParameter("comment");

        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        Comment c = new Comment(author_id, comment);
        em.persist(c);
        em.getTransaction().commit();

        em.close();

        em.getTransaction().begin();
        Query query = em.createQuery("SELECT s FROM Comment s", Comment.class);
        em.getTransaction().commit();

        em.close();


    }

    @Override
    public void destroy() {
        emf.close();
    }
}
