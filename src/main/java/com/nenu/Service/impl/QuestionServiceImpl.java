package com.nenu.Service.impl;

import com.nenu.Dao.QuestionsDao;
import com.nenu.Service.IQuestionService;
import com.nenu.domain.Questions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("questionService")
@Transactional
public class QuestionServiceImpl implements IQuestionService {

    @Autowired
    private QuestionsDao questionsDao;

    @Override
    public void addQuestion(Questions questions) {
        questionsDao.addQuestion(questions);
    }

    @Override
    public void deleteQuestion(int id) {
        questionsDao.deleteQuestion(id);
    }

    @Override
    public List<Questions> findAllQuestion() {
        return questionsDao.findAllQuestion();
    }

    @Override
    public List<Integer> findAllQuestionId() {
        return questionsDao.findAllQuestionId();
    }

    @Override
    public void updateQuestion(Questions question) {
        questionsDao.updateQuestion(question);
    }

    @Override
    public Questions findQuestionById(int id) {
        return questionsDao.findQuestionById(id);
    }

    @Override
    public List<Questions> randomFindQuestion() {
        return questionsDao.randomFindQuestion();
    }
}
