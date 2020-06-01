package com.nenu.test;

import com.nenu.Dao.StudentDao;
import com.nenu.Service.IScoreService;
import com.nenu.Service.IStudentService;
import com.nenu.domain.Score;
import com.nenu.domain.Student;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * 测试
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class Test1 {
    @Autowired
   private IStudentService studentService;
    @Autowired
    private IScoreService scoreService;
    @Test
    public void testFindAll(){
        List<Student> students = studentService.findAll();
        for (Student student:students){
            System.out.println(student);
        }
    }
    @Test
    public void testDeleteStudent(){
        studentService.deleteStudent(2018002);
    }

    @Test
    public void testFindScore(){
        List<Score> scores = scoreService.findScore();
        for (Score score:scores){
            System.out.println(score);
        }
    }
}
