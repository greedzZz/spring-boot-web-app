package greedzzz.dbwebapp.repositories;

import greedzzz.dbwebapp.model.Regiment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface RegimentRepository extends JpaRepository<Regiment, Integer> {
    @Query(value = "SELECT * FROM get_battle_regiments(:battle);", nativeQuery = true)
    List<Regiment> getBattleRegiments(@Param("battle") Integer battle);
}
