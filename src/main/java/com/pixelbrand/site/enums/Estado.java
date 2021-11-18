package com.pixelbrand.site.enums;

public enum Estado {

    ACTIVO("Activo"),
    INACTIVO("Inactivo");

    private String code;

    Estado(String activo) {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
