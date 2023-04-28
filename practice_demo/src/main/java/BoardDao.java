import org.example.Board;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import java.util.List;

public class BoardDao {
    private final EntityManagerFactory emf;

    public BoardDao(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public List<Board> findAll() {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Query query = em.createQuery("SELECT s FROM Board s", Board.class);
        List<Board> postList = query.getResultList();
        em.getTransaction().commit();
        em.close();
        return postList;
    }

    public void close() {
        emf.close();
    }
}