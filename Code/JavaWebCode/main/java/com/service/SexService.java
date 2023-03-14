package com.service;

import com.entities.Sex;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SexService {
    List<Sex> selectAll();
}
