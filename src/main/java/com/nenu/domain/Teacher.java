package com.nenu.domain;

import java.io.Serializable;

/**
 * 教师类
 */
public class Teacher implements Serializable {
    private int teacherID;
    private String teacherName;
    private String gender;
    private String teacherPassword;

    public int getTeacherID() {
        return teacherID;
    }

    public void setTeacherID(int teacherID) {
        this.teacherID = teacherID;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getTeacherPassword() {
        return teacherPassword;
    }

    public void setTeacherPassword(String teacherPassword) {
        this.teacherPassword = teacherPassword;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "teacherID=" + teacherID +
                ", teacherName='" + teacherName + '\'' +
                ", gender='" + gender + '\'' +
                ", teacherPassword='" + teacherPassword + '\'' +
                '}';
    }
}
