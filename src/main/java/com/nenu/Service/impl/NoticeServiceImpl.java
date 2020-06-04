package com.nenu.Service.impl;

import com.nenu.Dao.NoticeDao;
import com.nenu.Service.INoticeService;
import com.nenu.domain.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("noticeService")
@Transactional
public class NoticeServiceImpl implements INoticeService {

    @Autowired
    private NoticeDao noticeDao;

    @Override
    public List<Notice> findAllNotice() {
        return noticeDao.findAllNotice();
    }

    @Override
    public void addNotice(Notice notice) {
        noticeDao.addNotice(notice);
    }
}
