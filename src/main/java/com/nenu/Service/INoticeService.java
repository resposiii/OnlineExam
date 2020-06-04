package com.nenu.Service;

import com.nenu.domain.Notice;

import java.util.List;

public interface INoticeService {
    List<Notice> findAllNotice();

    void addNotice(Notice notice);
}
