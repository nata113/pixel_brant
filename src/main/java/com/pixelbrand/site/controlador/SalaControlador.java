package com.pixelbrand.site.controlador;

import com.pixelbrand.site.domain.Sala;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/sala")
public class SalaControlador {

    @PostMapping("/")
    public ResponseEntity<?> crearSala(@RequestBody Sala sala) {

        return null;
    }

    @PostMapping("/reserva")
    public ResponseEntity<?> reservarSala(@RequestBody Sala sala) {

        System.out.println("prueba reserva");
        return null;
    }

    @GetMapping("/get-reserva")
    public ResponseEntity<?> reservarSala() {

        System.out.println("prueba reserva");
        return null;
    }
}
