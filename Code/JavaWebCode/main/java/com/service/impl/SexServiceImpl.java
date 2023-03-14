package com.service.impl;

import com.dao.SexMapper;
import com.entities.Sex;
import com.service.SexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("SexService")
public class SexServiceImpl implements SexService {
    @Autowired
    SexMapper sexMapper;

    @Override
    public List<Sex> selectAll() {
//        System.out.println("Im service");
        return sexMapper.selectAll();
    }
}
