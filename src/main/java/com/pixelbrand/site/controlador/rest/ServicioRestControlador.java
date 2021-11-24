package com.pixelbrand.site.controlador.rest;

import com.pixelbrand.site.dominio.Servicio;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/servicio")
public class ServicioRestControlador {

    @PostMapping("/")
    public ResponseEntity<?> crearServicio(@RequestBody Servicio servicio) {

        return null;
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> modificarServicio(@PathVariable Long idServicio) {

        return null;
    }
}

