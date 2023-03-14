package com.dao;


import com.entities.UserInformation;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface IUserInformationDao {

    public int updateUserInformation(UserInformation userInformation);

    public UserInformation findUserInformationById(@Param("id")int id);

    public List<UserInformation> findUserInformationAll();

    public int insertUserInformation(@Param("id")int id);
}
