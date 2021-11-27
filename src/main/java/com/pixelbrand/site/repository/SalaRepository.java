package com.pixelbrand.site.repository;

import com.pixelbrand.site.domain.Sala;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SalaRepository extends CrudRepository<Sala, Long> {
}
