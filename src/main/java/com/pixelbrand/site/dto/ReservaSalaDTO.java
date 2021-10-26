package com.pixelbrand.site.dto;

import lombok.Data;

import java.util.Date;

@Data
public class ReservaSalaDTO {

    private Long idEmpleado;
    private Long idSala;
    private Date fechaInicio;
    private Date fechaFin;
}
