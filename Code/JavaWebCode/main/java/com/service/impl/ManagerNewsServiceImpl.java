package com.service.impl;

import com.dao.IManagerNewsDao;
import com.entities.ManagerNews;
import com.service.IManagerNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service("ManagerNewsService")
public class ManagerNewsServiceImpl implements IManagerNewsService {

    @Autowired
    IManagerNewsDao ManagerNewsDao;

    @Override
    public int insertManagerNews( String text, String date)
    {
        int nId=ManagerNewsDao.insertManagerNews(text,date);
        return nId;
    }

//    @Override
//    public int updateManagerNews(ManagerNews ManagerNews)
//    {
//        int ifUpdata=ManagerNewsDao.updateManagerNews(ManagerNews);
//        return ifUpdata;
//    }
//    @Override
//    public ManagerNews findManagerNewsById(int id)
//    {
//        ManagerNews userI=ManagerNewsDao.findManagerNewsById(id);
//        return userI;
//    }
    @Override
    public List<ManagerNews> findManagerNewsAll()
    {
        List<ManagerNews> ManagerNews=ManagerNewsDao.findManagerNewsAll();
        return ManagerNews;

    }


    @Override
    public int deleteManagerNews(int  nid)
    {
        int ifDelete=ManagerNewsDao.deleteManagerNews(nid);
        return ifDelete;
    }

}
