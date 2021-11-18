package com.pixelbrand.site.enums;

public enum TipoContrato {

    INDEFINIDO("Indefinido"),
    TERMINO_FIJO("Termino Fijo");

    private String code;


    TipoContrato(String indefinido) {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
