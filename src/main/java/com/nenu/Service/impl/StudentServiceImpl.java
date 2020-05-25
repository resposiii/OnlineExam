package com.nenu.Service.impl;

import com.nenu.Dao.StudentDao;
import com.nenu.Service.IStudentService;
import com.nenu.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("studentService")
public class StudentServiceImpl implements IStudentService {

    @Autowired
    private StudentDao studentDao;

    @Override
    public Student s_login(String studentName, String studentPassword) {
        return studentDao.findByNameAndPassword(studentName,studentPassword);
    }

    @Override
    public void s_register(Student student) {
        studentDao.addStudent(student);
    }

    @Override
    public Student findByName(String studentName) {
        return studentDao.findByName(studentName);
    }

    @Override
    public List<Student> findAll() {
        return studentDao.findAll();
    }


}
