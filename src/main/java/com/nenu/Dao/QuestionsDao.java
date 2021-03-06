package com.nenu.Dao;

import com.nenu.domain.Questions;

import java.util.List;

public interface QuestionsDao {
    //增加试题
    void addQuestion(Questions questions);
    //删除
    void deleteQuestion(int id);
    //查找所有
    List<Questions> findAllQuestion();
    //查找所有id
    List<Integer> findAllQuestionId();
    //更新
    void updateQuestion(Questions question);
    //根据id查找
    Questions findQuestionById(int id);
    //随机查找
    List<Questions> randomFindQuestion();
}
