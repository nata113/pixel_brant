package com.pixelbrand.site.controlador;

import com.pixelbrand.site.domain.Empleado;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/empleado")
public class EmpleadoControlador {

    @PostMapping("/")
    public ResponseEntity<?> crearEmpleado(@RequestBody Empleado empleado) {

        return null;
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> modificarEmpleado(@PathVariable Long idEmpleado) {

        return null;
    }
}
