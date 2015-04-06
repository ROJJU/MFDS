package com.kgmp.mfds.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kgmp.mfds.vo.Notice;

@Repository
public class Notice_dao_impl implements Notice_dao{
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

	public int getNoticeQty(Map<String, Object> info) {
		return (Integer) sqlSession.selectOne("notice_mapper.getNoticeQty", info);
	}

	public int getSearchQty(Map<String, Object> info) {
		return (Integer) sqlSession.selectOne("notice_mapper.getSearchQty", info);
	}

	@SuppressWarnings("unchecked")
	public List<Notice> getNoticeList(Map<String, Object> info) {
		return sqlSession.selectList("notice_mapper.getNoticeList", info);
	}

	@SuppressWarnings("unchecked")
	public List<Notice> getSearch(Map<String, Object> info) {
		return sqlSession.selectList("notice_mapper.getSearch", info);
	}

}
