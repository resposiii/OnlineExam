package com.nenu.Controller;

import com.nenu.Service.IAdminService;
import com.nenu.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@Scope("prototype")
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private IAdminService adminService;

    @RequestMapping(value = "/a_login",method = RequestMethod.POST)
    public ModelAndView login(String adminName, String password, ModelAndView mv, HttpSession session){
        Admin admin = adminService.a_login(adminName,password);
        if (admin!=null){
            //登录成功保存在session
            session.setAttribute("admin",admin);
            //跳转页面
            mv.setViewName("success");
        }
        else {
            //登录失败
            mv.addObject("message","用户名密码错误，重新登录");
            //跳转
            mv.setViewName("error");
        }
        return mv;
    }
}
