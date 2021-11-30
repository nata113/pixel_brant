package com.pixelbrand.site.controller.rest;

import com.pixelbrand.site.domain.Servicio;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/service")
public class ServicioRestController {

    @PostMapping("/")
    public ResponseEntity<?> crearServicio(@RequestBody Servicio servicio) {

        return null;
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> modificarServicio(@PathVariable Long idServicio) {

        return null;
    }
}

