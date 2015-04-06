package com.kgmp.mfds.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgmp.mfds.dao.Admin_dao;
import com.kgmp.mfds.dao.Forms_dao;
import com.kgmp.mfds.vo.Admin;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;

@Service
public class Admin_service_impl implements Admin_service{
	@Autowired
	private Admin_dao admin_dao;
	
	@Autowired
	private Forms_dao forms_dao;
	
	public Map<String, Object> getPayment(int currentPage, String linkURL, String search, String find){
		Map<String, Object> pageAll = new HashMap<String, Object>();
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("search", search);
		info.put("find", find);
		int bundlePage = 3;
		int bundlePosts = 10;

		try {
			int totalPostsQty = 0;
			totalPostsQty = admin_dao.getPaymentQty(info);
			
			
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
			list=admin_dao.getPaymentList(info);
			
			pageAll.put("pageList", pageList);
			pageAll.put("list", list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pageAll;
	}
	
	public Forms getForms(int forms_seq){
		Forms forms=null;
		try{
			forms=admin_dao.getForms(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
	
	public Map<String, Object> getMember(int currentPage, String linkURL, String search, String find){
		Map<String, Object> pageAll = new HashMap<String, Object>();
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("search", search);
		info.put("find", find);
		int bundlePage = 3;
		int bundlePosts = 10;

		try {
			int totalPostsQty = 0;
			totalPostsQty = admin_dao.getMemberQty(info);
			
			
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
			List<Member> list =null;
			list=admin_dao.getMemberList(info);
			
			pageAll.put("pageList", pageList);
			pageAll.put("list", list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pageAll;
	}
	
	public Member selectMember(int member_seq){
		Member member = null;
		try{
			member=admin_dao.selectMember(member_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		return member;
	}
	
	public Map<String, Object> getHelp(int currentPage, String linkURL, String search, String find){
		Map<String, Object> pageAll = new HashMap<String, Object>();
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("search", search);
		info.put("find", find);
		int bundlePage = 3;
		int bundlePosts = 10;

		try {
			int totalPostsQty = 0;
			totalPostsQty = admin_dao.getHelpQty(info);
			
			
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
			list=admin_dao.getHelpList(info);
			pageAll.put("pageList", pageList);
			pageAll.put("list", list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pageAll;
	}
	
	public String updateAdminState(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.updateState(forms);
			forms_dao.updateHelpState(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String adminModify(Admin admin){
		String check=null;
		try{
			check="yes";
			forms_dao.adminModify(admin);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public Admin loginCheck(Admin admin){
		Admin result = null;
		try{
			result=admin_dao.loginCheck(admin);
		}catch(Exception e){
			e.printStackTrace();
			result = null;
		}
		return result;
	}
	
	public boolean isLogin(Admin admin){
		return (loginCheck(admin) != null) ? true : false;
	}
	
	public Admin adminInfo(){
		Admin adminInfo = null;
		try{
			adminInfo=admin_dao.adminInfo();
		}catch(Exception e){
			e.printStackTrace();
			adminInfo = null;
		}
		return adminInfo;
	}
}
