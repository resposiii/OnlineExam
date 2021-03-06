package com.nenu.Service.impl;

import com.nenu.Dao.TeacherDao;
import com.nenu.Service.ITeacherService;
import com.nenu.domain.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("teacherService")
@Transactional
public class TeacherServiceImpl implements ITeacherService {

    @Autowired
    private TeacherDao teacherDao;

    @Override
    public Teacher t_login(String teacherName, String teacherPassword) {
        return teacherDao.findByNameAndPassword(teacherName,teacherPassword);
    }

    @Override
    public void t_register(Teacher teacher) {
        teacherDao.addTeacher(teacher);
    }

    @Override
    public List<Teacher> findByName(String teacherName) {
        return teacherDao.findByName(teacherName);
    }

    @Override
    public List<Teacher> findAll() {
        return teacherDao.findAll();
    }

    @Override
    public void deleteTeacher(Integer teacherID) {
        teacherDao.deleteTeacher(teacherID);
    }

    @Override
    public void addTeacher(Teacher teacher) {
        teacherDao.addTeacher(teacher);
    }

    @Override
    public Teacher findById(int teacherID) {
        return teacherDao.findById(teacherID);
    }

    @Override
    public void updateTeacher(Teacher teacher) {
        teacherDao.updateTeacher(teacher);
    }
}
