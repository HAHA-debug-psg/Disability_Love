package com.service;


import com.entities.User;

import java.util.List;
import java.util.Map;

public interface IUserService {
    public User findUserByUsernameAndPwd(User user);

    public boolean findUserByUsername(String username);

    List<Map<String,Object>> findUsersAll();

    //返回插入user的id
    public int insertUser(String username,String password);

    int findUserIdMax();




    User findUserById(Integer id);

    User deleteUser(Integer user_id);
}
