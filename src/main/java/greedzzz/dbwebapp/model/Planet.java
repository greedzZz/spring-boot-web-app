package greedzzz.dbwebapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "planets")
@NoArgsConstructor
@Getter
@Setter
public class Planet {
    @Id
    @Column(name = "name")
    private String name;
    @Column(name = "habitable", nullable = false)
    private boolean habitable;
    @Column(name = "satellites", nullable = false)
    private int satellites;
    @Column(name = "diameter", nullable = false)
    private int diameter;
    @Column(name = "republic_controlled", nullable = false)
    private boolean republicControlled;
    @Column(name = "system_name", nullable = false)
    private String systemName;
}
