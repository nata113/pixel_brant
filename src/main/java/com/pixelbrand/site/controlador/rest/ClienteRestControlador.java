package com.pixelbrand.site.controlador.rest;

import com.pixelbrand.site.domain.Cliente;
import com.pixelbrand.site.dto.ClienteServicioDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/cliente")
public class ClienteRestControlador {

    @PostMapping("/")
    public ResponseEntity<?> crearCliente(@RequestBody Cliente cliente) {

        return null;
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> modificarCliente(@PathVariable Long idCliente) {

        return null;
    }

    @PostMapping("/asignar-servicio")
    public ResponseEntity<?> asignarServicio(@RequestBody ClienteServicioDTO clienteServicio) {

        return null;
    }
}
