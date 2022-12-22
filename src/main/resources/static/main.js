$(function () {
    $("form").submit(function (event) {
        event.preventDefault();
        if (checkInput()) {
            if ($("input[value='clones']").is(":checked")) {
                clonesRequest();
            } else if ($("input[value='commanders']").is(":checked")) {
                commandersRequest();
            } else if ($("input[value='colonels']").is(":checked")) {
                colonelsRequest();
            } else if ($("input[value='vehicles']").is(":checked")) {
                vehiclesRequest();
            } else if ($("input[value='jedi']").is(":checked")) {
                jediRequest();
            } else if ($("input[value='planets']").is(":checked")) {
                planetsRequest();
            } else if ($("input[value='battles']").is(":checked")) {
                battlesRequest();
            } else if ($("input[value='regiments']").is(":checked")) {
                regimentsRequest();
            }
        }
    })

    $("form").click(function () {
        if ($("input[value='clones']").is(":checked")) {
            setClonesInput();
        } else if ($("input[value='commanders']").is(":checked") || $("input[value='vehicles']").is(":checked")) {
            setCommandersVehiclesInput();
        } else if ($("input[value='colonels']").is(":checked")) {
            setColonelsInput();
        } else if ($("input[value='jedi']").is(":checked")) {
            setJediInput();
        } else if ($("input[value='planets']").is(":checked") || $("input[value='battles']").is(":checked")) {
            setPlanetsBattlesInput();
        } else if ($("input[value='regiments']").is(":checked")) {
            setRegimentsInput();
        } else {
            setFullInput();
        }
    });

    function setClonesInput() {
        $("input[name='squad-number']").prop('disabled', false);
        $("input[name='regiment-number']").prop('disabled', false);
        $("input[name='army-number']").prop('disabled', false);
        $("input[name='system']").prop('disabled', true);
        $("input[name='system']").val('');
        $("input[name='battle']").prop('disabled', true);
        $("input[name='battle']").val('');
    }

    function setCommandersVehiclesInput() {
        $("input[name='regiment-number']").prop('disabled', false);
        $("input[name='army-number']").prop('disabled', false);
        $("input[name='squad-number']").prop('disabled', true);
        $("input[name='squad-number']").val('');
        $("input[name='system']").prop('disabled', true);
        $("input[name='system']").val('');
        $("input[name='battle']").prop('disabled', true);
        $("input[name='battle']").val('');
    }

    function setColonelsInput() {
        $("input[name='army-number']").prop('disabled', false);
        $("input[name='regiment-number']").prop('disabled', true);
        $("input[name='regiment-number']").val('');
        $("input[name='squad-number']").prop('disabled', true);
        $("input[name='squad-number']").val('');
        $("input[name='system']").prop('disabled', true);
        $("input[name='system']").val('');
        $("input[name='battle']").prop('disabled', true);
        $("input[name='battle']").val('');
    }

    function setJediInput() {
        $("input[name='regiment-number']").prop('disabled', true);
        $("input[name='regiment-number']").val('');
        $("input[name='squad-number']").prop('disabled', true);
        $("input[name='squad-number']").val('');
        $("input[name='army-number']").prop('disabled', true);
        $("input[name='army-number']").val('');
        $("input[name='system']").prop('disabled', true);
        $("input[name='system']").val('');
        $("input[name='battle']").prop('disabled', true);
        $("input[name='battle']").val('');
    }

    function setPlanetsBattlesInput() {
        $("input[name='regiment-number']").prop('disabled', true);
        $("input[name='regiment-number']").val('');
        $("input[name='squad-number']").prop('disabled', true);
        $("input[name='squad-number']").val('');
        $("input[name='army-number']").prop('disabled', true);
        $("input[name='army-number']").val('');
        $("input[name='system']").prop('disabled', false);
        $("input[name='battle']").prop('disabled', true);
        $("input[name='battle']").val('');
    }

    function setRegimentsInput() {
        $("input[name='regiment-number']").prop('disabled', true);
        $("input[name='regiment-number']").val('');
        $("input[name='squad-number']").prop('disabled', true);
        $("input[name='squad-number']").val('');
        $("input[name='army-number']").prop('disabled', true);
        $("input[name='army-number']").val('');
        $("input[name='system']").prop('disabled', true);
        $("input[name='system']").val('');
        $("input[name='battle']").prop('disabled', false);
    }

    function setFullInput() {
        $("input[name='squad-number']").prop('disabled', false);
        $("input[name='regiment-number']").prop('disabled', false);
        $("input[name='army-number']").prop('disabled', false);
        $("input[name='system']").prop('disabled', false);
        $("input[name='battle']").prop('disabled', false);
    }

    function checkInput() {
        return ($("input[value='clones']").is(":checked") ||
            $("input[value='commanders']").is(":checked") ||
            $("input[value='vehicles']").is(":checked") ||
            $("input[value='colonels']").is(":checked") ||
            $("input[value='jedi']").is(":checked") ||
            $("input[value='planets']").is(":checked") ||
            $("input[value='battles']").is(":checked") ||
            $("input[value='regiments']").is(":checked"));
    }


    function getSquadNumber() {
        return $("input[name='squad-number']").val();
    }

    function getRegimentNumber() {
        return $("input[name='regiment-number']").val();
    }

    function getArmyNumber() {
        return $("input[name='army-number']").val();
    }

    function getSystem() {
        return $("input[name='system']").val();
    }

    function getBattle() {
        return $("input[name='battle']").val();
    }

    function createSoldiersTableHead() {
        $("table").empty();
        let thead = "<thead>" + "<tr>" +
            "<th>номер</th>" + "<th>имя</th>" + "<th>дата рождения</th>" + "<th>номер партии</th>" + "<th>номер отряда</th>" +
            "</tr>" + "</thead>";
        $("table").append(thead);
    }

    function createColonesTableHead() {
        $("table").empty();
        let thead = "<thead>" + "<tr>" +
            "<th>номер</th>" + "<th>имя</th>" + "<th>дата рождения</th>" + "<th>номер партии</th>" + "<th>номер полка</th>" +
            "</tr>" + "</thead>";
        $("table").append(thead);
    }

    function createVehiclesTableHead() {
        $("table").empty();
        let thead = "<thead>" + "<tr>" +
            "<th>id</th>" + "<th>серия</th>" + "<th>модель</th>" + "<th>номер полка</th>" + "<th>номер командира</th>" +
            "</tr>" + "</thead>";
        $("table").append(thead);
    }

    function createJediTableHead() {
        $("table").empty();
        let thead = "<thead>" + "<tr>" +
            "<th>id</th>" + "<th>имя</th>" + "<th>раса</th>" + "<th>мужчина</th>" + "<th>номер армии</th>" +
            "</tr>" + "</thead>";
        $("table").append(thead);
    }

    function createPlanetsTableHead() {
        $("table").empty();
        let thead = "<thead>" + "<tr>" +
            "<th>название</th>" + "<th>обитаемая</th>" + "<th>спутники</th>" + "<th>диаметр</th>" +
            "<th>контроль республики</th>" + "<th>название системы</th>" +
            "</tr>" + "</thead>";
        $("table").append(thead);
    }

    function createBattlesTableHead() {
        $("table").empty();
        let thead = "<thead>" + "<tr>" +
            "<th>id</th>" + "<th>название</th>" + "<th>дата</th>" + "<th>победа</th>" + "<th>космическая</th>" +
            "<th>потери солдат</th>" + "<th>потери техники</th>" + "<th>название планеты</th>" +
            "</tr>" + "</thead>";
        $("table").append(thead);
    }

    function createRegimentsTableHead() {
        $("table").empty();
        let thead = "<thead>" + "<tr>" +
            "<th>id</th>" + "<th>имя</th>" + "<th>номер армии</th>" + "<th>название планеты</th>" +
            "</tr>" + "</thead>";
        $("table").append(thead);
    }

    function clonesRequest() {
        $.ajax({
            url: "/clones",
            type: "GET",
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            data: {
                squad_number: getSquadNumber(),
                regiment_number: getRegimentNumber(),
                army_number: getArmyNumber()
            },
            success: function (data) {
                createSoldiersTableHead();
                $(data).each(function (i, item) {
                    let newRow = "<tr>";
                    newRow += "<td>" + item.number + "</td>";
                    newRow += "<td>" + item.name + "</td>";
                    newRow += "<td>" + item.birthday + "</td>";
                    newRow += "<td>" + item.batchNumber + "</td>";
                    newRow += "<td>" + item.squadId + "</td>";
                    newRow += "</tr>";
                    $("table").append(newRow);
                });
            }
        });
    }

    function commandersRequest() {
        $.ajax({
            url: "/commanders",
            type: "GET",
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            data: {
                regiment_number: getRegimentNumber(),
                army_number: getArmyNumber()
            },
            success: function (data) {
                createSoldiersTableHead();
                $(data).each(function (i, item) {
                    let newRow = "<tr>";
                    newRow += "<td>" + item.number + "</td>";
                    newRow += "<td>" + item.name + "</td>";
                    newRow += "<td>" + item.birthday + "</td>";
                    newRow += "<td>" + item.batchNumber + "</td>";
                    newRow += "<td>" + item.squadId + "</td>";
                    newRow += "</tr>";
                    $("table").append(newRow);
                });
            }
        });
    }

    function colonelsRequest() {
        $.ajax({
            url: "/colonels",
            type: "GET",
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            data: {
                army_number: getArmyNumber()
            },
            success: function (data) {
                createColonesTableHead();
                $(data).each(function (i, item) {
                    let newRow = "<tr>";
                    newRow += "<td>" + item.number + "</td>";
                    newRow += "<td>" + item.name + "</td>";
                    newRow += "<td>" + item.birthday + "</td>";
                    newRow += "<td>" + item.batchNumber + "</td>";
                    newRow += "<td>" + item.regimentId + "</td>";
                    newRow += "</tr>";
                    $("table").append(newRow);
                });
            }
        });
    }

    function vehiclesRequest() {
        $.ajax({
            url: "/vehicles",
            type: "GET",
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            data: {
                regiment_number: getRegimentNumber(),
                army_number: getArmyNumber()
            },
            success: function (data) {
                createVehiclesTableHead();
                $(data).each(function (i, item) {
                    let newRow = "<tr>";
                    newRow += "<td>" + item.id + "</td>";
                    newRow += "<td>" + item.series + "</td>";
                    newRow += "<td>" + item.model + "</td>";
                    newRow += "<td>" + item.regimentId + "</td>";
                    newRow += "<td>" + item.commanderNumber + "</td>";
                    newRow += "</tr>";
                    $("table").append(newRow);
                });
            }
        });
    }

    function jediRequest() {
        $.ajax({
            url: "/jedi",
            type: "GET",
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            success: function (data) {
                createJediTableHead();
                $(data).each(function (i, item) {
                    let newRow = "<tr>";
                    newRow += "<td>" + item.id + "</td>";
                    newRow += "<td>" + item.name + "</td>";
                    newRow += "<td>" + item.race + "</td>";
                    newRow += "<td>" + item.male + "</td>";
                    newRow += "<td>" + item.armyId + "</td>";
                    newRow += "</tr>";
                    $("table").append(newRow);
                });
            }
        });
    }

    function planetsRequest() {
        $.ajax({
            url: "/planets",
            type: "GET",
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            data: {
                system: getSystem()
            },
            success: function (data) {
                createPlanetsTableHead()
                $(data).each(function (i, item) {
                    let newRow = "<tr>";
                    newRow += "<td>" + item.name + "</td>";
                    newRow += "<td>" + item.habitable + "</td>";
                    newRow += "<td>" + item.satellites + "</td>";
                    newRow += "<td>" + item.diameter + "</td>";
                    newRow += "<td>" + item.republicControlled + "</td>";
                    newRow += "<td>" + item.systemName + "</td>";
                    newRow += "</tr>";
                    $("table").append(newRow);
                });
            }
        });
    }

    function battlesRequest() {
        $.ajax({
            url: "/battles",
            type: "GET",
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            data: {
                system: getSystem()
            },
            success: function (data) {
                createBattlesTableHead();
                $(data).each(function (i, item) {
                    let newRow = "<tr>";
                    newRow += "<td>" + item.id + "</td>";
                    newRow += "<td>" + item.name + "</td>";
                    newRow += "<td>" + item.date + "</td>";
                    newRow += "<td>" + item.victory + "</td>";
                    newRow += "<td>" + item.space + "</td>";
                    newRow += "<td>" + item.soldierLosses + "</td>";
                    newRow += "<td>" + item.vehicleLosses + "</td>";
                    newRow += "<td>" + item.planetName + "</td>";
                    newRow += "</tr>";
                    $("table").append(newRow);
                });
            }
        });
    }

    function regimentsRequest() {
        $.ajax({
            url: "/regiments",
            type: "GET",
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            data: {
                battle: getBattle()
            },
            success: function (data) {
                createRegimentsTableHead();
                $(data).each(function (i, item) {
                    let newRow = "<tr>";
                    newRow += "<td>" + item.id + "</td>";
                    newRow += "<td>" + item.name + "</td>";
                    newRow += "<td>" + item.armyId + "</td>";
                    newRow += "<td>" + item.planetName + "</td>";
                    newRow += "</tr>";
                    $("table").append(newRow);
                });
            }
        });
    }
});