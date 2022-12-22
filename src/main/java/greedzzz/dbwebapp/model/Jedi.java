package greedzzz.dbwebapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "jedi")
@NoArgsConstructor
@Getter
@Setter
public class Jedi {
    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "name", nullable = false)
    private String name;
    @Column(name = "race", nullable = false)
    private String race;
    @Column(name = "male", nullable = false)
    private boolean male;
    @Column(name = "army_id")
    private int armyId;

}
