package com.pixelbrand.site.dto;

import lombok.Data;

@Data
public class ClienteDTO {

    private Long idClien;
    private Long nit;
    private String nombre;
    private String razonSocial;
    private String representante;
    private Long estado;
    private Long telefono;



}
