package com.pixelbrand.site.repositorio;

import com.pixelbrand.site.dominio.Actividad;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActividadRepositorio extends CrudRepository<Actividad, Long> {
}
