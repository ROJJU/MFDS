package com.kgmp.mfds.service;

import java.util.List;
import java.util.Map;

import com.kgmp.mfds.vo.Forms;

public interface Account_service {
	int randomNum();
	List<Forms> selectFormList(Forms form);
	int countAll(Forms form);
	int countIng(Forms form);
	int countDone(Forms form);
	Forms getForms(int forms_seq);
	Map<String, Object> selectPayment(int currentPage, String string, String search, String find, String id1, String id2, String id3, String email1, String email2);
	String modifyPaymetPic(Forms forms);
	List<Forms> selectFormSchedule(Forms form);
	List<Forms> selectTitle(Forms form);
	Forms getScheduleForms(Forms form);
}
