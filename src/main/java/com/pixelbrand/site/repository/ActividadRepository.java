package com.pixelbrand.site.repository;

import com.pixelbrand.site.domain.Actividad;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActividadRepository extends CrudRepository<Actividad, Long> {
}
