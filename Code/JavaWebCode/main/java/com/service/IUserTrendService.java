package com.service;


import com.entities.UserTrend;

import java.util.List;

public interface IUserTrendService {

    int insertTrend(int uid, String uname,String text);

    int deleteTrend(int uid, int tid);
    List<UserTrend> findUserTrendById(int id);
    int updateUserTrend(UserTrend userTrend);

    List<UserTrend> findUserTrendAll();

}