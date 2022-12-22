package greedzzz.dbwebapp.repositories;

import greedzzz.dbwebapp.model.Clone;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CloneRepository extends JpaRepository<Clone, Integer> {
    @Query(value = "SELECT * FROM get_squad_clones(:squad_number);", nativeQuery = true)
    List<Clone> getSquadClones(@Param("squad_number") Integer squadNumber);

    @Query(value = "SELECT * FROM get_regiment_clones(:regiment_number);", nativeQuery = true)
    List<Clone> getRegimentClones(@Param("regiment_number") Integer regimentNumber);

    @Query(value = "SELECT * FROM get_army_clones(:army_number);", nativeQuery = true)
    List<Clone> getArmyClones(@Param("army_number") Integer armyNumber);
}
