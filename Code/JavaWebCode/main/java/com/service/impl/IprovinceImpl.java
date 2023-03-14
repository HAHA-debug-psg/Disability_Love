package com.service.impl;

import com.dao.provinceMapper;
import com.entities.Province;
import com.service.IprovinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("provinceService")
public class IprovinceImpl implements IprovinceService {
    @Autowired
    provinceMapper pMapper;
    @Override
    public List<Province> selectAll(){
        System.out.println("Im service");
        return pMapper.selectAll();
    }
}
