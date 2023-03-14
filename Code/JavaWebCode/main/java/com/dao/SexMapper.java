package com.dao;


import com.entities.Sex;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SexMapper {
    List<Sex> selectAll();
}
