package com.dao;

import com.entities.Health;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface HealthMapper {
    List<Health> selectAll();
}
