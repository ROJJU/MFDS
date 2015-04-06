package com.kgmp.mfds.service;

import java.util.Map;

import com.kgmp.mfds.vo.Notice;

public interface Main_service{
	Map<String, Object> getNotice(int currentPage, String string, String search, String find);//select notice list
	Notice getNotice(int notice_seq); //select one notice
	String insertNotice(Notice notice);//insert notice
	String delNotice(int notice_seq);//delete notice
	String modifyNotice(Notice notice);//modify notice
	Map<String, Object> getNews(int currentPage, String string, String search, String find);//select news list
	Notice getNews(int news_seq);//select one news
	String insertNews(Notice notice);
	String modifyNews(Notice notice);
	String delNews(int news_seq);
}
