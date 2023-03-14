package com.service;

import com.entities.Province;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface IprovinceService {
    public List<Province> selectAll();
}
