package com.pixelbrand.site.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@NoArgsConstructor
public class Sala {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(length = 15, nullable = false, updatable = false, columnDefinition = "VARCHAR(15) NOT NULL")
    private Long id;

    @Column(length = 40, updatable = false, columnDefinition = "VARCHAR(40)")
    private String nombreSala;

    @Column(length = 30, updatable = false, columnDefinition = "VARCHAR(30)")
    private String ubicacion;


}
