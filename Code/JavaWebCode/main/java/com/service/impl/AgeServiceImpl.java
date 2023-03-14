package com.service.impl;

import com.dao.AgeMapper;
import com.entities.Age;
import com.service.AgeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("AgeService")
public class AgeServiceImpl implements AgeService {
    @Autowired
    AgeMapper ageMapper;

    @Override
    public List<Age> selectAll() {
//        System.out.println("Im service");
        return ageMapper.selectAll();
    }
}
