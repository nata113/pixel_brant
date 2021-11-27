package com.pixelbrand.site.service.impl;

import com.pixelbrand.site.domain.Sala;
import com.pixelbrand.site.dto.SalaDTO;
import com.pixelbrand.site.service.SalaService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SalaServiceImpl implements SalaService {

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public void crearSala(SalaDTO salaDTO) {
        Sala sala = convertToEntity(salaDTO);

        System.out.println("test");

    }

    private Sala convertToEntity(SalaDTO salaDTO) {
        Sala sala = modelMapper.map(salaDTO, Sala.class);

        return sala;
    }
}
