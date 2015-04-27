package com.kgmp.mfds.service;

import java.util.Map;

import com.kgmp.mfds.vo.Admin;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;

public interface Admin_service {
	Map<String, Object> getPayment(int currentPage, String linkURL, String search, String find);
	Forms getForms(int forms_seq);
	Map<String, Object> getMember(int currentPage, String linkURL, String search, String find);
	Member selectMember(int member_seq);
	Map<String, Object> getHelp(int currentPage, String linkURL, String search, String find);
	String updateAdminState(Forms forms);
	boolean isLogin(Admin admin);
	Admin loginCheck(Admin admin);
	String adminModify(Admin admin);
	Admin adminInfo();
	Forms paymentgetForms(int forms_seq);
	Forms getHelpContents(int forms_seq);
	Forms adminGetForms(Forms formInfo);
}
