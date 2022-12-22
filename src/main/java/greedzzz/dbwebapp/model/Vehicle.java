package greedzzz.dbwebapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "vehicles")
@NoArgsConstructor
@Getter
@Setter
public class Vehicle {
    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "series", nullable = false)
    private String series;
    @Column(name = "model", nullable = false)
    private String model;
    @Column(name = "regiment_id", nullable = false)
    private int regimentId;
    @Column(name = "commander_number", nullable = false)
    private int commanderNumber;
}
