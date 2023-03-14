package com.service;

import com.entities.Education;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface EducationService {
    List<Education> selectAll();
}
