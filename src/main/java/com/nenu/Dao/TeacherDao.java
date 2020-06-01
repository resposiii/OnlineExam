package com.nenu.Dao;

import com.nenu.domain.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherDao {
    //根据老师名密码查询
    Teacher findByNameAndPassword(@Param("teacherName")String teacherName
            , @Param("teacherPassword")String teacherPassword);
    //增加老师
    Teacher addTeacher(Teacher teacher);
    //根据老师名查找
    Teacher findByName(String teacherName);
    //查找所有
    List<Teacher> findAll();
    //删除
    void deleteTeacher(Integer teacherID);
}
