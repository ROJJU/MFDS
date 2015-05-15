package com.kgmp.mfds.service;

import java.util.ArrayList;
import java.util.Map;

import com.kgmp.mfds.vo.FirstForm;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;

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
	String delForm(Forms formsInfo);
	String update_title(Forms forms);
	ArrayList<Forms> getCountry(String country);
	String insertFirstForms(int forms_seq);
	boolean isFirstForm(int forms_seq);
	FirstForm getFirstForm(int forms_seq);
	String insertFirstContents(FirstForm firstForm);
	StringBuffer inseretTxt(String replaceName1, String path);
}
