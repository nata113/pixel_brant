package com.pixelbrand.site.enums;

import lombok.Data;

@Data
public enum Estado {

    ACTIVO("Activo"),
    INACTIVO("Inactivo");

    private String code;

    Estado(String activo) {
    }
}
