package com.kgmp.mfds.dao;

import java.util.List;
import java.util.Map;

import com.kgmp.mfds.vo.Admin;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;

public interface Admin_dao {
	int getPaymentQty(Map<String, Object> info);
	List<Forms> getPaymentList(Map<String, Object> info);
	Forms getForms(int forms_seq);
	int getMemberQty(Map<String, Object> info);
	List<Member> getMemberList(Map<String, Object> info);
	Member selectMember(int member_seq);
	int getHelpQty(Map<String, Object> info);
	List<Forms> getHelpList(Map<String, Object> info);
	Admin loginCheck(Admin admin);
	Admin adminInfo();
}
