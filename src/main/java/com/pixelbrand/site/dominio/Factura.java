package com.pixelbrand.site.dominio;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Data
@Entity
@NoArgsConstructor
public class Factura {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;

    @ManyToOne
    private Servicio servicio;

    @OneToMany
    private Set<Cliente> cliente;

    @Column(length = 15, columnDefinition = "VARCHAR(15)")
    private Long valor;


}
