package com.pixelbrand.site.controller.rest;

import com.pixelbrand.site.domain.Actividad;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/actividad")
public class ActividadRestController {

    @PostMapping("/")
    public ResponseEntity<?> crearActividad(@RequestBody Actividad actividad) {

        return null;
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> modificarActividad(@PathVariable Long idActividad) {

        return null;
    }
}
