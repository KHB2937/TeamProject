
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


@WebServlet("/delete")
public class Delete extends HttpServlet {
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

        try {
            // 삭제할 엔티티 객체를 조회합니다.
            int id = Integer.parseInt(request.getParameter("id"));
            Board board = em.find(Board.class, id);

            // 조회한 엔티티 객체를 삭제합니다.
            em.remove(board);
            em.getTransaction().commit();

            // 데이터 삭제 후 알림창을 띄웁니다.
            String message = "Data deleted successfully.";
            String script = "alert('" + message + "');";
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>" + script + "window.location='read';</script>");
        } catch (Exception e) {
            em.getTransaction().rollback();
            response.getWriter().println("Data deletion failed.");
        } finally {
            em.close();
        }

    }

    @Override
    public void destroy() {
        emf.close();
    }
}
