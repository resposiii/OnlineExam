package com.nenu.Controller;

import com.nenu.Service.ITeacherService;
import com.nenu.domain.Student;
import com.nenu.domain.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@Scope("prototype")
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private ITeacherService teacherService;

    @RequestMapping(value = "/t_login",method = RequestMethod.POST)
    public ModelAndView login(String teacherName, String teacherPassword, ModelAndView mv, HttpSession session){
        Teacher teacher = teacherService.t_login(teacherName,teacherPassword);
        if (teacher!=null){
            //登录成功保存在session
            session.setAttribute("teacher",teacher);
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

    @RequestMapping(value = "/t_register", method = RequestMethod.POST)
    public String register(Teacher teacher){
        String teacherName = teacher.getTeacherName();
        //无该用户可以注册
        if (teacherService.findByName(teacherName)==null){
            teacherService.t_register(teacher);
//            跳转
            return "success";
        }
        else{
            return "error";
        }
    }

}
