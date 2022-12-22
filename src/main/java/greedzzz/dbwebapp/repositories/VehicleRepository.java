package greedzzz.dbwebapp.repositories;

import greedzzz.dbwebapp.model.Vehicle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface VehicleRepository extends JpaRepository<Vehicle, Integer> {
    @Query(value = "SELECT * FROM get_regiment_vehicles(:regiment_number);", nativeQuery = true)
    List<Vehicle> getRegimentVehicles(@Param("regiment_number") Integer regimentNumber);

    @Query(value = "SELECT * FROM get_army_vehicles(:army_number);", nativeQuery = true)
    List<Vehicle> getArmyVehicles(@Param("army_number") Integer armyNumber);
}
