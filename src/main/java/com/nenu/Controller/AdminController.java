package com.nenu.Controller;

import com.nenu.Service.*;
import com.nenu.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Scope("prototype")
//@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private IAdminService adminService;

    @Autowired
    private ITeacherService teacherService;

    @Autowired
    private IStudentService studentService;

    @Autowired
    private IScoreService scoreService;

    @Autowired
    private INoticeService noticeService;

    @Autowired
    private IQuestionService questionService;

    @RequestMapping(value = "/a_login")
    public ModelAndView login(String adminName, String password, ModelAndView mv, HttpSession session){
        Admin admin = adminService.a_login(adminName,password);
        if (admin!=null){
            //登录成功保存在session
            session.setAttribute("admin",admin);
            //学生
            List<Student> students = studentService.findAll();
            session.setAttribute("students",students);
            //教师
            List<Teacher> teachers = teacherService.findAll();
            session.setAttribute("teachers",teachers);
            //问题
            List<Questions> questions = questionService.findAllQuestion();
            session.setAttribute("questions",questions);
            //公告
            List<Notice> notices = noticeService.findAllNotice();
            session.setAttribute("notices",notices);
            //跳转页面
            mv.setViewName("admin");
        }
        else {
            //登录失败
            mv.addObject("message","用户名密码错误，重新登录");
            //跳转
            mv.setViewName("error");
        }
        return mv;
    }

//    @RequestMapping("/findTeacher")
//    public String findTeacher(HttpSession session){
//        List<Teacher> teachers = teacherService.findAll();
//        session.setAttribute("teachers",teachers);
//        return "t_list";
//    }
//
//    @RequestMapping("/findStudent")
//    public String findStudent(HttpSession session){
//        List<Student> students = studentService.findAll();
//        session.setAttribute("students",students);
//        return "s_list";
//    }

//    @RequestMapping("/findScore")
//    public String findScore(HttpSession session){
//        List<Score> scores = scoreService.findScore();
//        session.setAttribute("scores",scores);
//        return "s_score";
//    }
//
//    @RequestMapping("/findNotice")
//    public String findNotice(HttpSession session){
//        List<Notice> notices=noticeService.findAllNotice();
//        session.setAttribute("notices",notices);
//        return "notice";
//    }
//
//    @RequestMapping("/findQuestion")
//    public String findQuestion(HttpSession session){
//        List<Questions> questions = questionService.findAllQuestion();
//        session.setAttribute("questions",questions);
//        return null;
//    }

    @RequestMapping("/deleteStudent")
    public String deleteStudent(HttpSession session,int studentID){
        studentService.deleteStudent(studentID);
        session.setAttribute("url","/deleteStudent");
        return "success";
    }

//    @RequestMapping("/updateStudents")
//    public String updateStudent(HttpSession session,int studentID){
//        Student student = studentService.findById(studentID);
//        studentService.updateStudent(student);
//        session.setAttribute("url","/updateStudent");
//        return "success";
//    }

}
