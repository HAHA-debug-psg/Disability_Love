package com.service;

import com.entities.Age;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AgeService {
    List<Age> selectAll();
}
