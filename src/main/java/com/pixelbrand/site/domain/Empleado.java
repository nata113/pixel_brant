package com.pixelbrand.site.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Empleado {

    private Long id;

    private Long tipoIden;

    private String nombre;

    private String apellido1;

    private String apellido2;

    private String direccion;

    private Long telefono;

    private Long tipoEmple;

    private Long estado;

    private Long vigContrato;

    private Long idCargo;

    private Long tipoContrato;

    private Long salario;


}
