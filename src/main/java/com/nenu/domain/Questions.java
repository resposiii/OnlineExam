package com.nenu.domain;

import java.io.Serializable;

/**
 * 问题类
 */

public class Questions implements Serializable {
    private int id;
    private String subject;
    private String chart;
    private String title;
    private String type;
    private String ans1;
    private String ans2;
    private String ans3;
    private String ans4;
    private String answer;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getChart() {
        return chart;
    }

    public void setChart(String chart) {
        this.chart = chart;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAns1() {
        return ans1;
    }

    public void setAns1(String ans1) {
        this.ans1 = ans1;
    }

    public String getAns2() {
        return ans2;
    }

    public void setAns2(String ans2) {
        this.ans2 = ans2;
    }

    public String getAns3() {
        return ans3;
    }

    public void setAns3(String ans3) {
        this.ans3 = ans3;
    }

    public String getAns4() {
        return ans4;
    }

    public void setAns4(String ans4) {
        this.ans4 = ans4;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "Questions{" +
                "id=" + id +
                ", subject='" + subject + '\'' +
                ", chart='" + chart + '\'' +
                ", title='" + title + '\'' +
                ", type='" + type + '\'' +
                ", ans1='" + ans1 + '\'' +
                ", ans2='" + ans2 + '\'' +
                ", ans3='" + ans3 + '\'' +
                ", ans4='" + ans4 + '\'' +
                ", answer='" + answer + '\'' +
                '}';
    }
}
