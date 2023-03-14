package com.service.impl;

import com.dao.SalaryMapper;
import com.entities.Salary;
import com.service.SalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("SalaryService")
public class SalaryServiceImpl implements SalaryService {
    @Autowired
    SalaryMapper salaryMapper;

    @Override
    public List<Salary> selectAll() {
//        System.out.println("Im service");
        return salaryMapper.selectAll();
    }
}
