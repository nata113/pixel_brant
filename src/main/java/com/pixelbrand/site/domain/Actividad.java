package com.pixelbrand.site.domain;
import com.pixelbrand.site.enums.Estado;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@NoArgsConstructor
public class Actividad {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;


    @Column(length = 50, updatable = false, columnDefinition = "VARCHAR(50)")
    private String nombre;

    @Column(length = 50, updatable = false, columnDefinition = "VARCHAR(50)")
    private String descripcion;

    @Column(length = 11, updatable = false, columnDefinition = "VARCHAR(11)")
    private Estado estado;

    private Servicio servicio;


}
