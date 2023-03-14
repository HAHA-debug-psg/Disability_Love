package com.service.impl;

import com.dao.IUserDao;
import com.dao.IUserInformationDao;
import com.entities.User;
import com.entities.UserInformation;
import com.entities.UserTrend;
import com.service.IUserInformationService;
import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("userInformationService")
public class UserInformationServiceImpl implements IUserInformationService {
    @Autowired
    IUserInformationDao userInformationDao;

    @Override
    public int updateUserInformation(UserInformation userInformation)
    {
        int ifUpdata=userInformationDao.updateUserInformation(userInformation);
        return ifUpdata;
    }
    @Override
    public UserInformation findUserInformationById(int id)
    {
        UserInformation userI=userInformationDao.findUserInformationById(id);
        return userI;
    }

    @Override
    public List<UserInformation> findUserInformationAll()
    {
        List<UserInformation> userInformation=userInformationDao.findUserInformationAll();
        return userInformation;
    }
    @Override
    public int insertUserInformation(int id)
    {
        int ifInsert=userInformationDao.insertUserInformation(id);
        return ifInsert;
    }

}
