package com.nenu.Controller;

import com.nenu.Service.INoticeService;
import com.nenu.Service.IQuestionService;
import com.nenu.Service.IScoreService;
import com.nenu.Service.IStudentService;
import com.nenu.domain.Notice;
import com.nenu.domain.Questions;
import com.nenu.domain.Score;
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
import java.util.ArrayList;
import java.util.List;

@Controller
@Scope("prototype")
//@RequestMapping("/student")
public class StudentController {

    @Autowired
    private IStudentService iStudentService;

    @Autowired
    private IScoreService scoreService;

    @Autowired
    private INoticeService noticeService;

    @Autowired
    private IQuestionService questionService;

    //学生登陆
    @RequestMapping(value = "/s_login")
    public ModelAndView login(String studentName, String studentPassword, ModelAndView mv, HttpSession session){
        Student student = iStudentService.s_login(studentName,studentPassword);
        if (student!=null){
            //登录成功保存在session
            session.setAttribute("student",student);
            List<Notice> notices = noticeService.findAllNotice();
            session.setAttribute("notices",notices);
            session.setAttribute("url","/student");
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
    @RequestMapping(value = "/s_register")
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

    @RequestMapping(value = "/s_findAll")
    public String finAll(HttpSession session){
        List<Student> students = iStudentService.findAll();
        session.setAttribute("students",students);
        return "s_list";
    }

    @RequestMapping(value = "/score")
    public String findScoreById(int studentID,HttpSession session){
        List<Score> scores = scoreService.findScoreById(studentID);
        session.setAttribute("scores",scores);
        session.setAttribute("url","/student");
        return "success";
    }

    @RequestMapping("/notice")
    public String findAllNotice(HttpSession session){
        List<Notice> notices = noticeService.findAllNotice();
        session.setAttribute("notices",notices);
        return "notice";
    }


    @RequestMapping("/beforeUpdateStudent")
    public String beforeUpdateStudent(int studentID,HttpSession session){
        Student student = iStudentService.findById(studentID);
        session.setAttribute("student",student);
        return "updateStudent";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent(Student student){
        iStudentService.updateStudent(student);
        return "success";
    }


    @RequestMapping("/exam")
    public String exam(HttpSession session){
        List<Questions> questions = questionService.randomFindQuestion();
        List<Integer> questionIds = new ArrayList<>();
        for (Questions question:questions){
            questionIds.add(question.getId());
        }
        session.setAttribute("questions",questions);
        session.setAttribute("questionsIds",questionIds);
        return "doExam";
    }

    @RequestMapping("/addScore")
    public String addScore(String studentName,String cardID,int studentID,int scores){
        Score score = new Score();
        score.setStudentName(studentName);
        score.setCardID(cardID);
        score.setStudentID(studentID);
        score.setScore(scores);
        scoreService.addScore(score);
        return "index";
    }

    @RequestMapping("/getScore")
    public String getScore(HttpServletRequest request,HttpSession session){
        int scores=0;
        List<Integer> questionIds = (List<Integer>) session.getAttribute("questionsIds");
        List<String> userAnswers=new ArrayList<>();
        List<String> answers = new ArrayList<>();
        //获取用户选择
        for (int i=0;i<5;i++){
            userAnswers.add(request.getParameter("subjectOption-"+questionIds.get(i)));
        }
        //从数据库中获取答案
        for (int i=0;i<5;i++){
            answers.add(questionService.findQuestionById(questionIds.get(i)).getAnswer());
        }
        for (int i=0;i<5;i++){
            if ((userAnswers.get(i)).equals(answers.get(i))){
                scores+=20;
            }
            else {
                scores+=0;
            }
        }
        session.setAttribute("scores",scores);
        return "score";
    }

    @RequestMapping("/test")
    public String test(){
        System.out.println("测试......");
        return "success";
    }


}
