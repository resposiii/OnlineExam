package com.nenu.Service.impl;

import com.nenu.Dao.AdminDao;
import com.nenu.Service.IAdminService;
import com.nenu.domain.Admin;
import com.nenu.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("adminService")
@Transactional
public class AdminServiceImpl implements IAdminService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public Admin a_login(String adminName, String password) {
        return adminDao.findByNameAndPassword(adminName,password);
    }
}
