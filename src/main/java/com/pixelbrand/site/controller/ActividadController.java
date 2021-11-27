package com.pixelbrand.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/actividad")
public class ActividadController {

    @GetMapping("/")
    public String index() {
        return "actividad";
    }
}
