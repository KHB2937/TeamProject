import org.example.Dog;
import org.example.Sex;
import org.example.Size;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/register1")
public class DogServlet extends HttpServlet {
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

        try {
            em.getTransaction().begin();
            Query query = em.createNativeQuery("SELECT LAST_INSERT_ID() from Members");
            List<Object> result = query.getResultList();
            if (!result.isEmpty()) {
                int lastId = Integer.parseInt(result.get(0).toString());
                resp.getWriter().println("Last inserted ID: " + lastId);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            ex.printStackTrace();
        } finally {
            em.close();
        }

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT s FROM org.example.Dog s", Dog.class);
        List<Dog> dogList = query.getResultList();

        em.getTransaction().commit();

        em.close();

        req.setAttribute("dogList", dogList);

        RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
        rd.forward(req, resp);
    }


    private int doLastIdGet() throws ServletException, IOException {
        EntityManager em = emf.createEntityManager();
        int lastId = 0;
        try {
            em.getTransaction().begin();
            Query query = em.createNativeQuery("SELECT LAST_INSERT_ID() from Members");
            List<Object> result = query.getResultList();
            if (!result.isEmpty()) {
                lastId = Integer.parseInt(result.get(0).toString());
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            ex.printStackTrace();
        } finally {
            em.close();
        }
        return lastId;
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String dogname = request.getParameter("dogname");
        String breed = request.getParameter("breed");
        Sex sex = Sex.valueOf(request.getParameter("sex"));
        Size size = Size.valueOf(request.getParameter("size"));
        int age = Integer.parseInt(request.getParameter("age"));
        int owner = doLastIdGet();

//        int age = Integer.parseInt(request.getParameter("age"));

        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        Dog dog = new Dog(dogname, breed, sex, size, age);
        em.persist(dog);
        em.getTransaction().commit();

        em.close();

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }



    @Override
    public void destroy() {
        emf.close();
    }

}
