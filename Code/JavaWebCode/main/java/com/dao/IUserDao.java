package com.dao;

import com.entities.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IUserDao {

    public User findUserByUsernameAndPwd(User user);

    public User findUserByUsername(@Param("username")String username);

    List<Map<String,Object>> findUsersAll();

    public int insertUser(@Param("username")String username,@Param("password")String password);

    int  findUserIdMax();



    User findUserById(Integer id);

    User deleteUserById(@Param("user_id") Integer user_id);
}
