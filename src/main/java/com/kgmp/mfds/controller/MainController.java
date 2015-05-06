package com.kgmp.mfds.controller;



import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kgmp.mfds.service.Main_service;
import com.kgmp.mfds.vo.Notice;



@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private Main_service main_service;
	
	@RequestMapping(value = "/")
	public String home(Locale locale, 
					   Model model,
					   HttpSession session,
					   HttpServletRequest request){
		if(!request.isSecure()){
		   return "redirect:https"+request.getRequestURL().toString().replace("http", "");
		}
		session.invalidate();
		logger.info("Welcome home! The client locale is {}.", locale);
		return "/index";
	}
	
	@RequestMapping(value = "/Main.do")
    public String main(Model model){
        return "/main/MainPage";
    }
	
	@RequestMapping(value = "/About.do")
    public String about(Model model){
		return "/main/about/About_sted";
    }
	
	@RequestMapping(value = "/News.do")
    public ModelAndView news(@RequestParam(value = "page_seq", required = false, defaultValue = "1") String page_seq,
    					 	 @RequestParam(value = "news_seq", required = false, defaultValue = "1") int news_seq,
    						 @RequestParam(value = "notice_seq", required = false, defaultValue = "1") int notice_seq,
    						 @RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
	       					 @RequestParam(value = "search", required = false, defaultValue = "all") String search,
	       					 @RequestParam(value = "find", required = false, defaultValue = "") String find){
		ModelAndView mav = new ModelAndView();
		if(page_seq.equals("1")){//select list notice info
			//send parameter
			Map<String, Object> pageAll = main_service.getNews(currentPage, "/News?page_seq=1", search, find);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Notice> list = (List<Notice>)pageAll.get("list");
			mav.addObject("pageList", pageList);
			mav.addObject("list", list);
			mav.setViewName("/main/news/News");
		}else if(page_seq.equals("2")){//delete one notice info
			/*
			try{
				main_service.delNotice(notice_seq);
				msg="삭제에 성공하였습니다.";
				url="/Notice";
			}catch(Exception e){
				e.printStackTrace();
				msg="삭제에 실패하였습니다.";
				url="/News?page_seq=4&notice_seq="+notice_seq;
			}
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("/Check_proc");
			*/
		}else if(page_seq.equals("3")){//select one news info
			try{
				Notice news = main_service.getNews(news_seq);
				mav.setViewName("/main/news/News_read");
				mav.addObject("news",news);
				}catch(Exception e){
					e.printStackTrace();
				}
		}else if(page_seq.equals("4")){//select one notice info
			try{
			Notice notice = main_service.getNotice(notice_seq);
			mav.setViewName("/main/news/Notice_read");
			mav.addObject("notice", notice);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if(page_seq.equals("5")){
			/*
			mav.setViewName("/main/news/News_write");
			*/
		}else if(page_seq.equals("6")){
			/*
			mav.setViewName("/main/news/Notice_write");
			*/
		}else if(page_seq.equals("7")){//modify notice info
			/*
			mav.setViewName("/main/news/Notice_modify");
			try{
				Notice notice = main_service.getNotice(notice_seq);
				mav.addObject("notice", notice);
				}catch(Exception e){
					e.printStackTrace();
				}
			*/
		}else if(page_seq.equals("8")){//select list news info
			//send parameter
			Map<String, Object> pageAll = main_service.getNotice(currentPage, "/News?page_seq=8", search, find);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Notice> list = (List<Notice>)pageAll.get("list");
			mav.addObject("pageList", pageList);
			mav.addObject("list", list);
			mav.setViewName("/main/news/Notice");
		}else if(page_seq.equals("9")){//modify notice info
			/*
			mav.setViewName("/main/news/News_modify");
			try{
				Notice news = main_service.getNews(news_seq);
				mav.addObject("news", news);
				}catch(Exception e){
					e.printStackTrace();
				}
			*/
		}else if(page_seq.equals("10")){
			/*
			try{
				main_service.delNews(news_seq);
				msg="삭제에 성공하였습니다.";
				url="/News?page_seq=1";
			}catch(Exception e){
				e.printStackTrace();
				msg="삭제에 실패하였습니다.";
				url="/News?page_seq=3&notice_seq="+news_seq;
			}
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("/Check_proc");
			*/
		}
		return mav;
    }
	
	@RequestMapping(value = "/Support.do")
    public String support(Model model,
			@RequestParam(value = "page_seq", required = false, defaultValue = "1") String page_seq){
		String url=null;
		if(page_seq.equals("2")){
			url= "/main/support/FAQ";
		}else if(page_seq.equals("1")){
			url= "/main/support/User_guide";
		}else if(page_seq.equals("3")){
			url= "/main/support/Pdf_view";
		}else if(page_seq.equals("4")){
			url= "/main/support/Pdf_ebook";
		}
		return url;
    }
}
