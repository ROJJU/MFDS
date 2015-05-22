package com.kgmp.mfds.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kgmp.mfds.vo.Admin;
import com.kgmp.mfds.vo.FirstForm;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;


@Repository
public class Forms_dao_impl implements Forms_dao{
private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
		//product s
		public int getProductQty(Map<String, Object> info){
			return (Integer) sqlSession.selectOne("getProductQty", info);
		}

		public int getProductSearchQty(Map<String, Object> info) {
			return (Integer) sqlSession.selectOne("getProductSearchQty", info);
		}

		@SuppressWarnings("unchecked")
		public List<Forms> getProductList(Map<String, Object> info) {
			return sqlSession.selectList("getProductList", info);
		}

		@SuppressWarnings("unchecked")
		public List<Forms> getProductSearch(Map<String, Object> info) {
			return sqlSession.selectList("getProductSearch", info);
		}
		//product e
		
		public Forms getProduct(int notice_seq){
			return (Forms) sqlSession.selectOne("getNotice", notice_seq);
		}
		
		public void insertForms(Forms forms){
			sqlSession.insert("insertForms", forms);
		}
		
		public void delProduct(int notice_seq){
			sqlSession.delete("delNotice", notice_seq);
		}
		
		public void modifyProduct(Forms notice){
			sqlSession.update("modifyNotice", notice);
		}
		
		public void resetContents(Forms forms){
			sqlSession.update("resetContents", forms);
		}	
		
		public void insertContents(Forms forms){
			sqlSession.update("insertContents", forms);
		}
		
		public void insertFirstContents(FirstForm firstForm){
			sqlSession.update("insertFirstContents", firstForm);
		}
		
		public void updateState(Forms forms){
			sqlSession.update("updateState", forms);
		}
		
		public void updateState2(Forms forms){
			sqlSession.update("updateState2", forms);
		}
		
		public void updatePayment(Forms forms){
			sqlSession.update("updatePayment", forms);
		}
		
		public void updateHelp(Map<String, Object> info){
			sqlSession.update("updateHelp", info);
		}
		
		public Forms getUserForms(Forms formsInfo){
			return (Forms) sqlSession.selectOne("getUserForms", formsInfo);
		}
		
		public Forms getFormsRead(Forms formsInfo){
			return (Forms) sqlSession.selectOne("getFormsRead", formsInfo);
		}
		
		public void updateHelpState(Forms forms){
			sqlSession.update("updateHelpState", forms);
		}
		
		public void adminModify(Admin admin){
			sqlSession.update("adminModify", admin);
		}
		
		public void update_mix(Forms forms){
			sqlSession.update("update_mix", forms);
		}
		
		public void update_power(Forms forms){
			sqlSession.update("update_power", forms);
		}
		
		public void updateContent1(Forms forms){
			sqlSession.update("updateContent1", forms);
		}
		public void update_otp(Forms forms){
			sqlSession.update("update_otp", forms);
		}
		public void delForm(Forms formsInfo){
			sqlSession.delete("delForm", formsInfo);
		}
		
		public void delFirstForm(int form_seq){
			sqlSession.delete("delFirstForm", form_seq);
		}
		
		public void update_title(Forms forms){
			sqlSession.update("update_title", forms);
		}
//country
		@SuppressWarnings("unchecked")
		public ArrayList<Forms> getCountry(String country){
			return (ArrayList<Forms>) sqlSession.selectList("getCountry", country);
		}
//firstform
		public FirstForm getFirstForm(int forms_seq){
			return (FirstForm)sqlSession.selectOne("getFirstForm", forms_seq);
		}

		public void insertFirstForms(int forms_seq){
			sqlSession.insert("insertFirstForms", forms_seq);
		}
}
