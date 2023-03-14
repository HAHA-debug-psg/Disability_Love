package com.dao;


import com.entities.ManagerNews;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;


public interface IManagerNewsDao {

    public int insertManagerNews(@Param("text") String text,@Param("date") String date);
//    public int updateManagerNews(ManagerNews ManagerNews);
//
//    public ManagerNews findManagerNewsById(@Param("text")int id);

    public List<ManagerNews> findManagerNewsAll();


    int deleteManagerNews(@Param("n_id") int nid);
}
