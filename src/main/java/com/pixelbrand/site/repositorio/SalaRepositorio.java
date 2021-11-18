package com.pixelbrand.site.repositorio;

import com.pixelbrand.site.dominio.Sala;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SalaRepositorio extends CrudRepository<Sala, Long> {
}
