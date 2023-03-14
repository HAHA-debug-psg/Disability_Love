package com.dao;


import com.entities.UserMateSelection;
import org.apache.ibatis.annotations.Param;


public interface IUserMateSelectionDao {

    public int updateUserMateSelection(UserMateSelection UserMateSelection);

    public UserMateSelection findUserMateSelectionById(@Param("id")int id);

    public int insertUserMateSelection(@Param("id")int id);
}
