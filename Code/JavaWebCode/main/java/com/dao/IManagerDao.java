package com.dao;

import com.entities.Manager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IManagerDao {

    public Manager findManagerByUsernameAndPwd(Manager manager);

}
