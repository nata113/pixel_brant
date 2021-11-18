package com.pixelbrand.site.dominio;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@NoArgsConstructor
public class ReservaSala {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;

    @ManyToOne
    @JoinColumn
    private Empleado empleado;

    private Date fechaInicio;

    @ManyToOne
    private Sala sala;

    private Date fechaFin;



}
