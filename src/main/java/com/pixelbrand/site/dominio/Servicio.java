package com.pixelbrand.site.dominio;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Data
@Entity
@NoArgsConstructor
public class Servicio {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;

    @Column(length = 50, updatable = false, columnDefinition = "VARCHAR(50)")
    private String nombre;

    @Column(length = 100, updatable = false, columnDefinition = "VARCHAR(100)")
    private String descripcion;

    @ManyToMany
    private Set<Cliente> clientes;

    private Long valorHora;

    @ManyToMany
    private Set<Actividad> actividad;

    @OneToMany
    private Set<Factura> factura;


}
