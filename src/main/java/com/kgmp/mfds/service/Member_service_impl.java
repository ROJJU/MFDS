package com.kgmp.mfds.service;
import java.util.ArrayList;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgmp.mfds.dao.Member_dao;
import com.kgmp.mfds.vo.Member;

@Service
public class Member_service_impl implements Member_service{
	 @Autowired
	 private Member_dao member_dao;

	
	public String insertMember(Member member){
		String check=null;
		try{
			check="yes";
			member_dao.insertMember(member);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String updatetMember(Member member){
		String check=null;
		try{
			member_dao.updateMember(member);
			check="yes";
		}catch(Exception e){
			e.printStackTrace();
			check="no";
		}
		return check;
	}
	
	public boolean isMember(Member member){
		return (getMember(member) != null) ? true : false;
	}
	
	public Member getMember(Member member){
		Member result = null;
		try{
			result=member_dao.getMember(member);
		}catch(Exception e){
			e.printStackTrace();
			result = null;
		}
		return result;
	}
	
	public boolean isLogin(Member member){
		return (loginCheck(member) != null) ? true : false;
	}
	
	public Member loginCheck(Member member){
		Member result = null;
		try{
			result=member_dao.loginCheck(member);
		}catch(Exception e){
			e.printStackTrace();
			result = null;
		}
		return result;
	}
	
	public Member selectMember(Member member){
		Member memberInfo = null;
		try{
			memberInfo=member_dao.getMember(member);
		}catch(Exception e){
			e.printStackTrace();
		}
		return memberInfo;
	}
	
	public ArrayList<Member> getEmailList(Member member){
		return (ArrayList<Member>)member_dao.getEmailList(member);
	}
	
	public Member getPassword(Member member){
		Member memberInfo = null;
		try{
			memberInfo=member_dao.getPassword(member);
		}catch(Exception e){
			e.printStackTrace();
		}
		return memberInfo;
	}
	
	public ArrayList<Member> getPost(String post){
		return (ArrayList<Member>)member_dao.getPost(post);
	}
}