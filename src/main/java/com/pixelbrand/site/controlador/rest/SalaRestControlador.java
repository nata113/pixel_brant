package com.pixelbrand.site.controlador.rest;

import com.pixelbrand.site.dominio.Sala;
import com.pixelbrand.site.dto.SalaDTO;
import com.pixelbrand.site.servicio.SalaServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/sala")
public class SalaRestControlador {

    @Autowired
    private SalaServicio salaServicio;

    @PostMapping("/")
    public ResponseEntity<?> crearSala(@RequestBody SalaDTO salaDTO) {

        salaServicio.crearSala(salaDTO);
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
