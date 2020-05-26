package com.nenu.Dao;

import com.nenu.domain.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminDao {
    //根据用户名密码查询
    Admin findByNameAndPassword(@Param("adminName")String adminName
            , @Param("password")String password);
}
