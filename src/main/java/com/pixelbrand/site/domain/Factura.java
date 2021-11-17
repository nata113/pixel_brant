package com.pixelbrand.site.domain;

import javax.persistence.*;

public class Factura {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;

    ManyToOne
    private Servicio servicio;


    @OneToMany
    private Cliente cliente;

    @Column(length = 15, columnDefinition = "VARCHAR(15)")
    private Long valor;


}
