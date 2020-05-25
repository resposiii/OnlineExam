package com.nenu.domain;

import java.io.Serializable;

public class Student implements Serializable {
    private int studentID;
    private String studentName;
    private String gender;
    private String cardID;
    private String studentPassword;

    public int getStudentID() {
        return studentID;
    }

    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCardID() {
        return cardID;
    }

    public void setCardID(String cardID) {
        this.cardID = cardID;
    }

    public String getStudentPassword() {
        return studentPassword;
    }

    public void setStudentPassword(String studentPassword) {
        this.studentPassword = studentPassword;
    }

    @Override
    public String toString() {
        return "Student{" +
                "studentID=" + studentID +
                ", studentName='" + studentName + '\'' +
                ", gender='" + gender + '\'' +
                ", cardID='" + cardID + '\'' +
                ", studentPassword='" + studentPassword + '\'' +
                '}';
    }
}
