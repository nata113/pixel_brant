package com.pixelbrand.site.domain;

import com.pixelbrand.site.enums.Estado;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Data
@NoArgsConstructor
public class Cliente {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;

    @Column(length = 11, updatable = false, columnDefinition = "VARCHAR(11)")
    private Long nit;

    @Column(length = 50, updatable = false, columnDefinition = "VARCHAR(50)")
    private String nombre;

    @Column(length = 50, updatable = false, columnDefinition = "VARCHAR(50)")
    private String razonSocial;

    @Column(length = 50, updatable = false, columnDefinition = "VARCHAR(50)")
    private String representante;

    @Column(length = 11, updatable = false, columnDefinition = "VARCHAR(11)")
    private Estado estado;

    @Column(length = 11, updatable = false, columnDefinition = "VARCHAR(11)")
    private Long telefono;

    @ManyToMany
    private Set<Servicio> serviciosAsignados;


    private Cliente cliente;



}
