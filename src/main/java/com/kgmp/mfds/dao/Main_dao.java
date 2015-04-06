package com.kgmp.mfds.dao;

import java.util.List;
import java.util.Map;

import com.kgmp.mfds.vo.Notice;

public interface Main_dao {
	int getNoticeQty(Map<String, Object> info);
	int getSearchQty(Map<String, Object> info);
	List<Notice> getNoticeList(Map<String, Object> info);
	List<Notice> getSearch(Map<String, Object> info);
	Notice getNotice(int notice_seq);
	void hitNotice(int notice_seq);
	void insertNotice(Notice notice);
	void delNotice(int notice_seq);
	void modifyNotice(Notice notice);
	int getNewsQty(Map<String, Object> info);
	int getNewsSearchQty(Map<String, Object> info);
	List<Notice> getNewsList(Map<String, Object> info);
	List<Notice> getNewsSearch(Map<String, Object> info);
	Notice getNews(int news_seq);
	void hitNews(int news_seq);
	void insertNews(Notice news);
	void modifyNews(Notice news);
	void delNews(int news_seq);
}
