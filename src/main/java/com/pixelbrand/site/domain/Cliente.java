package com.pixelbrand.site.domain;

import com.pixelbrand.site.enums.Estado;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Cliente {

    private Long id;

    private Long nit;

    private String nombre;

    private String razonSocial;

    private String representante;

    private Estado estado;

    private Long telefono;

    private Servicio servicio;

    private Cliente cliente;



}
