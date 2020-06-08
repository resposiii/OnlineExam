package com.nenu.Dao;

import com.nenu.domain.Notice;

import java.util.List;

public interface NoticeDao {

    List<Notice> findAllNotice();

    void addNotice(Notice notice);

    void deleteNotice(int id);
}
