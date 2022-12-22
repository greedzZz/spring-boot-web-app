package greedzzz.dbwebapp.repositories;

import greedzzz.dbwebapp.model.Colonel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ColonelRepository extends JpaRepository<Colonel, Integer> {
    @Query(value = "SELECT * FROM get_army_colonels(:army_number);", nativeQuery = true)
    List<Colonel> getArmyColonels(@Param("army_number") Integer armyNumber);
}
