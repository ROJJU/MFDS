package com.kgmp.mfds.controller;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kgmp.mfds.FileUpload;
import com.kgmp.mfds.service.Account_service;
import com.kgmp.mfds.service.Admin_service;
import com.kgmp.mfds.service.Forms_service;
import com.kgmp.mfds.service.Main_service;
import com.kgmp.mfds.service.Member_service;
import com.kgmp.mfds.vo.Admin;
import com.kgmp.mfds.vo.FirstForm;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;
import com.kgmp.mfds.vo.Notice;


@Controller
public class AdminController {
	
	@Autowired
	private Main_service main_service;
	
	@Autowired
	private Forms_service forms_service;
	
	@Autowired
	private Account_service account_service;
	
	@Autowired
	private Admin_service admin_service;
	
	@Autowired
	private Member_service member_service;
	
	@RequestMapping(value = "/AdminLogin.do")
    public String adminLogin(Model model){
        return "/admin/Admin_Login";
    }
	@RequestMapping(value = "/Admin.do")
    public ModelAndView admin(Model model){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/index");
        return mav;
    }
	
	
	@RequestMapping(value = "/Basic.do")
    public ModelAndView basic(Model model){
		ModelAndView mav = new ModelAndView();
		Admin adminInfo = null;
		adminInfo=admin_service.adminInfo();
		mav.addObject("adminInfo", adminInfo);
		mav.setViewName("/admin/Basic");
        return mav;
    }
	
