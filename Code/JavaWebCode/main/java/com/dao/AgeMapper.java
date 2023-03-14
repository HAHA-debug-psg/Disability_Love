package com.dao;

import com.entities.Age;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AgeMapper {
    List<Age> selectAll();
}
