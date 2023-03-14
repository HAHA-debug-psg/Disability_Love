package com.dao;

import com.entities.Education;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EducationMapper {
    List<Education> selectAll();
}
