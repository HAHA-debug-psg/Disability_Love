package com.service.impl;

import com.dao.IManagerDao;
import com.dao.IManagerDao;
import com.entities.Manager;
import com.entities.Manager;
import com.service.IManagerService;
import com.service.IManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ManagerService")
public class ManagerServiceImpl implements IManagerService {
    @Autowired
    IManagerDao ManagerDao;

    @Override
    public Manager findManagerByUsernameAndPwd(Manager Manager)
    {
        Manager Manager1=ManagerDao.findManagerByUsernameAndPwd(Manager);
        return Manager1;
    }

    
}
