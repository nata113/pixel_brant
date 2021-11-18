package com.pixelbrand.site.enums;

public enum Permiso {

    EDITAR("test");

    private String code;

    Permiso(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
