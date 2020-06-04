package com.nenu.Service;

import com.nenu.domain.Student;

import java.util.List;

public interface IStudentService {
    //通过用户名和密码核查用户登录
    Student s_login(String studentName,String studentPassword);
    //注册
    void s_register(Student student);
    //根据用户名查找
    Student findByName(String studentName);
    //根据id查找
    Student findById(int studentID);
    //删除
    void deleteStudent(int studentID);
    //查找所有
    List<Student> findAll();
    //更新
    void updateStudent(Student student);
}
