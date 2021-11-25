package com.pixelbrand.site.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/actividad")
public class ActividadControlador {

    @GetMapping("/")
    public String index() {
        return "actividad";
    }
}