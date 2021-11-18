package com.pixelbrand.site.servicio.impl;

import com.pixelbrand.site.dominio.Actividad;
import com.pixelbrand.site.dto.ActividadDTO;
import com.pixelbrand.site.repositorio.ActividadRepositorio;
import com.pixelbrand.site.servicio.ActividadServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ActividadServicioImpl implements ActividadServicio {

    @Autowired
    private ActividadRepositorio actividadRepositorio;

    @Override
    public void crearActividad(ActividadDTO actividad) {

    }

    @Override
    public Optional<Actividad> obtenerActividad() {
        return Optional.empty();
    }
}
