package com.nenu.Dao;

import com.nenu.domain.Score;

import java.util.List;

public interface ScoreDao {
//    查找所有
    List<Score> findScore();
//    根据id查找
    List<Score> findScoreById(int studentID);
//    增加
    void addScore(Score score);
}
