package com.nenu.Controller;

import com.nenu.Service.INoticeService;
import com.nenu.Service.IQuestionService;
import com.nenu.Service.IScoreService;
import com.nenu.Service.ITeacherService;
import com.nenu.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@Scope("prototype")
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private ITeacherService teacherService;

    @Autowired
    private IScoreService scoreService;

    @Autowired
    private INoticeService noticeService;

    @Autowired
    private IQuestionService questionService;

    @RequestMapping(value = "/t_login")
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

    @RequestMapping(value = "/t_register")
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

    @RequestMapping("/findScore")
    public String findScore(HttpSession session){
        List<Score> scores = scoreService.findScore();
        session.setAttribute("scores",scores);
        return "s_score";
    }

    @RequestMapping("/findNotice")
    public String findNotice(HttpSession session){
        List<Notice> notices=noticeService.findAllNotice();
        session.setAttribute("notices",notices);
        return "notice";
    }

    @RequestMapping("/addNotice")
    public String addNotice(HttpServletRequest request, HttpServletResponse response,Notice notice) throws ServletException, IOException {
        if (notice.getTitle()!=""){
            noticeService.addNotice(notice);
            return "notice";
        }
        else {
            request.setAttribute("error","公告不能为空");
            return "error";
        }
    }

    @RequestMapping("/q_list")
    public String findQuestion(HttpSession session){
        List<Questions> questions = questionService.findAllQuestion();
        session.setAttribute("questions",questions);
        return null;
    }

    @RequestMapping("/addQuestion")
    public  String addQuestion(Questions question){
        questionService.addQuestion(question);
//        return “redirect:findAllUser.do”;
        return null;
    }


}
