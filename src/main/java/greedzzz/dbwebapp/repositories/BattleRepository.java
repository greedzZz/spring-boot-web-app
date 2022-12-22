package greedzzz.dbwebapp.repositories;

import greedzzz.dbwebapp.model.Battle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BattleRepository extends JpaRepository<Battle, Integer> {
    @Query(value = "SELECT * FROM get_battles(:system);", nativeQuery = true)
    List<Battle> getBattles(@Param("system") String system);
}
