package com.pixelbrand.site.dto;

import lombok.Data;

import java.util.Date;

@Data
public class ClienteServicioDTO {

    private Long idCliente;
    private Long idServicio;
    private Long idEstado;
    private Date horaValor;
}
