package greedzzz.dbwebapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "regiments")
@NoArgsConstructor
@Getter
@Setter
public class Regiment {
    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "name", nullable = false)
    private String name;
    @Column(name = "army_id", nullable = false)
    private int armyId;
    @Column(name = "planet_name")
    private String planetName;
}
