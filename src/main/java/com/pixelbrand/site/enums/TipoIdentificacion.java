package com.pixelbrand.site.enums;

import lombok.Data;

@Data
public enum TipoIdentificacion {

    CEDULA_CIUDADANIA("Cédula de Ciudadanía"),
    CEDULA_EXTRANJERIA("Cédula de Extranjería"),
    PASAPORTE_NACIONAL("Pasaporte Nacional"),
    TARJETA_RESIDENCIA("Tarjeta de Residencia");


    TipoIdentificacion(String s) {
    }
}
