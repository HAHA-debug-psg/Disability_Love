package com.dao;

import com.entities.Marriage;
import org.apache.ibatis.annotations.Mapper;


import java.util.List;

@Mapper
public interface MarriageMapper {
    List<Marriage> selectAll();
}
