package com.service;


import com.entities.ManagerNews;

import java.util.Date;
import java.util.List;

public interface IManagerNewsService {

    public int insertManagerNews(String text, String date);
//    public ManagerNews findManagerNewsById(int id);
//    public int updateManagerNews(ManagerNews ManagerNews);

    public List<ManagerNews> findManagerNewsAll();

    int deleteManagerNews(int nid);


}