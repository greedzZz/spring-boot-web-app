package greedzzz.dbwebapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;

@Entity
@Table(name = "battles")
@NoArgsConstructor
@Getter
@Setter
public class Battle {
    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "name", nullable = false)
    private String name;
    @Column(name = "date", nullable = false)
    private Date date;
    @Column(name = "victory", nullable = false)
    private boolean victory;
    @Column(name = "space", nullable = false)
    private boolean space;
    @Column(name = "soldier_losses", nullable = false)
    private int soldierLosses;
    @Column(name = "vehicle_losses", nullable = false)
    private int vehicleLosses;
    @Column(name = "planet_name", nullable = false)
    private String planetName;
}
