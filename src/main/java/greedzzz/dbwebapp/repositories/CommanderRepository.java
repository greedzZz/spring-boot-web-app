package greedzzz.dbwebapp.repositories;

import greedzzz.dbwebapp.model.Commander;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CommanderRepository extends JpaRepository<Commander, Integer> {
    @Query(value = "SELECT * FROM get_regiment_commanders(:regiment_number);", nativeQuery = true)
    List<Commander> getRegimentCommanders(@Param("regiment_number") Integer regimentNumber);

    @Query(value = "SELECT * FROM get_army_commanders(:army_number);", nativeQuery = true)
    List<Commander> getArmyCommanders(@Param("army_number") Integer armyNumber);
}
