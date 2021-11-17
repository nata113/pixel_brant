package com.pixelbrand.site.enums;

public enum TipoIdentificacion {

    CEDULA_CIUDADANIA("Cédula de Ciudadanía"),
    CEDULA_EXTRANJERIA("Cédula de Extranjería"),
    PASAPORTE_NACIONAL("Pasaporte Nacional"),
    TARJETA_RESIDENCIA("Tarjeta de Residencia");

    private String code;

    TipoIdentificacion(String s) {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
