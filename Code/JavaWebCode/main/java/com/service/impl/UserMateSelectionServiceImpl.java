package com.service.impl;

import com.dao.IUserDao;
import com.dao.IUserMateSelectionDao;
import com.entities.User;
import com.entities.UserMateSelection;
import com.service.IUserMateSelectionService;
import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("UserMateSelectionService")
public class UserMateSelectionServiceImpl implements IUserMateSelectionService {
    @Autowired
    IUserMateSelectionDao UserMateSelectionDao;

    @Override
    public int updateUserMateSelection(UserMateSelection UserMateSelection)
    {
        int ifUpdata=UserMateSelectionDao.updateUserMateSelection(UserMateSelection);
        return ifUpdata;
    }
    @Override
    public UserMateSelection findUserMateSelectionById(int id)
    {
        UserMateSelection userI=UserMateSelectionDao.findUserMateSelectionById(id);
        return userI;
    }

    public int insertUserMateSelection(int id)
    {
        int ifInsert=UserMateSelectionDao.insertUserMateSelection(id);
        return ifInsert;
    }

}
