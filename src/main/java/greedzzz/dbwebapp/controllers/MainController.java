package greedzzz.dbwebapp.controllers;

import greedzzz.dbwebapp.model.*;
import greedzzz.dbwebapp.services.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class MainController {
    private final MainService mainService;

    @GetMapping("/")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index.html");
        return modelAndView;
    }

    @Autowired
    public MainController(MainService mainService) {
        this.mainService = mainService;
    }

    @GetMapping("/clones")
    public List<Clone> clones(@RequestParam(value = "squad_number", required = false) Integer squadNumber,
                              @RequestParam(value = "regiment_number", required = false) Integer regimentNumber,
                              @RequestParam(value = "army_number", required = false) Integer armyNumber) {
        if (null != squadNumber) return mainService.getSquadClones(squadNumber);
        else if (null != regimentNumber) return mainService.getRegimentClones(regimentNumber);
        else return mainService.getArmyClones(armyNumber);
    }

    @GetMapping("/commanders")
    public List<Commander> commanders(@RequestParam(value = "regiment_number", required = false) Integer regimentNumber,
                                      @RequestParam(value = "army_number", required = false) Integer armyNumber) {
        if (null != regimentNumber) return mainService.getRegimentCommanders(regimentNumber);
        else return mainService.getArmyCommanders(armyNumber);
    }

    @GetMapping("/colonels")
    public List<Colonel> colonels(@RequestParam(value = "army_number", required = false) Integer armyNumber) {
        return mainService.getArmyColonels(armyNumber);
    }

    @GetMapping("/vehicles")
    public List<Vehicle> vehicles(@RequestParam(value = "regiment_number", required = false) Integer regimentNumber,
                                  @RequestParam(value = "army_number", required = false) Integer armyNumber) {
        if (null != regimentNumber) return mainService.getRegimentVehicles(regimentNumber);
        else return mainService.getArmyVehicles(armyNumber);
    }

    @GetMapping("/jedi")
    public List<Jedi> jedi() {
        return mainService.getJedi();
    }

    @GetMapping("/planets")
    public List<Planet> planets(@RequestParam(value = "system", required = false) String system) {
        return mainService.getPlanets(system);
    }

    @GetMapping("/battles")
    public List<Battle> battles(@RequestParam(value = "system", required = false) String system) {
        return mainService.getBattles(system);
    }

    @GetMapping("/regiments")
    public List<Regiment> regiments(@RequestParam(value = "battle", required = false) Integer battle) {
        return mainService.getBattleRegiments(battle);
    }

}
