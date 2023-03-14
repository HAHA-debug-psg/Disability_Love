package com.dao;

import com.entities.Province;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface provinceMapper {
    public List<Province> selectAll();
}
