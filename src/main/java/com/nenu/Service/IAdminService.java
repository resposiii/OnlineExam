package com.nenu.Service;

import com.nenu.domain.Admin;

public interface IAdminService {
    Admin a_login(String adminName, String password);
}
