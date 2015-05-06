package com.kgmp.mfds.dao;

import java.util.List;
import java.util.Map;

import com.kgmp.mfds.vo.Admin;
import com.kgmp.mfds.vo.Forms;

public interface Forms_dao {
	int getProductQty(Map<String, Object> info);
	int getProductSearchQty(Map<String, Object> info);
	List<Forms> getProductList(Map<String, Object> info);
	List<Forms> getProductSearch(Map<String, Object> info);
	void insertForms(Forms forms);
	void insertContents(Forms forms);
	void updateState(Forms forms);
	void updatePayment(Forms forms);
	void updateHelp(Map<String, Object> info);
	Forms getUserForms(Forms formsInfo);
	void updateHelpState(Forms forms);
	void adminModify(Admin admin);
	void update_mix(Forms forms);
	void update_power(Forms forms);
	void updateContent1(Forms forms);
	void update_otp(Forms forms);
	void updateState2(Forms forms);
	Forms getFormsRead(Forms formsInfo);
	void delForm(Forms formsInfo);
}
