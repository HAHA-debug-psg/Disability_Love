package com.service.impl;

import com.dao.IUserDao;
import com.entities.User;
import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("userService")
public class UserServiceImpl implements IUserService {
    @Autowired
    IUserDao userDao;

    @Override
    public User findUserByUsernameAndPwd(User user)
    {
        User user1=userDao.findUserByUsernameAndPwd(user);
        return user1;
    }
    @Override
    public boolean findUserByUsername(String username)
    {
        User user=userDao.findUserByUsername(username);
        if(user!=null)
        {
            return true;

        }
        else{
            return false;
        }
    }



    @Override
    public int insertUser(String username,String password)
    {

        return userDao.insertUser(username,password);
    }

    @Override
    public int findUserIdMax()
    {
        int max_id=userDao.findUserIdMax();
        return max_id;
    }
    @Override
    public List<Map<String,Object>> findUsersAll() {
        // 调用 dao 层 查询数据库
        List<Map<String,Object>> users = userDao. findUsersAll();
        return users;
    }

    @Override
    public User findUserById(Integer id) {
        User user =userDao.findUserById(id);
        return user;
    }

    @Override
    public User deleteUser(Integer user_id)
    {
        User user=userDao.deleteUserById(user_id);
        return user;
    }



}
