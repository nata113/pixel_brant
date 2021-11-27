package com.pixelbrand.site.service.impl;

import com.pixelbrand.site.domain.Actividad;
import com.pixelbrand.site.dto.ActividadDTO;
import com.pixelbrand.site.repository.ActividadRepository;
import com.pixelbrand.site.service.ActividadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ActividadServiceImpl implements ActividadService {

    @Autowired
    private ActividadRepository actividadRepository;

    @Override
    public void crearActividad(ActividadDTO actividad) {

    }

    @Override
    public Optional<Actividad> obtenerActividad() {
        return Optional.empty();
    }
}
