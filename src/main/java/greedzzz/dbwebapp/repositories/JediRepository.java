package greedzzz.dbwebapp.repositories;

import greedzzz.dbwebapp.model.Jedi;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface JediRepository extends JpaRepository<Jedi, Integer> {
    @Query(value = "SELECT * FROM get_jedi();", nativeQuery = true)
    List<Jedi> getJedi();
}
