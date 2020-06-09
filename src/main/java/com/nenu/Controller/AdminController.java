package com.nenu.Controller;

import com.nenu.Service.*;
import com.nenu.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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

    @RequestMapping("/addStudent")
    public String addStudent(Student student,HttpSession session){
        if (student==null){
            return "error";
        }
        else {
            studentService.addStudent(student);
            session.setAttribute("url","/addStudent");
            return "success";
        }
    }

    @RequestMapping("/addTeacher")
    public String addTeacher(Teacher teacher,HttpSession session){
        if (teacher==null){
            return "error";
        }
        else {
            teacherService.addTeacher(teacher);
            session.setAttribute("url","/addTeacher");
            return "success";
        }
    }

    @RequestMapping("/addQuestions")
    public String addQuestion(Questions question,HttpSession session){
        if (question==null){
            return "error";
        }
        else{
            questionService.addQuestion(question);
            session.setAttribute("url","/addQuestions");
//        return “redirect:findAllUser.do”;
            return "success";
        }
    }

    @RequestMapping("/addNotices")
    public String addNotice(HttpServletRequest request, HttpSession session, Notice notice) throws ServletException, IOException {
        if (!notice.getTitle().equals("")){
            session.setAttribute("url","/addNotices");
            noticeService.addNotice(notice);
            return "success";
        }
        else {
            request.setAttribute("error","公告不能为空");
            return "error";
        }
    }

    @RequestMapping("/findStudentByName")
    public String findStudentByName(String studentName,HttpSession session){
        List<Student> students = studentService.findByName(studentName);
        session.setAttribute("students",students);
        return "admin";
    }

    @RequestMapping("/findTeacherByName")
    public String findTeacherByName(String teacherName,HttpSession session){
        List<Teacher> teachers = teacherService.findByName(teacherName);
        session.setAttribute("teachers",teachers);
        return "admin";
    }


    @RequestMapping("/deleteStudent")
    public String deleteStudent(int studentID,HttpSession session){
        studentService.deleteStudent(studentID);
        session.setAttribute("url","/deleteStudent");
        return "success";
    }

    @RequestMapping("/deleteTeacher")
    public String deleteTeacher(int teacherID,HttpSession session){
        teacherService.deleteTeacher(teacherID);
        session.setAttribute("url","/deleteTeacher");
        return "success";
    }

    @RequestMapping("/deleteQuestions")
    public String deleteQuestions(int id,HttpSession session){
        questionService.deleteQuestion(id);
        session.setAttribute("url","/deleteQuestions");
        return "success";
    }

    @RequestMapping("/deleteNotices")
    public String deleteNotices(int id,HttpSession session){
        noticeService.deleteNotice(id);
        session.setAttribute("url","/deleteNotices");
        return "success";
    }

    @RequestMapping("/beforeUpdateStudents")
    public String beforeUpdateStudents(int studentID,HttpSession session){
        Student student = studentService.findById(studentID);
        session.setAttribute("student",student);
        return "updateStudents";
    }

    @RequestMapping("/updateStudents")
    public String updateStudents(Student student,HttpSession session){
        session.setAttribute("url","/updateStudents");
        studentService.updateStudent(student);
        return "success";
    }


    @RequestMapping("/beforeUpdateTeacher")
    public String beforeUpdateTeacher(int teacherID,HttpSession session){
        Teacher teacher = teacherService.findById(teacherID);
        session.setAttribute("teacher",teacher);
        return "updateTeacher";
    }

    @RequestMapping("/updateTeacher")
    public String updateTeacher(Teacher teacher,HttpSession session){
        session.setAttribute("url","/updateTeacher");
        teacherService.updateTeacher(teacher);
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
