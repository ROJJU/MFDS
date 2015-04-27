package com.kgmp.mfds.service;

import java.util.Map;

import com.kgmp.mfds.vo.Forms;

public interface Forms_service {
	Map<String, Object> getProducts(int currentPage, String string,	String search, String find, String list_seq);
	String insertForms(Forms forms);
	String insertContents(Forms forms);
	String updateState(Forms forms);
	String updatePayment(Forms forms);
	String updateHelp(Map<String, Object> info);
	Forms getUserForms(Forms formsInfo);
	String update_mix(Forms forms);
	String update_power(Forms forms);
	void updateContent1(Forms forms);
	String update_otp(Forms forms);
	String updateState2(Forms forms);
	Forms getFormsRead(Forms formsInfo);
}
