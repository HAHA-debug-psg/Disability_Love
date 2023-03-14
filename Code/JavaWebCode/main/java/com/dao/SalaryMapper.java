package com.dao;

import com.entities.Salary;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SalaryMapper {
    List<Salary> selectAll();
}
