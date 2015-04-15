package com.kgmp.mfds.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kgmp.mfds.vo.Forms;

@Repository
public class Account_dao_impl implements Account_dao{

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
	@SuppressWarnings("unchecked")
	public List<Forms> selectFormList(Forms form){
		return sqlSession.selectList("selectFormList", form);
	}
	
	@SuppressWarnings("unchecked")
	public List<Forms> selectFormSchedule(Forms form){
		return sqlSession.selectList("selectFormSchedule", form);
	}
	
	public int countAll(Forms form){
		return (Integer) sqlSession.selectOne("countAll", form);
	}
	
	public int countIng(Forms form){
		return (Integer) sqlSession.selectOne("countIng", form);
	}
	
	public int countDone(Forms form){
		return (Integer) sqlSession.selectOne("countDone", form);
	}
	
	public Forms getForms(int forms_seq){
		return (Forms) sqlSession.selectOne("getForms", forms_seq);
	}
	
	public Forms getScheduleForms(Forms form){
		return (Forms) sqlSession.selectOne("getScheduleForms", form);
	}
	
	public int getPaymentQty(Map<String, Object> info){
		return (Integer) sqlSession.selectOne("getPaymentQty", info);
	}

	@SuppressWarnings("unchecked")
	public List<Forms> getPaymentList(Map<String, Object> info){
		return sqlSession.selectList("getPaymentList", info);
	}
	
	public void modifyPaymetPic(Forms forms){
		sqlSession.update("modifyPaymetPic", forms);
	}
	
	@SuppressWarnings("unchecked")
	public List<Forms> selectTitle(Forms form){
		return sqlSession.selectList("selectTitle", form);
	}
}
