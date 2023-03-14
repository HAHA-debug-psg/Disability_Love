package com.service.impl;

import com.dao.IUserTrendDao;
import com.entities.UserTrend;
import com.service.IUserTrendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("userTrendService")
public class UserTrendServiceImpl implements IUserTrendService {

    @Autowired
    IUserTrendDao userTrendDao;

    @Override
    public int insertTrend(int uid,String uname,String text)
    {
        return userTrendDao.insertTrend(uid,uname,text);
    }
    @Override
    public int deleteTrend(int uid, int tid)
    {
        int ifDelete=userTrendDao.deleteTrend(uid,tid);
        return ifDelete;
    }

    @Override
    public int updateUserTrend(UserTrend userTrend)
    {
        int ifUpdata=userTrendDao.updateUserTrend(userTrend);
        return ifUpdata;
    }
    @Override
    public List<UserTrend> findUserTrendById(int id)
    {
        List<UserTrend> userI=userTrendDao.findUserTrendById(id);
        return userI;
    }
    @Override
    public List<UserTrend> findUserTrendAll()
    {
        List<UserTrend> userTrends=userTrendDao.findUserTrendAll();
        return userTrends;

    }

}
