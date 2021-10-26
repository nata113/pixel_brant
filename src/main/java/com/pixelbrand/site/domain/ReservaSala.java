package com.pixelbrand.site.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
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

    private Sala sala;

    private Date fechaFin;



}
