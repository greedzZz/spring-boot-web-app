package greedzzz.dbwebapp.repositories;

import greedzzz.dbwebapp.model.Planet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PlanetRepository extends JpaRepository<Planet, String> {
    @Query(value = "SELECT * FROM get_planets(:system);", nativeQuery = true)
    List<Planet> getPlanets(@Param("system") String system);
}
