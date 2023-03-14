package com.service.impl;

import com.dao.EducationMapper;
import com.entities.Education;
import com.service.EducationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("EducationService")
public class EducationServiceImpl implements EducationService {
    @Autowired
    EducationMapper educationMapper;

    @Override
    public List<Education> selectAll() {
//        System.out.println("Im service");
        return educationMapper.selectAll();
    }
}
