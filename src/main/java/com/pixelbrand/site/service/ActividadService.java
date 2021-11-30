package com.pixelbrand.site.service;

import com.pixelbrand.site.domain.Actividad;
import com.pixelbrand.site.dto.ActividadDTO;

import java.util.Optional;

public interface ActividadService {

    void crearActividad(ActividadDTO actividad);

    Optional<Actividad> obtenerActividad();
}
