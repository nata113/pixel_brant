package com.pixelbrand.site.enums;

import lombok.Data;

@Data
public enum TipoContrato {

    INDEFINIDO("Indefinido"),
    TERMINO_FIJO("Termino Fijo");

    private String code;


    TipoContrato(String indefinido) {
    }
}
