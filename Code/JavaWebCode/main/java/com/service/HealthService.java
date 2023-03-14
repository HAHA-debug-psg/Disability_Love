package com.service;

import com.entities.Health;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface HealthService {
    List<Health> selectAll();
}
