package com.kgmp.mfds.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgmp.mfds.dao.Main_dao;
import com.kgmp.mfds.vo.Notice;

@Service
public class Main_service_impl implements Main_service{
	@Autowired
	private Main_dao main_dao;

	public Map<String, Object> getNotice(int currentPage, String linkURL, String search, String find){
		Map<String, Object> pageAll = new HashMap<String, Object>();
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("search", search);
		info.put("find", find);
		int bundlePage = 3;
		int bundlePosts = 10;

		try {
			int totalPostsQty = 0;
			if(search == null || search.equals("all")){
				totalPostsQty = main_dao.getNoticeQty(info);
			}else{
				totalPostsQty =main_dao.getSearchQty(info);
			}
			
			
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
			List<Notice> list =null;
			if(search == null || search.equals("all"))
				list=main_dao.getNoticeList(info);
			else
				list=main_dao.getSearch(info);
			
			pageAll.put("pageList", pageList);
			pageAll.put("list", list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pageAll;
	}
	
	public Notice getNotice(int notice_seq){
		Notice notice=null;
		try{
			notice=main_dao.getNotice(notice_seq);
			main_dao.hitNotice(notice_seq);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return notice;
	}
	
	public String insertNotice(Notice notice){
		String check=null;
		try{
			main_dao.insertNotice(notice);
			check="yes";
		}catch(Exception e){
			e.printStackTrace();
			check="no";
		}
		return check;
	}
	
	public String delNotice(int notice_seq){
		String check=null;
		try{
			check="yes";
			main_dao.delNotice(notice_seq);
		}catch(Exception e) {
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String modifyNotice(Notice notice){
		String check;
		try{
			main_dao.modifyNotice(notice);
			check="yes";
		}catch(Exception e){
			e.printStackTrace();
			check="no";
		}
		return check;
	}
	///////////////////////////////////////////////////////////////////////////////news s//////////////////////////////////////////////////////////////////////////////
	public Map<String, Object> getNews(int currentPage, String linkURL, String search, String find){
		Map<String, Object> pageAll = new HashMap<String, Object>();
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("search", search);
		info.put("find", find);
		int bundlePage = 3;
		int bundlePosts = 10;

		try {
			int totalPostsQty = 0;
			if(search == null || search.equals("all")){
				totalPostsQty = main_dao.getNewsQty(info);
			}else{
				totalPostsQty =main_dao.getNewsSearchQty(info);
			}
			
			
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
			List<Notice> list =null;
			if(search == null || search.equals("all"))
				list=main_dao.getNewsList(info);
			else
				list=main_dao.getNewsSearch(info);
			
			pageAll.put("pageList", pageList);
			pageAll.put("list", list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pageAll;
	}

	public Notice getNews(int news_seq){
		Notice news=null;
		try{
			news=main_dao.getNews(news_seq);
			main_dao.hitNews(news_seq);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return news;
	}
	
	public String insertNews(Notice news){
		String check=null;
		try{
			main_dao.insertNews(news);
			check="yes";
		}catch(Exception e){
			e.printStackTrace();
			check="no";
		}
		return check;
	}
	
	public String modifyNews(Notice news){
		String check=null;
		try{
			main_dao.modifyNews(news);
			check="yes";
		}catch(Exception e){
			e.printStackTrace();
			check="no";
		}
		return check;
	}
	
	public String delNews(int news_seq){
		String check=null;
		try{
			main_dao.delNews(news_seq);
			check="yes";
		}catch(Exception e) {
			e.printStackTrace();
			check="no";
		}
		return check;
	}
}
