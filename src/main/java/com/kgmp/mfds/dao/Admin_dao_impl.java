package com.kgmp.mfds.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kgmp.mfds.vo.Admin;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;

@Repository
public class Admin_dao_impl implements Admin_dao{
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
	
	public int getPaymentQty(Map<String, Object> info){
		return (Integer) sqlSession.selectOne("getPaymentQtyAdmin", info);
	}

	@SuppressWarnings("unchecked")
	public List<Forms> getPaymentList(Map<String, Object> info){
		return sqlSession.selectList("getPaymentListAdmin", info);
	}
	
	public Forms getForms(int forms_seq){
		return (Forms) sqlSession.selectOne("getForms", forms_seq);
	}
	
	public Forms paymentgetForms(int forms_seq){
		return (Forms) sqlSession.selectOne("paymentgetForms", forms_seq);
	}
	
	@SuppressWarnings("unchecked")
	public List<Member> getMemberList(Map<String, Object> info){
		return sqlSession.selectList("getMemberListAdmin", info);
	}
	
	public int getMemberQty(Map<String, Object> info){
		return (Integer) sqlSession.selectOne("getMemberQtyAdmin", info);
	}
	
	public Member selectMember(int member_seq){
		return (Member) sqlSession.selectOne("selectMember", member_seq);
	}
	
	public int getHelpQty(Map<String, Object> info){
		return (Integer) sqlSession.selectOne("getHelpQtyAdmin", info);
	}

	@SuppressWarnings("unchecked")
	public List<Forms> getHelpList(Map<String, Object> info){
		return sqlSession.selectList("getHelpListAdmin", info);
	}
	
	public Admin loginCheck(Admin admin){
		return (Admin)sqlSession.selectOne("AdminloginCheck", admin);
	}
	
	public Admin adminInfo(){
		return (Admin)sqlSession.selectOne("adminInfo");
	}
	
}
