package com.pixelbrand.site.servicio;

import com.pixelbrand.site.dominio.Actividad;
import com.pixelbrand.site.dto.ActividadDTO;

import java.util.Optional;

public interface ActividadServicio {

    void crearActividad(ActividadDTO actividad);

    Optional<Actividad> obtenerActividad();
}
