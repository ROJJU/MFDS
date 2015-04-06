package com.kgmp.mfds.service;

import java.util.ArrayList;




import com.kgmp.mfds.vo.Member;

public interface Member_service {
	String insertMember(Member member);//insert test
	boolean isMember(Member member);//check joined or not
	Member getMember(Member member);//check join proc
	boolean isLogin(Member member);//check login info
	Member loginCheck(Member member);//check login proc
	Member selectMember(Member member);//select one member
	ArrayList<Member> getEmailList(Member member);//select email list
	Member getPassword(Member member);//select member
	ArrayList<Member> getPost(String post);//select post list
	String updatetMember(Member member);
}
