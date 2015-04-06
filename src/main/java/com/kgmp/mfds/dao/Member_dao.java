package com.kgmp.mfds.dao;

import java.util.ArrayList;
import com.kgmp.mfds.vo.Member;


public interface Member_dao{
	void insertMember(Member member);//insert db
	Member getMember(Member member);//select one member
	Member loginCheck(Member member);//login Check
	ArrayList<Member> getEmailList(Member member);//select email list
	ArrayList<Member> getPost(String post);//select post list
	Member getPassword(Member member);
	void updateMember(Member member);
}
