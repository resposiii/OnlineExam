package com.nenu.Dao;

import com.nenu.domain.Student;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentDao {
    //根据学生名密码查询
    Student findByNameAndPassword(@Param("studentName")String studentName
            ,@Param("studentPassword")String studentPassword);
    //增加学生
    void addStudent(Student student);
    //根据学生名查找
    Student findByName(String studnetName);
    //查找所有
    List<Student> findAll();
}
