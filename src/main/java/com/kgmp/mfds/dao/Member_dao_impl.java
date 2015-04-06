package com.kgmp.mfds.dao;

import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kgmp.mfds.vo.Member;


@Repository
public class Member_dao_impl implements Member_dao{
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

	public void insertMember(Member member){
		sqlSession.insert("member_mapper.insertMember", member);
	}
	
	public void updateMember(Member member){
		sqlSession.update("updateMember", member);
	}
	
	public Member getMember(Member member){
		return (Member)sqlSession.selectOne("getMember", member);
	}
	
	public Member loginCheck(Member member){
		return (Member)sqlSession.selectOne("loginCheck", member);
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Member> getEmailList(Member member){
		return (ArrayList<Member>) sqlSession.selectList("getEmailList", member);
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Member> getPost(String post){
		return (ArrayList<Member>) sqlSession.selectList("getPost", post);
	}
	
	public Member getPassword(Member member){
		return (Member)sqlSession.selectOne("getPassword", member);
	}

}
