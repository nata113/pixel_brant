package com.pixelbrand.site.controlador;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cliente")
public class ClienteControlador {

    @GetMapping("/")
    public String index() {
        return "cliente";
    }
}

