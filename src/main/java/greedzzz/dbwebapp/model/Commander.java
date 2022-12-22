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
@Table(name = "commanders")
@NoArgsConstructor
@Getter
@Setter
public class Commander {
    @Id
    @Column(name = "number")
    private int number;
    @Column(name = "name", nullable = false)
    private String name;
    @Column(name = "birthday", nullable = false)
    private Date birthday;
    @Column(name = "batch_number", nullable = false)
    private int batchNumber;
    @Column(name = "squad_id", nullable = false)
    private int squadId;
}
