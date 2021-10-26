package com.pixelbrand.site.domain;
import com.pixelbrand.site.enums.Estado;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Actividad {

    private Long id;

    private String nombre;

    private String descripcion;

    private Estado estado;

    private Servicio servicio;


}
