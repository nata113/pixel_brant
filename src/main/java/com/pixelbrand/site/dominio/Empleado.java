package com.pixelbrand.site.dominio;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Data
@Entity
@NoArgsConstructor
public class Empleado {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;

    @Column(length = 11, columnDefinition = "VARCHAR(11) NOT NULL")
    private Long numIden;

    @Column(length = 11, columnDefinition = "VARCHAR(50)")
    private Long tipoIden;

    @Column(length = 50, columnDefinition = "VARCHAR(50)")
    private String nombre;

    @Column(length = 50, columnDefinition = "VARCHAR(50)")
    private String apellido1;

    @Column(length = 50, columnDefinition = "VARCHAR(50)")
    private String apellido2;

    @Column(length = 50, columnDefinition = "VARCHAR(50)")
    private String direccion;

    @Column(length = 20, columnDefinition = "VARCHAR(20)")
    private Long telefono;

    @Column(length = 11, columnDefinition = "VARCHAR(11)")
    private Long tipoEmple;

    @Column(length = 11, columnDefinition = "VARCHAR(11)")
    private Long estado;

    @Column(length = 50, columnDefinition = "VARCHAR(50)")
    private Long vigContrato;

    @Column(length = 11, columnDefinition = "VARCHAR(11)")
    private Long idCargo;

    @Column(length = 11, columnDefinition = "VARCHAR(11)")
    private Long tipoContrato;

    @Column(length = 15, columnDefinition = "VARCHAR(11)")
    private Long salario;

    @OneToMany(mappedBy="empleado")
    private Set<ReservaSala> reservasSalas;

}
