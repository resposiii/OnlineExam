package com.nenu.test;

import com.nenu.Service.impl.StudentServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test2 {

    @Test
    public void run1(){
        //加载文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        StudentServiceImpl studentService = (StudentServiceImpl) ac.getBean("studentService");
        //调用方法
        studentService.findAll();
    }
}
