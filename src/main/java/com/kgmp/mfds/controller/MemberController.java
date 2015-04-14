package com.kgmp.mfds.controller;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kgmp.mfds.FileUpload;
import com.kgmp.mfds.service.Account_service;
import com.kgmp.mfds.service.Member_service;
import com.kgmp.mfds.vo.Member;



@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private Member_service member_service;
	
	@RequestMapping(value = "/Login.do", method = RequestMethod.GET)
    public String login(Model model){
        return "/member/Login";
    }
	
	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/LoginProc.do", method = RequestMethod.POST)
    public ModelAndView login_proc(@RequestParam("id1") String id1,
							 @RequestParam("id2") String id2,
							 @RequestParam("id3") String id3,
							 @RequestParam("email1") String email1,
							 @RequestParam("email2") String email2,
							 @RequestParam("pw_1") String pw_1,
							 @RequestParam(value = "id_rem", required = false, defaultValue = "") String id_rem,
							 HttpSession session,
							 HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		Cookie cookie1 = null;
		Cookie cookie2 = null;
		Cookie cookie3 = null;
		Cookie cookie4 = null;
		Cookie cookie5 = null;
		mav.setViewName("/member/Login");
		//setting parameter s
		Member member= new Member();
		member.setId1(id1);
		member.setId2(id2);
		member.setId3(id3);
		member.setEmail1(email1);
		member.setEmail2(email2);
		member.setPw_1(pw_1);
		//setting parameter e
			String msg=null;
			String url=null;
			try{
				if(member_service.isLogin(member)){
					msg="로그인 되었습니다.";
					url="/Main.do";
					Member memberInfo = member_service.selectMember(member);
					//setting session s
					session.setAttribute("id1", id1);
					session.setAttribute("id2", id2);
					session.setAttribute("id3", id3);
					session.setAttribute("email1", email1);
					session.setAttribute("email2", email2);
					session.setAttribute("kor_name", memberInfo.getKor_name());
					session.setMaxInactiveInterval(60000);
					//setting session e
					//setting cookie s
					if(id_rem !=null && id_rem.trim().equals("on")){
						cookie1 = new Cookie("id1", java.net.URLEncoder.encode(id1));
						cookie1.setMaxAge(60*60*24*365);//set one year
						response.addCookie(cookie1);
						cookie2 = new Cookie("id2", java.net.URLEncoder.encode(id2));
						cookie2.setMaxAge(60*60*24*365);//set one year
						response.addCookie(cookie2);
						cookie3 = new Cookie("id3", java.net.URLEncoder.encode(id3));
						cookie3.setMaxAge(60*60*24*365);//set one year
						response.addCookie(cookie3);
						cookie4 = new Cookie("email1", java.net.URLEncoder.encode(email1));
						cookie4.setMaxAge(60*60*24*365);//set one year
						response.addCookie(cookie4);
						cookie5 = new Cookie("email2", java.net.URLEncoder.encode(email2));
						cookie5.setMaxAge(60*60*24*365);//set one year
						response.addCookie(cookie5);
					}else{
						cookie1 = new Cookie("id1", null);
						cookie1.setMaxAge(0);
						response.addCookie(cookie1);
						cookie2 = new Cookie("id2", null);
						cookie2.setMaxAge(0);
						response.addCookie(cookie2);
						cookie3 = new Cookie("id3", null);
						cookie3.setMaxAge(0);
						response.addCookie(cookie3);
						cookie4 = new Cookie("email1", null);
						cookie4.setMaxAge(0);
						response.addCookie(cookie4);
						cookie5 = new Cookie("email2", null);
						cookie5.setMaxAge(0);
						response.addCookie(cookie5);
					}
					//setting cookie e
				}else{
					msg="아이디 혹은 비밀번호가 잘못 되었습니다.";
					url="/Login.do";
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			mav.setViewName("/Check_proc");
			mav.addObject("msg", msg);
			mav.addObject("url", url);
        return mav;
    }
	
	@RequestMapping(value = "/LogOut.do", method = RequestMethod.GET)
    public String logOut(HttpSession session){
			session.invalidate();
        return "/member/Login";
    }
	
	@RequestMapping(value = "/Find_pw_step1.do")
    public String Find_pw_step1(Model model){
        return "/member/Find_pw_step1";
    }
	
	@RequestMapping(value = "/Find1.do")
    public String Find_proc1(Model model,
				    	     @RequestParam("id1") String id1,
							 @RequestParam("id2") String id2,
							 @RequestParam("id3") String id3){
		//setting parameter s
				Member member= new Member();
				member.setId1(id1);
				member.setId2(id2);
				member.setId3(id3);
		//setting parameter e
		try{
			ArrayList<Member> list = member_service.getEmailList(member);
			model.addAttribute("resultList", list);
			model.addAttribute("id1", id1);
			model.addAttribute("id2", id2);
			model.addAttribute("id3", id3);
		}catch(Exception e){
			e.printStackTrace();
		}
        return "/member/Find_pw_step2";
    }
	
	@RequestMapping(value = "/Find2.do")
    public ModelAndView Find_proc2(Model model,
				    	     @RequestParam("id1") String id1,
							 @RequestParam("id2") String id2,
							 @RequestParam("id3") String id3,
							 @RequestParam("email1") String email1,
							 @RequestParam("email2") String email2,
							 @RequestParam("kor_name") String kor_name) throws FileNotFoundException, URISyntaxException{
		//setting parameter s
				Member member= new Member();
				member.setId1(id1);
				member.setId2(id2);
				member.setId3(id3);
				member.setEmail1(email1);
				member.setEmail2(email2);
				member.setKor_name(kor_name);
				String pw1=null;
		//setting parameter e
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/member/Find_pw_step3");
		try{
			Member memberInfo = member_service.getPassword(member);
			pw1 = memberInfo.getPw_1();
			try{
				MimeMessage message = mailSender.createMimeMessage();
				 String from="K-GMP@K-GMP.com";
				 String to=email1+"@"+email2;
				 String subject="(주)한국지엠피 비밀번호 확인 메일";
				 String msg="<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'><html><body style='width:600px border:1px solid grey;'><div style='margin:0 auto; padding:10px; width:700px; border:1px solid grey;'><div>	<div>		<img src='http://sted.co.kr/resources/img/common/header_bg2.jpg' width='100%'>	</div>	<div style='background-color:#102967; color:#ffffff; height:30px;'>		&nbsp;▶ 비밀번호 확인	</div></div><div><br><br>	안녕하세요. (주)한국지엠피 입니다.<br>	요청하신 STED 프로그램을 위한 비밀번호입니다.<br>	아래의 비밀번호를 입력하여 계속 진행 하실 수 있습니다.<br><br>	<b>E-MAIL :</b>	&nbsp;&nbsp;&nbsp;<h1 style='color:#303698;'>"+email1+"@"+email2+"</h1><br>	<b>비밀번호 :</b>	&nbsp;&nbsp;&nbsp;<h1 style='color:#303698;'>"+pw1+"</h1><br><br>	그 외에 STED 이용과 관련하여 궁금하신 사항이 있으시면 <a href='#'>FAQ</a>를 확인해 보십시오.<br><br>	(주)한국지엠피<br><br><br>	<p style='color:grey;'>본 메일은 발신전용입니다. 본 메일을 임의로 위.번조하여 사용할 경우 형사처벌의 대상이 될 수 있습니다. 궁금한 사항은 <a href='mailto:K-GMP@K-GMP.COM'>K-GMP@K-GMP.COM</a>으로 문의하십시오.</p><br><div style='background-color:#102967; color:#ffffff; height:30px; text-align:right;'>Copyright ⓒ K-GMP All Right Reserved&nbsp;</div></div></div></body></html>";			 
				  message.setFrom(new InternetAddress(from));  
				  message.addRecipient(RecipientType.TO, new InternetAddress(to));
				  message.setSubject(subject);
				  message.setText(msg, "utf-8", "html");
				   
				 mailSender.send(message);
			}catch(Exception e){
				e.printStackTrace();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
        return mav;
    }
		
	@RequestMapping(value = "/Find_pw_step3.do")
    public String Find_pw_step3(Model model){
        return "/member/Find_pw_step3";
    }
	
	@RequestMapping(value = "/Join_step1.do")
    public String Join_step1(Model model){
        return "/member/Join_step1";
    }
	
	@RequestMapping(value = "/Join_step2.do")
    public String Join_step2(Model model){
        return "/member/Join_step2";
    }
	
	@RequestMapping(value = "/Join_step3.do")
    public String Join_step3(Model model){
        return "/member/Join_step3";
    }
	
	@RequestMapping(value = "/Join_step4.do")
    public ModelAndView Join_step4(@RequestParam("id1") String id1,
							 @RequestParam("id2") String id2,
							 @RequestParam("id3") String id3,
							 @RequestParam("email1") String email1,
							 @RequestParam("email2") String email2){
		 Calendar cal =Calendar.getInstance(); 
		  int nowYear = cal.get(Calendar.YEAR);
		  int nowMonth = cal.get(Calendar.MONTH)+1; // +1
		  int nowDay = cal.get(Calendar.DAY_OF_MONTH);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/Join_step4");
		//setting parameter s
				Member member= new Member();
				member.setId1(id1);
				member.setId2(id2);
				member.setId3(id3);
				member.setEmail1(email1);
				member.setEmail2(email2);
		//setting parameter e
		try{
			Member memberInfo = member_service.selectMember(member);
			mav.addObject("memberInfo", memberInfo);
			mav.addObject("nowYear", nowYear);
			mav.addObject("nowMonth", nowMonth);
			mav.addObject("nowDay", nowDay);
		}catch(Exception e){
			e.printStackTrace();
		}
        return mav;
    }
	
	@RequestMapping(value = "/join_check.do")
    public String join_check(Model model,
				    		 @RequestParam("id1") String id1,
							 @RequestParam("id2") String id2,
							 @RequestParam("id3") String id3,
							 @RequestParam("email1") String email1,
							 @RequestParam("email2") String email2){
		//setting parameter s
				Member member= new Member();
				member.setId1(id1);
				member.setId2(id2);
				member.setId3(id3);
				member.setEmail1(email1);
				member.setEmail2(email2);
		//setting parameter e
			String result="ing";
			try{
				if(member_service.isMember(member)){
					result="old";
				}else{
					result="new";
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		model.addAttribute("id1", id1);
		model.addAttribute("id2", id2);
		model.addAttribute("id3", id3);
		model.addAttribute("email1", email1);
		model.addAttribute("email2", email2);
		model.addAttribute("result", result);
		
        return "/member/Join_step2";
    }
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
    public String insertMember(Model model,
    						   @RequestParam("id1") String id1,
    						   @RequestParam("id2") String id2,
    						   @RequestParam("id3") String id3,
    						   @RequestParam("email1") String email1,
    						   @RequestParam("email2") String email2,
    						   @RequestParam("pw_1") String pw_1,
    						   @RequestParam("kor_name") String kor_name,
    						   @RequestParam("cha_name") String cha_name,
    						   @RequestParam("eng_name") String eng_name,
    						   @RequestParam("address") String address,
    						   @RequestParam("phone1") String phone1,
    						   @RequestParam("phone2") String phone2,
    						   @RequestParam("phone3") String phone3,
    						   @RequestParam("cell_phone1") String cell_phone1,
    						   @RequestParam("cell_phone2") String cell_phone2,
    						   @RequestParam("cell_phone3") String cell_phone3,
    						   @RequestParam("company_kor") String company_kor,
    						   @RequestParam("company_eng") String company_eng,
    						   @RequestParam("company_address") String company_address,
    						   @RequestParam("company_phone1") String company_phone1,
    						   @RequestParam("company_phone2") String company_phone2,
    						   @RequestParam("company_phone3") String company_phone3,
    						   @RequestParam("company_fax1") String company_fax1,
    						   @RequestParam("company_fax2") String company_fax2,
    						   @RequestParam("company_fax3") String company_fax3,
    						   @RequestParam("ceo") String ceo,
    						   @RequestParam("company_file") MultipartFile company_file,
    						   @RequestParam("insurance_no") String insurance_no,
    						   @RequestParam("product") String product,
    						   @RequestParam("finance") String finance,
    						   @RequestParam("worker") String worker)throws IOException{
		//file upload s
		String replaceName="null";
		try{
		 MultipartFile file = company_file;   //file name.
		  Calendar cal = Calendar.getInstance();
		  String fileName = file.getOriginalFilename();
		  if(fileName.equals("")||fileName.equals(null)){
				System.out.println("file null");
			}else{
				System.out.println("file not null");
			  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
			  replaceName = cal.getTimeInMillis() + fileType;  //change file name
			  String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/member";
			  FileUpload.fileUpload(file, path, replaceName);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		//file upload e
		//setting parameter s
		Member member= new Member();
		member.setId1(id1);
		member.setId2(id2);
		member.setId3(id3);
		member.setEmail1(email1);
		member.setEmail2(email2);
		member.setPw_1(pw_1);
		member.setKor_name(kor_name);
		member.setCha_name(cha_name);
		member.setEng_name(eng_name);
		member.setAddress(address);
		member.setPhone1(phone1);
		member.setPhone2(phone2);
		member.setPhone3(phone3);
		member.setCell_phone1(cell_phone1);
		member.setCell_phone2(cell_phone2);
		member.setCell_phone3(cell_phone3);
		member.setCompany_kor(company_kor);
		member.setCompany_eng(company_eng);
		member.setCompany_address(company_address);
		member.setCompany_phone1(company_phone1);
		member.setCompany_phone2(company_phone2);
		member.setCompany_phone3(company_phone3);
		member.setCompany_fax1(company_fax1);
		member.setCompany_fax2(company_fax2);
		member.setCompany_fax3(company_fax3);
		member.setCeo(ceo);
		member.setCompany_file(replaceName);
		member.setInsurance_no(insurance_no);
		member.setProduct(product);
		member.setFinance(finance);
		member.setWorker(worker);
		//setting parameter e
		String url=null;
		String msg=null;
		String check=null;
		try{
			check=member_service.insertMember(member);
			if(check.equals("yes")){
			msg="저장 성공 하였습니다.";
			url="/Join_step4.do?id1="+id1+"&id2="+id2+"&id3="+id3+"&email1="+email1+"&email2="+email2;
			}else{
			msg="저장 실패 하였습니다.";
			//del file s		
			String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/member/"+replaceName;
			File f = new File(fileDir);
			if( f.exists()) f.delete();
			//del file e
			url="/Join_step3.do?id1="+id1+"&id2="+id2+"&id3="+id3+"&email1="+email1+"&email2="+email2;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		
        return "/Check_proc";
    }
	
	@RequestMapping(value = "/Post.do")
    public String post(Model model,
    				   @RequestParam(value = "post", required = false, defaultValue = "성균관대학교자연과학캠퍼스") String post){
		ArrayList<Member> list = member_service.getPost(post);
		model.addAttribute("resultList", list);
        return "/member/Post";
    }
	
	@RequestMapping(value = "/Post2.do")
    public String post2(Model model,
    				   @RequestParam(value = "post", required = false, defaultValue = "성균관대학교자연과학캠퍼스") String post){
		ArrayList<Member> list = member_service.getPost(post);
		model.addAttribute("resultList", list);
        return "/member/Post2";
    }
	
	@RequestMapping(value = "/updateMemberProc.do", method = RequestMethod.POST)
    public String updateMember(Model model,
    						   @RequestParam("id1") String id1,
    						   @RequestParam("id2") String id2,
    						   @RequestParam("id3") String id3,
    						   @RequestParam("email1") String email1,
    						   @RequestParam("email2") String email2,
    						   @RequestParam("pw_1") String pw_1,
    						   @RequestParam("kor_name") String kor_name,
    						   @RequestParam("cha_name") String cha_name,
    						   @RequestParam("eng_name") String eng_name,
    						   @RequestParam("address") String address,
    						   @RequestParam("phone1") String phone1,
    						   @RequestParam("phone2") String phone2,
    						   @RequestParam("phone3") String phone3,
    						   @RequestParam("cell_phone1") String cell_phone1,
    						   @RequestParam("cell_phone2") String cell_phone2,
    						   @RequestParam("cell_phone3") String cell_phone3,
    						   @RequestParam("company_kor") String company_kor,
    						   @RequestParam("company_eng") String company_eng,
    						   @RequestParam("company_address") String company_address,
    						   @RequestParam("company_phone1") String company_phone1,
    						   @RequestParam("company_phone2") String company_phone2,
    						   @RequestParam("company_phone3") String company_phone3,
    						   @RequestParam("company_fax1") String company_fax1,
    						   @RequestParam("company_fax2") String company_fax2,
    						   @RequestParam("company_fax3") String company_fax3,
    						   @RequestParam("ceo") String ceo,
    						   @RequestParam("company_file") MultipartFile company_file,
    						   @RequestParam("insurance_no") String insurance_no,
    						   @RequestParam("product") String product,
    						   @RequestParam("finance") String finance,
    						   @RequestParam("worker") String worker,
    						   @RequestParam("company_file_old") String company_file_old,
    						   @RequestParam("member_seq") int member_seq)throws IOException{
		//file upload s
		String replaceName="null";
		try{
		 MultipartFile file = company_file;   //file name.
		  Calendar cal = Calendar.getInstance();
		  String fileName = file.getOriginalFilename();
		  if(fileName.equals("")||fileName.equals(null)){
				System.out.println("file null");
				replaceName=company_file_old;
			}else{
				System.out.println("file not null");
			  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
			  replaceName = cal.getTimeInMillis() + fileType;  //change file name
			  String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/member";
			  FileUpload.fileUpload(file, path, replaceName);
			//del file s		
				String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/member/"+company_file_old;
				File f = new File(fileDir);
				if( f.exists()) f.delete();
			//del file e
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		//file upload e
		//setting parameter s
		Member member= new Member();
		member.setId1(id1);
		member.setId2(id2);
		member.setId3(id3);
		member.setEmail1(email1);
		member.setEmail2(email2);
		member.setPw_1(pw_1);
		member.setKor_name(kor_name);
		member.setCha_name(cha_name);
		member.setEng_name(eng_name);
		member.setAddress(address);
		member.setPhone1(phone1);
		member.setPhone2(phone2);
		member.setPhone3(phone3);
		member.setCell_phone1(cell_phone1);
		member.setCell_phone2(cell_phone2);
		member.setCell_phone3(cell_phone3);
		member.setCompany_kor(company_kor);
		member.setCompany_eng(company_eng);
		member.setCompany_address(company_address);
		member.setCompany_phone1(company_phone1);
		member.setCompany_phone2(company_phone2);
		member.setCompany_phone3(company_phone3);
		member.setCompany_fax1(company_fax1);
		member.setCompany_fax2(company_fax2);
		member.setCompany_fax3(company_fax3);
		member.setCeo(ceo);
		member.setCompany_file(replaceName);
		member.setInsurance_no(insurance_no);
		member.setProduct(product);
		member.setFinance(finance);
		member.setWorker(worker);
		member.setMember_seq(member_seq);
		//setting parameter e
		String url=null;
		String msg=null;
		String check=null;
		try{
			check=member_service.updatetMember(member);
			if(check.equals("yes")){
				msg="저장 성공 하였습니다.";
				url="/MyPage.do?page_seq=1";
			}else{
				msg="저장 실패 하였습니다.";
			//del file s		
				String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/member/"+replaceName;
				File f = new File(fileDir);
				if( f.exists()) f.delete();
			//del file e
				url="/MyPage.do?page_seq=1";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		
        return "/Check_proc";
    }
	@Autowired
	private Account_service account_service;
	@Autowired
	private JavaMailSender mailSender; // xml에 등록한 bean autowired
	@RequestMapping(value = "/MemberOtpProc.do")
    public String MemberOtp(Model model, 
    				@RequestParam("email1") String email1,
    				@RequestParam("email2") String email2) throws FileNotFoundException, URISyntaxException {
		System.out.println(email1);
		int num=account_service.randomNum();
		try{
			MimeMessage message = mailSender.createMimeMessage();
			 String test1="K-GMP@K-GMP.com";
			 String test2=email1+"@"+email2;
			 String test3="(주)한국지엠피 OTP 확인 메일";
			 String test4="<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'><html><body style='width:600px border:1px solid grey;'><div style='margin:0 auto; padding:10px; width:700px; border:1px solid grey;'><div>	<div>		<img src='http://sted.co.kr/resources/img/common/header_bg2.jpg' width='100%'>	</div>	<div style='background-color:#102967; color:#ffffff; height:30px;'>		&nbsp;▶ 인증번호 확인	</div></div><div><br><br>	안녕하세요. (주)한국지엠피 입니다.<br>	진행하고계신 STED 프로그램을 위한 인증번호입니다.<br>	아래의 인증번호를 입력하여 계속 진행 하실 수 있습니다.<br><br>	<b>E-MAIL :</b>	&nbsp;&nbsp;&nbsp;<h1 style='color:#303698;'>"+email1+"@"+email2+"</h1><br>	<b>인증번호 :</b>	&nbsp;&nbsp;&nbsp;<h1 style='color:#303698;'>"+num+"</h1><br><br>	그 외에 STED 이용과 관련하여 궁금하신 사항이 있으시면 <a href='#'>FAQ</a>를 확인해 보십시오.<br><br>	(주)한국지엠피<br><br><br>	<p style='color:grey;'>본 메일은 발신전용입니다. 본 메일을 임의로 위.번조하여 사용할 경우 형사처벌의 대상이 될 수 있습니다. 궁금한 사항은 <a href='mailto:K-GMP@K-GMP.COM'>K-GMP@K-GMP.COM</a>으로 문의하십시오.</p><br><div style='background-color:#102967; color:#ffffff; height:30px; text-align:right;'>Copyright ⓒ K-GMP All Right Reserved&nbsp;</div></div></div></body></html>";			 
			  message.setFrom(new InternetAddress(test1));  
			  message.addRecipient(RecipientType.TO, new InternetAddress(test2));
			  message.setSubject(test3);
			  message.setText(test4, "utf-8", "html");
			   
			 mailSender.send(message);
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("num", num);
		model.addAttribute("email1", email1);
		model.addAttribute("email2", email2);
		
		return "/member/Otp2";
    }
	
	@RequestMapping(value = "/MemberOTP.do")
    public String MemberOtp(Model model){
		
		return "/member/Otp";
	}
	
	@RequestMapping(value = "/MemberTerms.do")
    public String MemberTerms(Model model){
		
		return "/member/MemberTerms";
	}
	
	@RequestMapping(value = "/MemberInfo.do")
    public String MemberInfo(Model model){
		
		return "/member/MemberInfo";
	}
}
