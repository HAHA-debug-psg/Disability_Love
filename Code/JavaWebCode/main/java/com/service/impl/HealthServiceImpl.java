package com.service.impl;

import com.dao.HealthMapper;
import com.entities.Health;
import com.service.HealthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("HealthService")
public class HealthServiceImpl implements HealthService {
    @Autowired
    HealthMapper healthMapper;

    @Override
    public List<Health> selectAll() {
//        System.out.println("Im service");
        return healthMapper.selectAll();
    }
}
