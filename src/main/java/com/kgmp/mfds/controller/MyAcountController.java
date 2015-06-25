package com.kgmp.mfds.controller;


import java.io.FileNotFoundException;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kgmp.mfds.FileUpload;
import com.kgmp.mfds.service.Account_service;
import com.kgmp.mfds.service.Forms_service;
import com.kgmp.mfds.service.Member_service;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;



@Controller
public class MyAcountController{
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private Account_service account_service;
	
	@Autowired
	private Forms_service forms_service;
	
	@Autowired
	private Member_service member_service;
	
	@RequestMapping(value = "/MyPage.do")
    public ModelAndView main(Model model,
			@RequestParam(value = "page_seq", required = false, defaultValue = "1") String page_seq,
			@RequestParam(value = "year", required = false, defaultValue = "2014") String year,
			@RequestParam(value = "month", required = false, defaultValue = "12") String month,
			@RequestParam(value = "search", required = false, defaultValue = "state") String search,
			@RequestParam(value = "find", required = false, defaultValue = "") String find,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@RequestParam(value = "forms_seq", required = false, defaultValue = "1") int forms_seq,
			HttpSession session){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=null;
		if(page_seq.equals("1")){
			//setting parameter s
			Member member= new Member();
			member.setId1((String)session.getAttribute("id1"));
			member.setId2((String)session.getAttribute("id2"));
			member.setId3((String)session.getAttribute("id3"));
			member.setEmail1((String)session.getAttribute("email1"));
			member.setEmail2((String)session.getAttribute("email2"));
			//setting parameter e
			try{
				Member memberInfo = member_service.selectMember(member);
				mav.addObject("memberInfo", memberInfo);
			}catch(Exception e){
				e.printStackTrace();
			}
			mav.setViewName("/account/MyInfo");
		}else if(page_seq.equals("2")){
			//setting parameter s
			Member member= new Member();
			member.setId1((String)session.getAttribute("id1"));
			member.setId2((String)session.getAttribute("id2"));
			member.setId3((String)session.getAttribute("id3"));
			member.setEmail1((String)session.getAttribute("email1"));
			member.setEmail2((String)session.getAttribute("email2"));
			//setting parameter e
			try{
				Member memberInfo = member_service.selectMember(member);
				mav.addObject("memberInfo", memberInfo);
			}catch(Exception e){
				e.printStackTrace();
			}
			mav.setViewName("/account/MyInfo_modify");
		}else if(page_seq.equals("3")){
			String id1=(String)session.getAttribute("id1");
			String id2=(String)session.getAttribute("id2");
			String id3=(String)session.getAttribute("id3");
			String email1=(String)session.getAttribute("email1");
			String email2=(String)session.getAttribute("email2");
			Map<String, Object> pageAll = account_service.selectPayment(currentPage, "/MyPage.do?page_seq=3", search, find, id1, id2, id3, email1, email2);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Forms> list = (List<Forms>)pageAll.get("list");
			mav.addObject("list", list);
			mav.addObject("pageList", pageList);
			mav.setViewName("/account/Payment");
		}else if(page_seq.equals("4")){
			Forms forms = null;
			mav.setViewName("/forms/New_forms");
			try{
				forms=account_service.getForms(forms_seq);
			}catch(Exception e){
				e.printStackTrace();
			}
			model.addAttribute("forms", forms);
			mav.setViewName("/account/Payment_read");
		}else if(page_seq.equals("5")){
			/*관리자 페이지에 기능 이전
			Forms forms = null;
			mav.setViewName("/forms/New_forms");
			try{
				forms=account_service.getForms(forms_seq);
			}catch(Exception e){
				e.printStackTrace();
			}
			model.addAttribute("forms", forms);
			mav.setViewName("/account/Payment_write");
			*/
		}else if(page_seq.equals("6")){
			mav.setViewName("/account/Forms");
			Forms form=new Forms();
			//setting parameter s
			form.setId1((String)session.getAttribute("id1"));
			form.setId2((String)session.getAttribute("id2"));
			form.setId3((String)session.getAttribute("id3"));
			form.setEmail1((String)session.getAttribute("email1"));
			form.setEmail2((String)session.getAttribute("email2"));
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
		}else if(page_seq.equals("7")){
			System.out.println("test!!!!!!!!!!");
			mav.setViewName("/account/Schedule");
			Forms form=new Forms();
			Forms Viewinfo = null;
			//setting parameter s
			form.setId1((String)session.getAttribute("id1"));
			form.setId2((String)session.getAttribute("id2"));
			form.setId3((String)session.getAttribute("id3"));
			form.setEmail1((String)session.getAttribute("email1"));
			form.setEmail2((String)session.getAttribute("email2"));
			form.setSearch(search);
			form.setFind(find);
			form.setAdd_year(year);
			form.setAdd_month(month);
			form.setForms_seq(forms_seq);
			
			//setting parameter e
			int countAll = account_service.countAll(form);
			List<Forms> title = account_service.selectTitle(form);
			List<Forms> forms = account_service.selectFormSchedule(form);
			Viewinfo=account_service.getScheduleForms(form);
			mav.addObject("countAll", countAll);
			mav.addObject("viewInfo", Viewinfo);
			mav.addObject("list", forms);
			mav.addObject("title", title);
		}else if(page_seq.equals("8")){
			/*
			mav.setViewName("/account/Payment_write");
			*/
		}else if(page_seq.equals("9")){
			//to do
		}else if(page_seq.equals("10")){
			//setting parameter s
			Member member= new Member();
			member.setId1((String)session.getAttribute("id1"));
			member.setId2((String)session.getAttribute("id2"));
			member.setId3((String)session.getAttribute("id3"));
			member.setEmail1((String)session.getAttribute("email1"));
			member.setEmail2((String)session.getAttribute("email2"));
			//setting parameter e
			try{
				Member memberInfo = member_service.selectMember(member);
				mav.addObject("memberInfo", memberInfo);
			}catch(Exception e){
				e.printStackTrace();
			}
			mav.setViewName("/account/MyInfo_form");
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		return mav;
    }
	
	@RequestMapping(value = "/Payment.do")
    public String payment(Model model,
						  @RequestParam("forms_seq") int forms_seq){
		Forms forms = null;
		try{
			forms=account_service.popupgetForms(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("forms", forms);
		return "/account/Payment_popup";
    }
	
	@RequestMapping(value = "/condition.do")
    public ModelAndView condition(Model model,
    							  @RequestParam("forms_seq") int forms_seq){
		ModelAndView mav = new ModelAndView();
		String check=null;
		String msg=null;
		String url=null;
		if(forms_service.isFirstForm(forms_seq)){
			check="yes";
		}else{
			check=forms_service.insertFirstForms(forms_seq);
		}
		
		if(check.equals("yes")){
			msg="서류를 불러오는데 성공하였습니다.";
			url="/NewForms.do?forms_seq="+forms_seq+"&list_seq=1&contents_name=1";
		}else{
			msg="서류를 불러오는데 실패하였습니다.";
			url="/MyPage.do?page_seq=6";
		}
		mav.setViewName("/Opener_check_proc");
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		
		return mav;
    }
	
	@Autowired
	private JavaMailSender mailSender; // xml에 등록한 bean autowired
	@RequestMapping(value = "/OTP.do")
    public String otp(Model model, 
    				HttpSession session, 
    				@RequestParam("forms_seq") int forms_seq) throws FileNotFoundException, URISyntaxException {
		int num=account_service.randomNum();
		String email1=(String)session.getAttribute("email1");
		String email2=(String)session.getAttribute("email2");
		
		try{
			MimeMessage message = mailSender.createMimeMessage();
			 String test1="K-GMP@K-GMP.com";
			 String test2=email1+"@"+email2;
			 String test3="(주)한국지엠피 OTP 확인 메일";
			 String test4="<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'><html><body style='width:600px border:1px solid grey;'><div style='margin:0 auto; padding:10px; width:700px; border:1px solid grey;'><div>	<div>		<img src='http://sted.kr/resources/img/common/header_bg2.jpg' width='100%'>	</div>	<div style='background-color:#102967; color:#ffffff; height:30px;'>		&nbsp;▶ 인증번호 확인	</div></div><div><br><br>	안녕하세요. (주)한국지엠피 입니다.<br>	진행하고계신 STED 프로그램을 위한 인증번호입니다.<br>	아래의 인증번호를 입력하여 계속 진행 하실 수 있습니다.<br><br>	<b>E-MAIL :</b>	&nbsp;&nbsp;&nbsp;<h1 style='color:#303698;'>"+email1+"@"+email2+"</h1><br>	<b>인증번호 :</b>	&nbsp;&nbsp;&nbsp;<h1 style='color:#303698;'>"+num+"</h1><br><br>	그 외에 STED 이용과 관련하여 궁금하신 사항이 있으시면 <a href='#'>FAQ</a>를 확인해 보십시오.<br><br>	(주)한국지엠피<br><br><br>	<p style='color:grey;'>본 메일은 발신전용입니다. 본 메일을 임의로 위.번조하여 사용할 경우 형사처벌의 대상이 될 수 있습니다. 궁금한 사항은 <a href='mailto:K-GMP@K-GMP.COM'>K-GMP@K-GMP.COM</a>으로 문의하십시오.</p><br><div style='background-color:#102967; color:#ffffff; height:30px; text-align:right;'>Copyright ⓒ K-GMP All Right Reserved&nbsp;</div></div></div></body></html>";			 
			  message.setFrom(new InternetAddress(test1));  
			  message.addRecipient(RecipientType.TO, new InternetAddress(test2));
			  message.setSubject(test3);
			  message.setText(test4, "utf-8", "html");
			   
			 mailSender.send(message);
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("num", num);
		
		return "/account/Otp";
    }
}
