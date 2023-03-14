package com.service;

import com.entities.Salary;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SalaryService {
    List<Salary> selectAll();
}
