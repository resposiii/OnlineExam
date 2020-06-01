package com.nenu.domain;

import java.io.Serializable;

/**
 * 成绩单类
 */
public class Score implements Serializable {
    private int id;
    private int studentID;
    private String cardID;
    private String studentName;
    private float score;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Score{" +
                "id=" + id +
                ", studentID=" + studentID +
                ", cardID='" + cardID + '\'' +
                ", studentName='" + studentName + '\'' +
                ", score=" + score +
                '}';
    }
}
