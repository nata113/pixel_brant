package com.pixelbrand.site.controller.rest;

import com.pixelbrand.site.dto.SalaDTO;
import com.pixelbrand.site.service.SalaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/sala")
public class SalaRestController {

    @Autowired
    private SalaService salaService;

    @PostMapping("/")
    public ResponseEntity<?> crearSala(@RequestBody SalaDTO salaDTO) {

        salaService.crearSala(salaDTO);
        return null;
    }

    @PostMapping("/reserva")
    public ResponseEntity<?> reservarSala(@RequestBody SalaDTO salaDTO) {

        System.out.println("prueba reserva");
        return null;
    }

    @GetMapping("/get-reserva")
    public ResponseEntity<?> reservarSala() {

        System.out.println("prueba reserva");
        return null;
    }
}
