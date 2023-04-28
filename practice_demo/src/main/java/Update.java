
import org.example.Board;
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


@WebServlet("/update")
public class Update extends HttpServlet {
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
            // 수정할 엔티티 객체를 조회합니다.
            int id = Integer.parseInt(request.getParameter("id"));
            Board board = em.find(Board.class, id);

            // 수정할 데이터를 파라미터에서 받아 엔티티 객체에 저장합니다.
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            board.setTitle(title);
            board.setContent(content);


            // 엔티티 객체를 수정합니다.
            em.merge(board);
            em.getTransaction().commit();

            // 데이터 수정 후 알림창을 띄웁니다.
            String message = "Data updated successfully.";
            String script = "alert('" + message + "');";
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>" + script + "window.location='read';</script>");
        } catch (Exception e) {
            em.getTransaction().rollback();
            String message = "Data update failed.";
            String script = "alert('" + message + "');";
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>" + script + "window.history.back();</script>");
        } finally {
            em.close();
        }
    }

    @Override
    public void destroy() {
        emf.close();
    }
}
