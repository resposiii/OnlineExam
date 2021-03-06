package com.nenu.Service.impl;

import com.nenu.Dao.StudentDao;
import com.nenu.Service.IStudentService;
import com.nenu.domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("studentService")
@Transactional
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
    public List<Student> findByName(String studentName) {
        return studentDao.findByName(studentName);
    }

    @Override
    public Student findById(int studentID) {
        return studentDao.findById(studentID);
    }

    @Override
    public void deleteStudent(int studentID) {
        studentDao.deleteStudent(studentID);
    }

    @Override
    public List<Student> findAll() {
        return studentDao.findAll();
    }

    @Override
    public void updateStudent(Student student) {
        studentDao.updateStudent(student);
    }

    @Override
    public void addStudent(Student student) {
        studentDao.addStudent(student);
    }


}
