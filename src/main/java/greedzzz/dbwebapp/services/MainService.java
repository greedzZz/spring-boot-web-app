package greedzzz.dbwebapp.services;

import greedzzz.dbwebapp.model.*;
import greedzzz.dbwebapp.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MainService {
    private final CloneRepository cloneRepository;
    private final CommanderRepository commanderRepository;
    private final ColonelRepository colonelRepository;
    private final VehicleRepository vehicleRepository;
    private final JediRepository jediRepository;
    private final PlanetRepository planetRepository;
    private final BattleRepository battleRepository;
    private final RegimentRepository regimentRepository;

    @Autowired
    public MainService(CloneRepository cloneRepository,
                       CommanderRepository commanderRepository,
                       ColonelRepository colonelRepository,
                       VehicleRepository vehicleRepository,
                       JediRepository jediRepository,
                       PlanetRepository planetRepository,
                       BattleRepository battleRepository,
                       RegimentRepository regimentRepository) {
        this.cloneRepository = cloneRepository;
        this.commanderRepository = commanderRepository;
        this.colonelRepository = colonelRepository;
        this.vehicleRepository = vehicleRepository;
        this.jediRepository = jediRepository;
        this.planetRepository = planetRepository;
        this.battleRepository = battleRepository;
        this.regimentRepository = regimentRepository;
    }

    public List<Clone> getSquadClones(Integer squadNumber) {
        return cloneRepository.getSquadClones(squadNumber);
    }

    public List<Clone> getRegimentClones(Integer regimentNumber) {
        return cloneRepository.getRegimentClones(regimentNumber);
    }

    public List<Clone> getArmyClones(Integer armyNumber) {
        return cloneRepository.getArmyClones(armyNumber);
    }

    public List<Commander> getRegimentCommanders(Integer regimentNumber) {
        return commanderRepository.getRegimentCommanders(regimentNumber);
    }

    public List<Commander> getArmyCommanders(Integer armyNumber) {
        return commanderRepository.getArmyCommanders(armyNumber);
    }

    public List<Colonel> getArmyColonels(Integer armyNumber) {
        return colonelRepository.getArmyColonels(armyNumber);
    }

    public List<Vehicle> getRegimentVehicles(Integer regimentNumber) {
        return vehicleRepository.getRegimentVehicles(regimentNumber);
    }

    public List<Vehicle> getArmyVehicles(Integer armyNumber) {
        return vehicleRepository.getArmyVehicles(armyNumber);
    }

    public List<Jedi> getJedi() {
        return jediRepository.findAll();
    }

    public List<Planet> getPlanets(String system) {
        return planetRepository.getPlanets(system);
    }

    public List<Battle> getBattles(String system) {
        return battleRepository.getBattles(system);
    }

    public List<Regiment> getBattleRegiments(Integer battle) {
        return regimentRepository.getBattleRegiments(battle);
    }

}
