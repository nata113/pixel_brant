package com.pixelbrand.site.controlador;

import com.pixelbrand.site.domain.Sala;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sala")
public class SalaControlador {

    @PostMapping("/")
    public ResponseEntity<?> crearSala(@RequestBody Sala sala) {

        return null;
    }

    @PostMapping("/")
    public ResponseEntity<?> reservarSala(@RequestBody Sala sala) {

        return null;
    }
}
