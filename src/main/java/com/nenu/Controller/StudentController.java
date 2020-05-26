package com.nenu.Controller;

import com.nenu.Service.IStudentService;
import com.nenu.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Scope("prototype")
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private IStudentService iStudentService;
//学生登陆
    @RequestMapping(value = "/s_login",method = RequestMethod.POST)
    public ModelAndView login(String studentName, String studentPassword, ModelAndView mv, HttpSession session){
        Student student = iStudentService.s_login(studentName,studentPassword);
        if (student!=null){
            //登录成功保存在session
            session.setAttribute("student",student);
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

//跳转到注册
    @RequestMapping("/registerPage")
    public String registerPage(){
        return "s_register";
    }

    //注册
    @RequestMapping(value = "/s_register", method = RequestMethod.POST)
    public String register(Student student){
        String studentName = student.getStudentName();
        //无该用户可以注册
        if (iStudentService.findByName(studentName)==null){
            iStudentService.s_register(student);
//            跳转
            return "success";
        }
        else{
            return "error";
        }
    }

    @RequestMapping(value = "/s_findAll",method = RequestMethod.POST)
    public String finAll(HttpSession session){
        List<Student> students = iStudentService.findAll();
        session.setAttribute("students",students);
        return "s_list";
    }

    @RequestMapping("/test")
    public String test(){
        System.out.println("测试......");
        return "success";
    }
}
