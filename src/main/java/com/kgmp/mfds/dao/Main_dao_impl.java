package com.kgmp.mfds.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kgmp.mfds.vo.Notice;

@Repository
public class Main_dao_impl implements Main_dao{
private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
	//notice s
	public int getNoticeQty(Map<String, Object> info) {
		return (Integer) sqlSession.selectOne("getNoticeQty", info);
	}

	public int getSearchQty(Map<String, Object> info) {
		return (Integer) sqlSession.selectOne("getSearchQty", info);
	}

	@SuppressWarnings("unchecked")
	public List<Notice> getNoticeList(Map<String, Object> info) {
		return sqlSession.selectList("getNoticeList", info);
	}

	@SuppressWarnings("unchecked")
	public List<Notice> getSearch(Map<String, Object> info) {
		return sqlSession.selectList("getSearch", info);
	}
	
	public Notice getNotice(int notice_seq){
		return (Notice) sqlSession.selectOne("getNotice", notice_seq);
	}
	
	public void hitNotice(int notice_seq){
		sqlSession.update("hitNotice", notice_seq);
	}
	
	public void insertNotice(Notice notice){
		sqlSession.insert("insertNotice", notice);
	}
	
	public void delNotice(int notice_seq){
		sqlSession.delete("delNotice", notice_seq);
	}
	
	public void modifyNotice(Notice notice){
		sqlSession.update("modifyNotice", notice);
	}
	//notice e
	//news s
	public int getNewsQty(Map<String, Object> info) {
		return (Integer) sqlSession.selectOne("getNewsQty", info);
	}

	public int getNewsSearchQty(Map<String, Object> info) {
		return (Integer) sqlSession.selectOne("getNewsSearchQty", info);
	}

	@SuppressWarnings("unchecked")
	public List<Notice> getNewsList(Map<String, Object> info) {
		return sqlSession.selectList("getNewsList", info);
	}

	@SuppressWarnings("unchecked")
	public List<Notice> getNewsSearch(Map<String, Object> info) {
		return sqlSession.selectList("getNewsSearch", info);
	}
	
	public Notice getNews(int news_seq){
		return (Notice) sqlSession.selectOne("getNews", news_seq);
	}
	
	public void hitNews(int news_seq){
		sqlSession.update("hitNews", news_seq);
	}
	
	public void insertNews(Notice news){
		sqlSession.insert("insertNews", news);
	}
	
	public void delNews(int news_seq){
		sqlSession.delete("delNews", news_seq);
	}
	
	public void modifyNews(Notice news){
		sqlSession.update("modifyNews", news);
	}
	//news e
}
