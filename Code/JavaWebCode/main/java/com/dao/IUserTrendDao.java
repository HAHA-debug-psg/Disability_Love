package com.dao;


import com.entities.UserTrend;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface IUserTrendDao {

    public int insertTrend(@Param("uid")int uid,@Param("uname")String  uname, @Param("text") String text);

    public int deleteTrend(@Param("uid")int uid,@Param("tid")int tid);
    public int updateUserTrend(UserTrend userTrend);

    public List<UserTrend> findUserTrendById(@Param("uid")int id);

    public List<UserTrend> findUserTrendAll();
}
