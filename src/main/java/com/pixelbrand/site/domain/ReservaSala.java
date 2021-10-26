package com.pixelbrand.site.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class ReservaSala {

    private Long id;

    private Empleado empleado;

    private Date fechaInicio;

    private Sala sala;

    private Date fechaFin;



}
