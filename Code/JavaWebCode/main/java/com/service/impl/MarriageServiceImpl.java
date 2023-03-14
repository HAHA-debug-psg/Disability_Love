package com.service.impl;

import com.dao.MarriageMapper;
import com.entities.Marriage;
import com.service.MarriageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("MarriageService")
public class MarriageServiceImpl implements MarriageService {
    @Autowired
    MarriageMapper marriageMapper;

    @Override
    public List<Marriage> selectAll() {
//        System.out.println("Im service");
        return marriageMapper.selectAll();
    }
}
