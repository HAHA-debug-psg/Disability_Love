package com.service;


import com.entities.UserInformation;

import java.util.List;

public interface IUserInformationService {
    public int updateUserInformation(UserInformation userInformation);

    public List<UserInformation> findUserInformationAll();

    public UserInformation findUserInformationById(int id);

    public int insertUserInformation(int id);
}
