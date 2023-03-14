package com.service;


import com.entities.UserMateSelection;

import java.util.List;

public interface IUserMateSelectionService {

    public int updateUserMateSelection(UserMateSelection userMateSelection);

    public UserMateSelection findUserMateSelectionById(int id);

    public int insertUserMateSelection(int id);
}