	@RequestMapping(value = "/AdminNews.do")
    public ModelAndView news(@RequestParam(value = "page_seq", required = false, defaultValue = "1") String page_seq,
    					 	 @RequestParam(value = "news_seq", required = false, defaultValue = "1") int news_seq,
    						 @RequestParam(value = "notice_seq", required = false, defaultValue = "1") int notice_seq,
    						 @RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
	       					 @RequestParam(value = "search", required = false, defaultValue = "all") String search,
	       					 @RequestParam(value = "find", required = false, defaultValue = "") String find,
	       					 @RequestParam(value = "side_seq", required = false, defaultValue = "0") String side_seq,
	       					 HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		String url=null;
		String msg=null;
		String check=null;
		if(page_seq.equals("1")){//select list notice info
			//send parameter
			Map<String, Object> pageAll = main_service.getNews(currentPage, "/AdminNews.do?page_seq=1", search, find);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Notice> list = (List<Notice>)pageAll.get("list");
			mav.addObject("pageList", pageList);
			mav.addObject("list", list);
			mav.setViewName("/admin/newsRoom/News_view");
		}else if(page_seq.equals("2")){//delete one notice info
			try{
				Notice notice = main_service.getNotice(notice_seq);
				String fileName=notice.getN_file();
				check = main_service.delNotice(notice_seq);
				if(check.equals("yes")){
					msg="삭제에 성공하였습니다.";
					//del file s		
					String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/notice/"+fileName;
					File f = new File(fileDir);
					if( f.exists()) f.delete();
					//del file e
					url="/AdminNews.do?page_seq=8&side_seq=1";	
				}else{
					msg="삭제에 실패하였습니다.";
					url="/AdminNews.do?page_seq=4&side_seq=1&notice_seq="+notice_seq;
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("/Check_proc");
		}else if(page_seq.equals("3")){//select one news info
			try{
				Notice news = main_service.getNews(news_seq);
				mav.setViewName("/admin/newsRoom/News_read");
				mav.addObject("news",news);
				}catch(Exception e){
					e.printStackTrace();
				}
		}else if(page_seq.equals("4")){//select one notice info
			try{
			Notice notice = main_service.getNotice(notice_seq);
			mav.setViewName("/admin/newsRoom/Notice_read");
			mav.addObject("notice", notice);
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if(page_seq.equals("5")){
			mav.setViewName("/admin/newsRoom/News_write");
		}else if(page_seq.equals("6")){
			mav.setViewName("/admin/newsRoom/Notice_write");
		}else if(page_seq.equals("7")){//modify notice info
			mav.setViewName("/admin/newsRoom/Notice_modify");
			try{
				Notice notice = main_service.getNotice(notice_seq);
				mav.addObject("notice", notice);
				}catch(Exception e){
					e.printStackTrace();
				}
		}else if(page_seq.equals("8")){//select list news info
			//send parameter
			Map<String, Object> pageAll = main_service.getNotice(currentPage, "/AdminNews.do?page_seq=8&side_seq=1", search, find);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Notice> list = (List<Notice>)pageAll.get("list");
			mav.addObject("pageList", pageList);
			mav.addObject("list", list);
			mav.setViewName("/admin/newsRoom/Notice_view");
		}else if(page_seq.equals("9")){//modify notice info
			mav.setViewName("/admin/newsRoom/News_modify");
			try{
				Notice news = main_service.getNews(news_seq);
				mav.addObject("news", news);
				}catch(Exception e){
					e.printStackTrace();
				}
		}else if(page_seq.equals("10")){
			try{
				Notice news = main_service.getNews(news_seq);
				String fileName=news.getN_file();
				System.out.println(fileName);
				check=main_service.delNews(news_seq);
				if(check.equals("yes")){
					msg="삭제에 성공하였습니다.";
					//del file s		
					String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/news/"+fileName;
					File f = new File(fileDir);
					if( f.exists()) f.delete();
					//del file e
					url="/AdminNews.do?page_seq=1";
				}else{
					msg="삭제에 실패하였습니다.";
					url="/AdminNews.do?page_seq=3&notice_seq="+news_seq;
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			mav.addObject("msg", msg);
			mav.addObject("url", url);
			mav.setViewName("/Check_proc");
		}
		return mav;
    }
	
	@RequestMapping(value = "/NewsProc.do")
    public String insertNews(Model model,
    						   @RequestParam("title") String title,
    						   @RequestParam("n_file") MultipartFile n_file,
    						   @RequestParam("content") String content,
    						   @RequestParam("writer") String writer){
		//file upload s
		String replaceName=null;
			try{
			 MultipartFile file = n_file;   //file name.
			  Calendar cal = Calendar.getInstance();
			  String fileName = file.getOriginalFilename();
			  if(fileName.equals("")||fileName.equals(null)){
					System.out.println("file null");
				}else{
					System.out.println("file not null");
				  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
				  replaceName = cal.getTimeInMillis() + fileType;  //change file name
				  String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/news";
				  FileUpload.fileUpload(file, path, replaceName);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		//file upload e
		//setting parameter s
		Notice notice = new Notice();
		notice.setTitle(title);
		notice.setN_file(replaceName);
		notice.setContent(content);
		notice.setWriter(writer);
		//setting parameter e
		String url=null;
		String msg=null;
		String check=null;
		try{
			check=main_service.insertNews(notice);
			if(check.equals("yes")){
				msg="저장 성공 하였습니다.";
				url="/AdminNews.do?page_seq=1&side_seq=0";
			}else{
				msg="저장 실패 하였습니다.";
				//del file s		
				String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/news/"+replaceName;
				File f = new File(fileDir);
				if( f.exists()) f.delete();
				//del file e
				url="/AdminNews.do?page_seq=1&side_seq=0";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/Check_proc";
    }
	
	@RequestMapping(value = "/NoticeProc.do")
    public String insertNotice(Model model,
    						   @RequestParam("title") String title,
    						   @RequestParam("n_file") MultipartFile n_file,
    						   @RequestParam("content") String content,
    						   @RequestParam("writer") String writer){
		//file upload s
		String replaceName=null;
			try{
			 MultipartFile file = n_file;   //file name.
			  Calendar cal = Calendar.getInstance();
			  String fileName = file.getOriginalFilename();
			  if(fileName.equals("")||fileName.equals(null)){
					System.out.println("file null");
				}else{
					System.out.println("file not null");
				  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
				  replaceName = cal.getTimeInMillis() + fileType;  //change file name
				  String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/notice";
				  FileUpload.fileUpload(file, path, replaceName);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		//file upload e
		//setting parameter s
		Notice notice = new Notice();
		notice.setTitle(title);
		notice.setN_file(replaceName);
		notice.setContent(content);
		notice.setWriter(writer);
		//setting parameter e
		String url=null;
		String msg=null;
		String check=null;
		try{
			check=main_service.insertNotice(notice);
			if(check.equals("yes")){
				msg="저장 성공 하였습니다.";
				url="/AdminNews.do?page_seq=8&side_seq=1";
			}else{
				msg="저장 실패 하였습니다.";
				//del file s		
				String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/notice/"+replaceName;
				File f = new File(fileDir);
				if( f.exists()) f.delete();
				//del file e
				url="/AdminNews.do?page_seq=8&side_seq=1";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/Check_proc";
    }
	
	@RequestMapping(value = "/NewsModifyProc.do")
    public String modifyNews(Model model,
    						   @RequestParam("title") String title,
    						   @RequestParam("n_file") MultipartFile n_file,
    						   @RequestParam("content") String content,
    						   @RequestParam("writer") String writer,
    						   @RequestParam("n_file_old") String n_file_old,
    						   @RequestParam("news_seq") int news_seq){
		//file upload s
		String replaceName=null;
			try{
				 MultipartFile file = n_file;   //file name.
				  Calendar cal = Calendar.getInstance();
				  String fileName = file.getOriginalFilename();
				  if(fileName.equals("")||fileName.equals(null)){
						System.out.println("file null");
						if(n_file_old.equals("")||n_file_old.equals(null)){
							replaceName=null;
						}else{
							replaceName=n_file_old;
						}
					}else{
						System.out.println("file not null");
					  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
					  replaceName = cal.getTimeInMillis() + fileType;  //change file name
					  String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/news";
					  FileUpload.fileUpload(file, path, replaceName);
					  	//del file s		
						String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/news/"+n_file_old;
						File f = new File(fileDir);
						if( f.exists()) f.delete();
						//del file e
					}
				}catch(Exception e){
					e.printStackTrace();
				}
		//file upload e
		//setting parameter s
		Notice notice = new Notice();
		notice.setTitle(title);
		notice.setN_file(replaceName);
		notice.setContent(content);
		notice.setWriter(writer);
		notice.setNews_seq(news_seq);
		//setting parameter e
		String url=null;
		String msg=null;
		String check=null;
		try{
			check=main_service.modifyNews(notice);
			if(check.equals("yes")){
				msg="수정 성공 하였습니다.";
				url="/AdminNews.do?page_seq=1&side_seq=0";
			}else{
				msg="수정 실패 하였습니다.";
				url="/AdminNews.do?page_seq=9&side_seq=0&news_seq="+news_seq;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/Check_proc";
    }
	
	@RequestMapping(value = "/NoticeModifyProc.do")
    public String modifyNotice(Model model,
    						   @RequestParam("title") String title,
    						   @RequestParam("n_file") MultipartFile n_file,
    						   @RequestParam("content") String content,
    						   @RequestParam("writer") String writer,
    						   @RequestParam("n_file_old") String n_file_old,
    						   @RequestParam("notice_seq") int notice_seq){
		//file upload s
		String replaceName=null;
			try{
				 MultipartFile file = n_file;   //file name.
				  Calendar cal = Calendar.getInstance();
				  String fileName = file.getOriginalFilename();
				  if(fileName.equals("")||fileName.equals(null)){
						System.out.println("file null");
						if(n_file_old.equals("")||n_file_old.equals(null)){
							replaceName=null;
						}else{
							replaceName=n_file_old;
						}
					}else{
						System.out.println("file not null");
					  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
					  replaceName = cal.getTimeInMillis() + fileType;  //change file name
					  String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/notice";
					  FileUpload.fileUpload(file, path, replaceName);
						//del file s		
						String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/notice/"+n_file_old;
						File f = new File(fileDir);
						if( f.exists()) f.delete();
						//del file e
					}
				}catch(Exception e){
					e.printStackTrace();
				}
		//file upload e
		//setting parameter s
		Notice notice = new Notice();
		notice.setTitle(title);
		notice.setN_file(replaceName);
		notice.setContent(content);
		notice.setWriter(writer);
		notice.setNotice_seq(notice_seq);
		//setting parameter e
		String url=null;
		String msg=null;
		String check=null;
		try{
			check=main_service.modifyNotice(notice);
			if(check.equals("yes")){
				msg="수정 성공 하였습니다.";
				url="/AdminNews.do?page_seq=8&side_seq=1";
			}else{
				msg="수정 실패 하였습니다.";
				url="/AdminNews.do?page_seq=6&side_seq=1";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/Check_proc";
    }
	
	@RequestMapping(value = "/AdminPayment.do")
    public ModelAndView payment(Model model,
    					@RequestParam(value = "page_seq", required = false, defaultValue = "0") String page_seq,
    					@RequestParam(value = "side_seq", required = false, defaultValue = "0") String side_seq,
    					@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
      					@RequestParam(value = "search", required = false, defaultValue = "payment") String search,
      					@RequestParam(value = "find", required = false, defaultValue = "2") String find,
      					@RequestParam(value = "forms_seq", required = false, defaultValue = "1") int forms_seq){
		ModelAndView mav = new ModelAndView();
		if(page_seq.equals("11")){
			mav.setViewName("/admin/payment/payment_view");
			//send parameter
			Map<String, Object> pageAll = admin_service.getPayment(currentPage, "/AdminPayment.do?page_seq=11", search, find);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Notice> list = (List<Notice>)pageAll.get("list");
			mav.addObject("pageList", pageList);
			mav.addObject("list", list);
		}else if(page_seq.equals("12")){
			Forms forms = null;
			try{
				forms=admin_service.paymentgetForms(forms_seq);
			}catch(Exception e){
				e.printStackTrace();
			}
			model.addAttribute("forms", forms);
			mav.setViewName("/admin/payment/payment_read");
		}else if(page_seq.equals("13")){
			Forms forms = null;
			try{
				forms=admin_service.paymentgetForms(forms_seq);
			}catch(Exception e){
				e.printStackTrace();
			}
			model.addAttribute("forms", forms);
			mav.setViewName("/admin/payment/payment_write");
		}
        return mav;
    }
	
	@RequestMapping(value = "/PaymentProc.do")
    public String payment_pic(Model model,
						  @RequestParam("forms_seq") int forms_seq,
						  @RequestParam("payment_pic") MultipartFile payment_pic){
		Forms formsInfo = null;
		formsInfo=admin_service.paymentgetForms(forms_seq);
		String payment_pic_old=formsInfo.getPayment_pic();
		//file upload s
		String replaceName=null;
			try{
			 MultipartFile file = payment_pic;   //file name.
			  Calendar cal = Calendar.getInstance();
			  String fileName = file.getOriginalFilename();
			  if(fileName.equals("")||fileName.equals(null)){
					System.out.println("file null");
				}else{
				  System.out.println("file not null");
				  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
				  replaceName = cal.getTimeInMillis() + fileType;  //change file name
				  String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/payment";
				  FileUpload.fileUpload(file, path, replaceName);
				//del file s		
					String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/payment/"+payment_pic_old;
					File f = new File(fileDir);
					if( f.exists()) f.delete();
				//del file e
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		//file upload e
		//setting parameter s
		Forms forms = new Forms();	
		forms.setPayment_pic(replaceName);
		forms.setForms_seq(forms_seq);
		String url=null;
		String msg=null;
		String check=null;
		//setting parameter e
		try{
			check=account_service.modifyPaymetPic(forms);
			if(check.equals("yes")){
				msg="저장 성공 하였습니다.";
				url="/AdminPayment.do?page_seq=11&side_seq=1&search=payment&find=3";
			}else{
				msg="저장 실패 하였습니다.";
				//del file s		
				String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/payment/"+replaceName;
				File f = new File(fileDir);
				if( f.exists()) f.delete();
				//del file e
				url="/AdminPayment.do?page_seq=12&side_seq=1&forms_seq="+forms_seq;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/Check_proc";
    }
	
	@RequestMapping(value = "/AdminMember.do")
    public ModelAndView member(
    					@RequestParam(value = "page_seq", required = false, defaultValue = "0") String page_seq,
    					@RequestParam(value = "side_seq", required = false, defaultValue = "0") String side_seq,
    					@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
      					@RequestParam(value = "search", required = false, defaultValue = "id1") String search,
      					@RequestParam(value = "find", required = false, defaultValue = "") String find,
      					@RequestParam(value = "member_seq", required = false, defaultValue = "1") int member_seq,
      					@RequestParam(value = "id1", required = false, defaultValue = "1") String id1,
      					@RequestParam(value = "id2", required = false, defaultValue = "1") String id2,
      					@RequestParam(value = "id3", required = false, defaultValue = "1") String id3,
      					@RequestParam(value = "email1", required = false, defaultValue = "1") String email1,
      					@RequestParam(value = "email2", required = false, defaultValue = "1") String email2,
      					@RequestParam(value = "forms_seq", required = false, defaultValue = "1") int forms_seq,
      					@RequestParam(value = "contents_name", required = false, defaultValue = "content1") String contents_name){
		ModelAndView mav = new ModelAndView();
		if(page_seq.equals("14")){
			mav.setViewName("/admin/member/member_view");
			//send parameter
			Map<String, Object> pageAll = admin_service.getMember(currentPage, "/AdminMember.do?page_seq=14", search, find);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Member> list = (List<Member>)pageAll.get("list");
			mav.addObject("pageList", pageList);
			mav.addObject("list", list);
		}else if(page_seq.equals("15")){
			Member memberInfo=null;
			memberInfo=admin_service.selectMember(member_seq);
			mav.addObject("memberInfo", memberInfo);
			mav.setViewName("/admin/member/member_read");
		}else if(page_seq.equals("16")){
			//member info!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			Member memberInfo=null;
			memberInfo=admin_service.selectMember(member_seq);
			mav.addObject("memberInfo", memberInfo);
			//member formsList!!!!!!!!!!!!!!!!!!!!!!!!!!!
			Forms form=new Forms();
			//setting parameter s
			form.setId1(id1);
			form.setId2(id2);
			form.setId3(id3);
			form.setEmail1(email1);
			form.setEmail2(email2);
			form.setSearch(search);
			form.setFind(find);
			//setting parameter e
			List<Forms> forms = account_service.selectFormList(form);
			int countAll = account_service.countAll(form);
			int countIng = account_service.countIng(form);
			int countDone = account_service.countDone(form);
			mav.addObject("countAll", countAll);
			mav.addObject("countIng", countIng);
			mav.addObject("countDone", countDone);
			mav.addObject("list", forms);
			mav.setViewName("/admin/member/member_formList");
		}else if(page_seq.equals("17")){
				Forms forms = null;
				Forms formsInfo= new Forms();
				formsInfo.setId1(id1);
				formsInfo.setId2(id2);
				formsInfo.setId3(id3);
				formsInfo.setEmail1(email1);
				formsInfo.setEmail2(email2);
				formsInfo.setForms_seq(forms_seq);
				try{
					forms=forms_service.getUserForms(formsInfo);
				}catch(Exception e){
					e.printStackTrace();
				}
				mav.addObject("forms", forms);
				mav.setViewName("/admin/member/member_formRead");
		    }
        return mav;
    }
	
	@RequestMapping(value = "/AdminHelp.do")
    public ModelAndView help(
    					@RequestParam(value = "page_seq", required = false, defaultValue = "0") String page_seq,
    					@RequestParam(value = "side_seq", required = false, defaultValue = "0") String side_seq,
    					@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
      					@RequestParam(value = "search", required = false, defaultValue = "id1") String search,
      					@RequestParam(value = "find", required = false, defaultValue = "") String find,
      					@RequestParam(value = "member_seq", required = false, defaultValue = "1") int member_seq,
      					@RequestParam(value = "id1", required = false, defaultValue = "1") String id1,
      					@RequestParam(value = "id2", required = false, defaultValue = "1") String id2,
      					@RequestParam(value = "id3", required = false, defaultValue = "1") String id3,
      					@RequestParam(value = "email1", required = false, defaultValue = "1") String email1,
      					@RequestParam(value = "email2", required = false, defaultValue = "1") String email2,
      					@RequestParam(value = "forms_seq", required = false, defaultValue = "1") int forms_seq,
      					@RequestParam(value = "list_seq", required = false, defaultValue = "1") String list_seq,
      					@RequestParam(value = "contents_name", required = false, defaultValue = "contents1") String contents_name){
		ModelAndView mav = new ModelAndView();
		if(page_seq.equals("18")){
			mav.setViewName("/admin/help/help_view");
			//send parameter
			Map<String, Object> pageAll = admin_service.getHelp(currentPage, "/AdminHelp.do?page_seq=18", search, find);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Member> list = (List<Member>)pageAll.get("list");
			mav.addObject("pageList", pageList);
			mav.addObject("list", list);
		}else if(page_seq.equals("19")){
			Forms forms = null;
			forms=admin_service.getHelpContents(forms_seq);
			mav.addObject("forms", forms);
			mav.setViewName("/admin/help/help_read");
		}else if(page_seq.equals("20")){
			Forms forms = null;
			Forms formInfo = new Forms();
			FirstForm firstForm = null;
			formInfo.setForms_seq(forms_seq);
			formInfo.setContents_name(contents_name);
			firstForm = forms_service.getFirstForm(forms_seq);
			forms=admin_service.adminGetForms(formInfo);
				//setting parameter s
				Member member= new Member();
				member.setId1(forms.getId1());
				member.setId2(forms.getId2());
				member.setId3(forms.getId3());
				member.setEmail1(forms.getEmail1());
				member.setEmail2(forms.getEmail2());
				//setting parameter e
				try{
					Member memberInfo = member_service.selectMember(member);
					mav.addObject("memberInfo", memberInfo);
				}catch(Exception e){
					e.printStackTrace();
				}
			mav.addObject("firstForm", firstForm);
			mav.addObject("list_seq", list_seq);
			mav.addObject("forms", forms);
			mav.setViewName("/admin/help/help_modidfy");
		}else if(page_seq.equals("21")){
				Forms forms = null;
				Forms formsInfo= new Forms();
				formsInfo.setId1(id1);
				formsInfo.setId2(id2);
				formsInfo.setId3(id3);
				formsInfo.setEmail1(email1);
				formsInfo.setEmail2(email2);
				formsInfo.setForms_seq(forms_seq);
				try{
					forms=forms_service.getUserForms(formsInfo);
				}catch(Exception e){
					e.printStackTrace();
				}
				mav.addObject("forms", forms);
				mav.setViewName("/admin/member/member_formRead");
		    }
        return mav;
    }
	
	@RequestMapping(value = "/FirstFormsAdminProc.do")
	public ModelAndView insertFirstForms(@RequestParam(value="forms_seq", required = false, defaultValue = "") int forms_seq,
										@RequestParam(value="birthDay", required = false, defaultValue = "") String birthDay,
										@RequestParam(value="makeCompanyName", required = false, defaultValue = "") String makeCompanyName,
										@RequestParam(value="makeAddr", required = false, defaultValue = "") String makeAddr,
										@RequestParam(value="makeCompanyNo", required = false, defaultValue = "") String makeCompanyNo,
										@RequestParam(value="makeLicenseNo", required = false, defaultValue = "") String makeLicenseNo,
										@RequestParam(value="makingOrImport", required = false, defaultValue = "") String makingOrImport,
										@RequestParam(value="divisionOfProduct", required = false, defaultValue = "") String divisionOfProduct,
										@RequestParam(value="nameOfProduct", required = false, defaultValue = "") String nameOfProduct,
										@RequestParam(value="checkForBrandName", required = false, defaultValue = "") String checkForBrandName,
										@RequestParam(value="purpose", required = false, defaultValue = "") String purpose,
										@RequestParam(value="permission", required = false, defaultValue = "") String permission,
										@RequestParam(value="requestName", required = false, defaultValue = "") String requestName,
										@RequestParam(value="country1", required = false, defaultValue = "") String country1,
										@RequestParam(value="requestPlace", required = false, defaultValue = "") String requestPlace,
										@RequestParam(value="makingName", required = false, defaultValue = "") String makingName,
										@RequestParam(value="country2", required = false, defaultValue = "") String country2,
										@RequestParam(value="makingPlace", required = false, defaultValue = "") String makingPlace,
										@RequestParam(value="disposableness", required = false, defaultValue = "") String disposableness,
										@RequestParam(value="chase", required = false, defaultValue = "") String chase,
										@RequestParam(value="etc", required = false, defaultValue = "") String etc,
										@RequestParam(value="model", required = false, defaultValue = "") String model,
										@RequestParam(value="modelFileName", required = false, defaultValue = "") MultipartFile modelFileName,
										@RequestParam(value="pakingFileNmae", required = false, defaultValue = "") MultipartFile pakingFileNmae,
										@RequestParam(value="logic_text", required = false, defaultValue = "") String logic_text,
										@RequestParam(value="shape_text", required = false, defaultValue = "") String shape_text,
										@RequestParam(value="size_text", required = false, defaultValue = "") String size_text,
										@RequestParam(value="contents_name", required = false, defaultValue = "") String contents_name,
										@RequestParam(value="p_url", required = false, defaultValue = "") String p_url,
										@RequestParam(value="file1_old", required = false, defaultValue = "") String file1_old,
										@RequestParam(value="file2_old", required = false, defaultValue = "") String file2_old,
										@RequestParam(value="ck_form", required = false, defaultValue = "") String ck_form,
										@RequestParam(value="performance_text", required = false, defaultValue = "") String performance_text){
		//file upload s modelFileName
		String replaceName1=null;
		String replaceName2=null;
		FirstForm firstFormGet = null;
		String modelFileName_old =null;
		String pakingFileNmae_old =null;
		String model_check=null;
			try{
				firstFormGet = forms_service.getFirstForm(forms_seq);
				modelFileName_old=firstFormGet.getModelFileName();
				pakingFileNmae_old=firstFormGet.getPakingFileNmae();
			}catch(Exception e){
				e.printStackTrace();
			}
			try{
			 MultipartFile file = modelFileName;   //file name.
			  Calendar cal = Calendar.getInstance();
			  String fileName = file.getOriginalFilename();
			  System.out.println("fileNmae:"+fileName);
			  if(fileName.equals("")||fileName.equals(null)){
					System.out.println("file null");
					replaceName1=modelFileName_old;
				}else{
				  System.out.println("file not null");
				  System.out.println(modelFileName_old);
				  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
				  replaceName1 = cal.getTimeInMillis() + fileType;  //change file name
				  String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/notice";
				  FileUpload.fileUpload(file, path, replaceName1);
				  try{
						//del file s		
						String fileDir = path+"/"+modelFileName_old;
						File f = new File(fileDir);
						if( f.exists()) f.delete();
						//del file e
				  }catch(Exception e){
					  e.printStackTrace();
				  }
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		//file upload e
			
		//file upload s pakingFileNmae
			try{
				 MultipartFile file = pakingFileNmae;   //file name.
				  Calendar cal = Calendar.getInstance();
				  String fileName = file.getOriginalFilename();
				  if(fileName.equals("")||fileName.equals(null)){
						System.out.println("file null");
						replaceName2=pakingFileNmae_old;
					}else{
					  System.out.println("file not null");
					  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
					  replaceName2 = cal.getTimeInMillis() + fileType;  //change file name
					  String path ="/usr/local/tomcat/webapps/ROOT/resources/img/upload/notice";
					  //String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/payment";
					  FileUpload.fileUpload(file, path, replaceName2);
					  try{
						//del file s		
						  String fileDir =path+"/"+pakingFileNmae_old;
						//String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/payment/"+pakingFileNmae_old;
						File f = new File(fileDir);
						if( f.exists())f.delete();
						//del file e
					  }catch(Exception e){
						  e.printStackTrace();
					  }
					}
				}catch(Exception e){
					e.printStackTrace();
				}
		//file upload e
		//check for model
			try{
				if(replaceName1.equals(file1_old)&&replaceName2.equals(file2_old)){
					model_check=model;
				}else{
					model_check=null;
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url="/AdminHelp.do?page_seq=20&forms_seq="+forms_seq+"&list_seq=1&contents_name=contents"+contents_name;
		FirstForm firstForm = new FirstForm();
		firstForm.setForms_ref(forms_seq);
		firstForm.setBirthDay(birthDay);
		firstForm.setChase(chase);
		firstForm.setCheckForBrandName(checkForBrandName);
		firstForm.setCountry1(country1);
		firstForm.setCountry2(country2);
		firstForm.setDisposableness(disposableness);
		firstForm.setDivisionOfProduct(divisionOfProduct);
		firstForm.setEtc(etc);
		firstForm.setLogic_text(logic_text);
		firstForm.setMakeAddr(makeAddr);
		firstForm.setMakeCompanyName(makeCompanyName);
		firstForm.setMakeCompanyNo(makeCompanyNo);
		firstForm.setMakeLicenseNo(makeLicenseNo);
		firstForm.setMakingName(makingName);
		firstForm.setMakingOrImport(makingOrImport);
		firstForm.setMakingPlace(makingPlace);
		firstForm.setModel(model_check);
		firstForm.setModelFileName(replaceName1);
		firstForm.setNameOfProduct(nameOfProduct);
		firstForm.setPakingFileNmae(replaceName2);
		firstForm.setPermission(permission);
		firstForm.setPurpose(purpose);
		firstForm.setRequestName(requestName);
		firstForm.setRequestPlace(requestPlace);
		firstForm.setShape_text(shape_text);
		firstForm.setSize_text(size_text);
		firstForm.setPerformance_text(performance_text);
		System.out.println("makingName:"+makingName);
		String check=null;
		try{
			check=forms_service.insertFirstContents(firstForm);
			if(check.equals("yes")){
				Forms forms = new Forms();
				String finalCheck=null;
				forms.setForms_seq(forms_seq);
				forms.setContents(null);
				forms.setContents_name("contents"+contents_name);
				forms.setck_form(ck_form);
				/*
					if(firstForm.getLogic_text().equals(null)||firstForm.getLogic_text().equals("")){
						Forms formsForReset = new Forms();
						formsForReset.setForms_seq(forms_seq);
						formsForReset.setContents(null);
						formsForReset.setContents_name("contents10");
						formsForReset.setck_form("ck_form10");
						formsForReset.setList_seq("2");
						forms_service.resetContents(formsForReset);
					}
					if(firstForm.getShape_text().equals(null)||firstForm.getShape_text().equals("")){
						Forms formsForReset2 = new Forms();
						formsForReset2.setForms_seq(forms_seq);
						formsForReset2.setContents(null);
						formsForReset2.setContents_name("contents11");
						formsForReset2.setck_form("ck_form11");
						formsForReset2.setList_seq("2");
						forms_service.resetContents(formsForReset2);
					}
					if(firstForm.getSize_text().equals(null)||firstForm.getSize_text().equals("")){
						Forms formsForReset3 = new Forms();
						formsForReset3.setForms_seq(forms_seq);
						formsForReset3.setContents(null);
						formsForReset3.setContents_name("contents12");
						formsForReset3.setck_form("ck_form12");
						formsForReset3.setList_seq("2");
						forms_service.resetContents(formsForReset3);
					}
					if(firstForm.getPerformance_text().equals(null)||firstForm.getPerformance_text().equals("")){
						Forms formsForReset4 = new Forms();
						formsForReset4.setForms_seq(forms_seq);
						formsForReset4.setContents(null);
						formsForReset4.setContents_name("contents13");
						formsForReset4.setck_form("ck_form13");
						formsForReset4.setList_seq("2");
						forms_service.resetContents(formsForReset4);
					}
				*/
				finalCheck=forms_service.insertContents(forms);
				if(finalCheck.equals("yes")){
					msg="임시저장 완료하였습니다.";
				}else{
					msg="실패하였습니다.";
				}
			}else{
				msg="실패하였습니다.";
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
		return mav;
	}
	
	
	@RequestMapping(value = "/FormsAdminProc.do")
	public ModelAndView insertForms(@RequestParam("forms_seq") int forms_seq,
									@RequestParam("list_seq") int list_seq,
									@RequestParam("contents") String contents,
									@RequestParam("contents_name") String contents_name,
									@RequestParam("url") String p_url,
									@RequestParam("ck_form") String ck_form){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url="/AdminHelp.do?page_seq=20&forms_seq="+forms_seq+"&list_seq="+list_seq+"&contents_name=contents"+contents_name;
		Forms forms = new Forms();
		forms.setForms_seq(forms_seq);
		forms.setContents(contents);
		forms.setContents_name("contents"+contents_name);
		forms.setck_form(ck_form);
		String check=null;
		try{
			check=forms_service.insertContents(forms);
			if(check.equals("yes")){
				msg="성공하였습니다.";
			}else{
				msg="실패하였습니다.";
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
		return mav;
	}
	
	@RequestMapping(value = "/updateAdminStateProc.do")
	public ModelAndView updateState(@RequestParam("forms_seq") int forms_seq,
									@RequestParam("help_state") String help_state){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=null;
		Forms forms = new Forms();
		forms.setForms_seq(forms_seq);
		if(help_state.equals("1")){
		forms.setHelp_state("2");
		}else if(help_state.equals("3")){
		forms.setHelp_state("4");
		}else{
		forms.setHelp_state("4");
		}
		String check=null;
		try{
			check=admin_service.updateAdminState(forms);
			if(check.equals("yes")){
				msg="성공하였습니다.";
				url="/AdminHelp.do?page_seq=18";
			}else{
				msg="실패하였습니다.";
				url="AdminHelp.do?page_seq=20&forms_seq="+forms_seq;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
		return mav;
	}
	
	@RequestMapping(value = "/AdminLoginProc.do")
	public ModelAndView adminLogin_proc(@RequestParam("admin_userid") String id,
										@RequestParam("admin_passwd") String pw,
										HttpSession session){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=null;
		Admin admin = new Admin();
		admin.setId(id);
		admin.setPw(pw);
		try{
			if(admin_service.isLogin(admin)){
				msg="로그인 되었습니다.";
				url="/Basic.do";
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				session.setMaxInactiveInterval(60000);
			}else{
				msg="아이디 혹은 비밀번호가 잘못 되었습니다.";
				url="/AdminLogin.do";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
		return mav;
	}
	
	@RequestMapping(value = "/AdminLogOut.do", method = RequestMethod.GET)
    public String logOut(HttpSession session){
			session.invalidate();
        return "/admin/Admin_Login";
    }
	
	@RequestMapping(value = "/AdminModifyProc.do")
    public ModelAndView adminModify(@RequestParam("id") String id,
    								@RequestParam("pw") String pw,
    								HttpSession session){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=null;
		String check=null;
		Admin admin = new Admin();
		admin.setId(id);
		admin.setPw(pw);
		try{
			check=admin_service.adminModify(admin);
			if(check.equals("yes")){
				msg="성공하였습니다.";
				mav.addObject("id", id);
				mav.addObject("pw", pw);
				url="/Basic.do?page_seq=0";
			}else{
				msg="실패하였습니다.";
				url="/Basic.do?page_seq=0";
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
        return mav;
    }
}
