package com.kgmp.mfds.dao;

import java.util.List;

import java.util.Map;

import com.kgmp.mfds.vo.Forms;

public interface Account_dao {
	List<Forms> selectFormList(Forms form);
	int countAll(Forms form);
	int countIng(Forms form);
	int countDone(Forms form);
	Forms getForms(int forms_seq);
	int getPaymentQty(Map<String, Object> info);
	List<Forms> getPaymentList(Map<String, Object> info);
	void modifyPaymetPic(Forms forms);
	List<Forms> selectFormSchedule(Forms form);
	List<Forms> selectTitle(Forms form);
	Forms getScheduleForms(int forms_seq);
}
