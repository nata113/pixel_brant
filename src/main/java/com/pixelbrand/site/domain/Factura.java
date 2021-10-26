package com.pixelbrand.site.domain;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Factura {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;

    private Servicio servicio;

    private Cliente cliente;

    @Column(length = 15, columnDefinition = "VARCHAR(15)")
    private Long valor;


}
