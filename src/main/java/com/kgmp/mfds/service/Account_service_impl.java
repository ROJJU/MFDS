package com.kgmp.mfds.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgmp.mfds.dao.Account_dao;
import com.kgmp.mfds.vo.Forms;

@Service
public class Account_service_impl implements Account_service{
	@Autowired
	private Account_dao account_dao;
	
	public int randomNum(){
		int num=0;
		num=(int)(Math.random()*100000) +1;
		return num;
	}
	
	public List<Forms> selectFormList(Forms form){
		List<Forms> forms=null;
		try{
			forms=account_dao.selectFormList(form);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
	
	public List<Forms> selectFormSchedule(Forms form){
		List<Forms> forms=null;
		try{
			forms=account_dao.selectFormSchedule(form);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
	
	public int countAll(Forms form){
		int countAll =0;
		try{
			countAll=account_dao.countAll(form);
		}catch(Exception e){
			e.printStackTrace();
		}
		return countAll;
	}
	
	public int countIng(Forms form){
		int countAll =0;
		try{
			countAll=account_dao.countIng(form);
		}catch(Exception e){
			e.printStackTrace();
		}
		return countAll;
	}
	
	public int countDone(Forms form){
		int countAll =0;
		try{
			countAll=account_dao.countDone(form);
		}catch(Exception e){
			e.printStackTrace();
		}
		return countAll;
	}
	
	public Forms getForms(int forms_seq){
		Forms forms=null;
		try{
			forms=account_dao.getForms(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
	
	public Forms popupgetForms(int forms_seq){
		Forms forms=null;
		try{
			forms=account_dao.popupgetForms(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
	
	public Forms getScheduleForms(Forms form){
		Forms forms=null;
		try{
			forms=account_dao.getScheduleForms(form);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
	
	public Map<String, Object> selectPayment(int currentPage, String linkURL, String search, String find, String id1, String id2, String id3, String email1, String email2){
		Map<String, Object> pageAll = new HashMap<String, Object>();
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("search", search);
		info.put("find", find);
		info.put("id1", id1);
		info.put("id2", id2);
		info.put("id3", id3);
		info.put("email1", email1);
		info.put("email2", email2);
		
		int bundlePage = 10;
		int bundlePosts = 15;

		try {
			int totalPostsQty = 0;
				totalPostsQty = account_dao.getPaymentQty(info);
				System.out.println(totalPostsQty);
			
			//setting
			int totalPageQty = ((totalPostsQty-1)/bundlePosts)+1;
			int startPage = ((currentPage-1)/bundlePage)*bundlePage+1;
			int endPage = (((startPage-1)+bundlePage)/bundlePage)*bundlePage;
			int startNum = (currentPage*bundlePosts)-(bundlePosts-1);
			int endNum = currentPage*bundlePosts;
			info.put("startNum", startNum);
			info.put("endNum", endNum);
			
			int linkPage = 0;
			String pageList = "";
			String btn1 = "/resources/img/forms/back.gif";//image <<
			String btn2 = "/resources/img/forms/next.gif";//image>>
			
			//<<button setting
			if(currentPage > 1){
				linkPage = currentPage-1; 
				pageList = "<a href='" + linkURL + "&currentPage=" + linkPage + "&search=" + search + "&find=" + find +"'><input type='image' src = "+btn1+">&nbsp;&nbsp;</a>";
			}else{
				pageList = "<a href='#'><input type='image' src = "+btn1+">&nbsp;&nbsp;</a>";
			}
			
			//number setting
			linkPage = startPage;
			while(linkPage <= endPage){
				if(linkPage == currentPage)
					pageList += "&nbsp;<b  style='color:red; text-decoration:underline;'>" + currentPage + "</b>&nbsp;";
				else
					pageList += "<a href='" + linkURL + "&currentPage=" + linkPage +"&search=" + search + "&find=" + find + "'>&nbsp;" + linkPage + "&nbsp;</a>";
				
				linkPage++;
				
				if(linkPage > totalPageQty)
					break;
			}
			
			//>>button setting
			if(currentPage < totalPageQty){
				linkPage = currentPage+1; 
				pageList += "<a href='" + linkURL + "&currentPage=" + linkPage + "&search=" + search + "&find=" + find +"'>&nbsp;&nbsp;<img src = "+btn2+"></a>";
			}else{
				pageList += "<a href='#'>&nbsp;&nbsp;<img src = "+btn2+"></a>";
			}
			
			//print list
			List<Forms> list =null;
				list=account_dao.getPaymentList(info);
			
			pageAll.put("pageList", pageList);
			pageAll.put("list", list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pageAll;
	}
	
	public String modifyPaymetPic(Forms forms){
		String check=null;
		try{
			account_dao.modifyPaymetPic(forms);
			check="yes";
		}catch(Exception e){
			e.printStackTrace();
			check="no";
		}
		return check;
	}
	
	public List<Forms> selectTitle(Forms form){
		List<Forms> forms=null;
		try{
			forms=account_dao.selectTitle(form);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
}
