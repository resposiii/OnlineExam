package com.nenu.Service;

import com.nenu.domain.Teacher;

import java.util.List;

public interface ITeacherService {
    //通过用户名和密码核查用户登录
    Teacher t_login(String teacherName,String teacherPassword);
    //注册
    void t_register(Teacher teacher);
    //根据用户名查找
    List<Teacher> findByName(String teacherName);
    //查找所有
    List<Teacher> findAll();
    //删除
    void deleteTeacher(Integer teacherID);
    //增加老师
    void addTeacher(Teacher teacher);

    Teacher findById(int teacherID);

    void updateTeacher(Teacher teacher);
}
