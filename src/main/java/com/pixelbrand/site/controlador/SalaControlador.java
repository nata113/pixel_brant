package com.pixelbrand.site.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sala")
public class SalaControlador {

    @GetMapping("/")
    public String index() {
        return "sala";
    }
}
