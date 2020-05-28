package com.nenu.domain;

import java.io.Serializable;

/**
 * 成绩单类
 */
public class Score implements Serializable {
    private int studentID;
    private String cardID;
    private String studentName;
    private int objectlvesScore;
    private int subjectlvesScore;
    private float totalScore;

    public int getStudentID() {
        return studentID;
    }

    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }

    public String getCardID() {
        return cardID;
    }

    public void setCardID(String cardID) {
        this.cardID = cardID;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public int getObjectlvesScore() {
        return objectlvesScore;
    }

    public void setObjectlvesScore(int objectlvesScore) {
        this.objectlvesScore = objectlvesScore;
    }

    public int getSubjectlvesScore() {
        return subjectlvesScore;
    }

    public void setSubjectlvesScore(int subjectlvesScore) {
        this.subjectlvesScore = subjectlvesScore;
    }

    public float getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(float totalScore) {
        this.totalScore = totalScore;
    }

    @Override
    public String toString() {
        return "Score{" +
                "studentID=" + studentID +
                ", cardID='" + cardID + '\'' +
                ", studentName='" + studentName + '\'' +
                ", objectlvesScore=" + objectlvesScore +
                ", subjectlvesScore=" + subjectlvesScore +
                ", totalScore=" + totalScore +
                '}';
    }
}
