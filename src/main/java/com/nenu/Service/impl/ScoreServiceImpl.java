package com.nenu.Service.impl;

import com.nenu.Dao.ScoreDao;
import com.nenu.Service.IScoreService;
import com.nenu.domain.Score;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("scoreService")
@Transactional
public class ScoreServiceImpl implements IScoreService {

    @Autowired
    private ScoreDao scoreDao;

    @Override
    public List<Score> findScore() {
        return scoreDao.findScore();
    }

    @Override
    public List<Score> findScoreById(int studentID) {
        return scoreDao.findScoreById(studentID);
    }

    @Override
    public void addScore(Score score) {
        scoreDao.addScore(score);
    }

    @Override
    public List<Score> findScoreByName(String studentName) {
        return scoreDao.findScoreByName(studentName);
    }
}
