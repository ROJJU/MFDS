package com.kgmp.mfds.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kgmp.mfds.service.Account_service;
import com.kgmp.mfds.service.Forms_service;
import com.kgmp.mfds.service.Member_service;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;
import com.kgmp.mfds.vo.Notice;



@Controller
public class FormsController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private Forms_service forms_service;
	
	@Autowired
	private Member_service member_service;
	
	@Autowired
	private Account_service account_service;
	
	@RequestMapping(value = "/Forms.do")
    public String forms(Model model,
    					@RequestParam("forms_seq") int forms_seq,
    					HttpSession session){
		Forms forms = null;
		Forms formsInfo= new Forms();
		formsInfo.setId1((String)session.getAttribute("id1"));
		formsInfo.setId2((String)session.getAttribute("id2"));
		formsInfo.setId3((String)session.getAttribute("id3"));
		formsInfo.setEmail1((String)session.getAttribute("email1"));
		formsInfo.setEmail2((String)session.getAttribute("email2"));
		formsInfo.setForms_seq(forms_seq);
		//setting parameter e
		try{
			forms=forms_service.getUserForms(formsInfo);
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("forms", forms);
		
        return "/forms/Forms_read";
    }
	
	@RequestMapping(value = "/NewForms.do")
    public ModelAndView newForms(Model model,
	    					   @RequestParam("forms_seq") int forms_seq,
	    					   @RequestParam(value = "list_seq", required = false, defaultValue = "1") String list_seq,
	    					   @RequestParam(value = "contents_name", required = false, defaultValue = "contents1") String contents_name,
							   HttpSession session){
		ModelAndView mav = new ModelAndView();
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
		
		Forms forms = null;
		Forms formsInfo= new Forms();
		formsInfo.setId1((String)session.getAttribute("id1"));
		formsInfo.setId2((String)session.getAttribute("id2"));
		formsInfo.setId3((String)session.getAttribute("id3"));
		formsInfo.setEmail1((String)session.getAttribute("email1"));
		formsInfo.setEmail2((String)session.getAttribute("email2"));
		formsInfo.setForms_seq(forms_seq);
		formsInfo.setContents_name(contents_name);
		//setting parameter e
		mav.setViewName("/forms/New_forms");
		
		try{
			forms=forms_service.getUserForms(formsInfo);
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("list_seq", list_seq);
		model.addAttribute("forms", forms);
        return mav;
    }

	@RequestMapping(value = "/fileList.do")
    public ModelAndView fileList(Model model,
    					   @RequestParam(value = "list_seq", required = false, defaultValue = "1") String list_seq,
		    			   @RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
		    			   @RequestParam(value = "search", required = false, defaultValue = "all") String search,
		    			   @RequestParam(value = "find", required = false, defaultValue = "") String find){
		ModelAndView mav = new ModelAndView();
			//send parameter
			Map<String, Object> pageAll = forms_service.getProducts(currentPage, "/fileList", search, find, list_seq);
			//setting data
			String pageList = (String)pageAll.get("pageList");
			@SuppressWarnings("unchecked")
			List<Notice> list = (List<Notice>)pageAll.get("list");
			mav.addObject("pageList", pageList);
			mav.addObject("list", list);
			mav.setViewName("/forms/Search_popup");
		return mav;
    }
	
	@RequestMapping(value = "/BasicInfo.do")
    public String basicInfo(Model model){
        return "/forms/BasicInfo_popup";
    }
	
	@RequestMapping(value = "/BasicInfoProc.do")
    public ModelAndView insertBasic(Model model,
    						  @RequestParam("kor_name") String kor_name,
    						  @RequestParam("eng_name") String eng_name,
    						  @RequestParam("div_sub") String div_sub,
    						  @RequestParam("div_mid") String div_mid,
    						  @RequestParam("p_class") String p_class,
    						  @RequestParam("mix") String mix,
    						  @RequestParam("power") String power,
    						  @RequestParam("commit_no") String commit_no,
    						  @RequestParam("company_name") String company_name,
    						  @RequestParam("company_addrs") String company_addrs,
    						  @RequestParam("license_num") String license_num,
    						  @RequestParam("making_name") String making_name,
    						  @RequestParam("making_addrs") String making_addrs,
    						  @RequestParam("title") String title,
    						  @RequestParam("id1") String id1,
    						  @RequestParam("id2") String id2,
    						  @RequestParam("id3") String id3,
    						  @RequestParam("email1") String email1,
    						  @RequestParam("email2") String email2,
    						  @RequestParam("state") int state,
    						  @RequestParam("payment") int payment,
    						  @RequestParam("code") String code){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=null;
		//setting parameter s
		Forms forms = new Forms();
		forms.setKor_name(kor_name);
		forms.setEng_name(eng_name);
		forms.setDiv_sub(div_sub);
		forms.setDiv_mid(div_mid);
		forms.setP_class(p_class);
		forms.setMix(mix);
		forms.setPower(power);
		forms.setCommit_no(commit_no);
		forms.setCompany_name(company_name);
		forms.setCompany_addrs(company_addrs);
		forms.setLicense_num(license_num);
		forms.setMaking_name(making_name);
		forms.setMaking_addrs(making_addrs);
		forms.setTitle(title);
		forms.setId1(id1);
		forms.setId2(id2);
		forms.setId3(id3);
		forms.setEmail1(email1);
		forms.setEmail2(email2);
		forms.setState(state);
		forms.setPayment(payment);
		forms.setCode(code);
		String check=null;
		try{
			check=forms_service.insertForms(forms);
			if(check.equals("yes")){
				msg="성공하였습니다.";
				url="/MyPage.do?page_seq=6";
			}else{
				msg="실패하였습니다.";
				url="/MyPage.do?page_seq=6";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.setViewName("/Opener_check_proc");
		mav.addObject("msg", msg);
		mav.addObject("url", url);
        return mav;
    }
	
	@RequestMapping(value = "/FormsProc.do")
	public ModelAndView insertForms(@RequestParam("forms_seq") int forms_seq,
									@RequestParam("contents") String contents,
									@RequestParam("contents_name") String contents_name,
									@RequestParam("url") String p_url,
									@RequestParam("ck_form") String ck_form){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=p_url;
		Forms forms = new Forms();
		forms.setForms_seq(forms_seq);
		forms.setContents(contents);
		forms.setContents_name(contents_name);
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
	
	//up state
	@RequestMapping(value = "/updateStateProc.do")
	public ModelAndView updateState(@RequestParam("forms_seq") int forms_seq){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=null;
		Forms forms = new Forms();
		forms.setForms_seq(forms_seq);
		String check=null;
		try{
			check=forms_service.updateState(forms);
			if(check.equals("yes")){
				msg="성공하였습니다.";
				url="/MyPage.do?page_seq=6";
			}else{
				msg="실패하였습니다.";
				url="/NewForms.do?forms_seq="+forms_seq;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
		return mav;
	}
	
	//down state
	@RequestMapping(value = "/updateStateProc2.do")
	public ModelAndView updateState2(@RequestParam("forms_seq") int forms_seq,
									 @RequestParam("otp") int otp){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=null;
		Forms forms = new Forms();
		forms.setForms_seq(forms_seq);
		String check=null;
		try{
			check=forms_service.updateState2(forms);
			if(check.equals("yes")){
				msg="수정완료 후 최종저장 버튼을 눌러주시기 바랍니다.";
				url="/NewForms.do?forms_seq="+forms_seq;
			}else{
				msg="실패하였습니다.";
				url="/Forms.do?forms_seq="+forms_seq+"&otp="+otp;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
		return mav;
	}

	@RequestMapping(value = "/updatePaymentProc.do")
	public ModelAndView updatePayment(@RequestParam("forms_seq") int forms_seq,
									  @RequestParam("payment_name") String payment_name,
									  @RequestParam("payment_bank") String payment_bank){
		ModelAndView mav = new ModelAndView();
		String msg=null;
		String url=null;
		Forms forms = new Forms();
		forms.setForms_seq(forms_seq);
		System.out.println(payment_bank);
		forms.setPayment_name(payment_name);
		forms.setPayment_bank(payment_bank);
		String check=null;
		try{
			check=forms_service.updatePayment(forms);
			if(check.equals("yes")){
				msg="성공하였습니다.";
				url="/MyPage.do?page_seq=6";
			}else{
				msg="실패하였습니다.";
				url="/NewForms.do?forms_seq="+forms_seq;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Opener_check_proc");
		return mav;
	}

	@RequestMapping(value = "/LoadContent.do")
	public ModelAndView loadContent(@RequestParam("forms_seq") int forms_seq,
									@RequestParam("num") int num,
									@RequestParam(value = "contents_name", required = false, defaultValue = "contents1") String contents_name){
		ModelAndView mav = new ModelAndView();
		Forms forms = null;
		Forms formsInfo = new Forms();
		formsInfo.setContents_name(contents_name);
		formsInfo.setForms_seq(forms_seq);
		try{
			forms=forms_service.getFormsRead(formsInfo);
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("forms", forms);
		mav.setViewName("/forms/LoadContent");
	    return mav;
	}
	
	@RequestMapping(value = "/download_hwpProc.do")
	public ModelAndView download_hwp(Model model,
						@RequestParam("forms_seq") int forms_seq){
		ModelAndView mav = new ModelAndView();
		Forms forms = null;
		try{
			forms=account_service.getForms(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("forms", forms);
		mav.setViewName("/forms/Forms_hwp");
	    return mav;
	}
	
	@RequestMapping(value = "/change_hwpProc.do")
	public ModelAndView change_hwp(Model model,
						@RequestParam("forms_seq") int forms_seq){
		ModelAndView mav = new ModelAndView();
		Forms forms = null;
		try{
			forms=account_service.getForms(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("forms", forms);
		mav.setViewName("/forms/Change_HWP");
	    return mav;
	}
	
	@RequestMapping(value = "/helpProc.do")
	public ModelAndView help(Model model,
						@RequestParam("forms_seq") int forms_seq,
						@RequestParam("help_content") String help_content,
						@RequestParam("content_state") String content_state,
						@RequestParam("otp") String otp){
		ModelAndView mav = new ModelAndView();
		String msg="";
		//setting parameter s
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("forms_seq", forms_seq);
		info.put("help_content", help_content);
		info.put("content_state", content_state);
		String check=null;
		
		if(content_state.equals("help_content2")){
			info.put("help_state", 3);
		}else{
			info.put("help_state", 1);
		}
		
		try{
			check=forms_service.updateHelp(info);
			if(check.equals("yes")){
				msg="성공하셨습니다.";
			}else{
				msg="실패하셨습니다.";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		String url ="/Forms.do?forms_seq="+forms_seq+"&otp="+otp;
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Opener_check_proc");
	    return mav;
	}
	
	@RequestMapping(value = "/update_mixProc.do")
	public ModelAndView update_mix(Model model,
						@RequestParam("forms_seq") int forms_seq,
						@RequestParam("mix") String mix){
		ModelAndView mav = new ModelAndView();
		Forms forms = new Forms();
		String mixValue = null;
		String check=null;
		String msg="";
		
		if(mix.equals("1")){
			mixValue="2";
		}else{
			mixValue="1";
		}
		forms.setForms_seq(forms_seq);
		forms.setMix(mixValue);
		try{
			check=forms_service.update_mix(forms);
			forms_service.updateContent1(forms);
			if(check.equals("yes")){
				msg="성공하셨습니다.";
			}else{
				msg="실패하셨습니다.";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		String url ="/NewForms.do?forms_seq="+forms_seq;
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
	    return mav;
	}
	
	@RequestMapping(value = "/update_powerProc.do")
	public ModelAndView update_power(Model model,
			@RequestParam("forms_seq") int forms_seq,
			@RequestParam("power") String power){
		ModelAndView mav = new ModelAndView();
		Forms forms = new Forms();
		String powerValue = null;
		String check=null;
		String msg="";
		
		if(power.equals("1")){
			powerValue="2";
		}else{
			powerValue="1";
		}
		forms.setForms_seq(forms_seq);
		forms.setPower(powerValue);
		try{
		check=forms_service.update_power(forms);
		if(check.equals("yes")){
			msg="성공하셨습니다.";
		}else{
			msg="실패하셨습니다.";
		}
		}catch(Exception e){
		e.printStackTrace();
		}
		String url ="/NewForms.do?forms_seq="+forms_seq;
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
		return mav;
	}
	
	@RequestMapping(value = "/updateOtp.do")
	public ModelAndView updateOtp(Model model,
			@RequestParam("forms_seq") int forms_seq,
			@RequestParam("otp") String otp){
		ModelAndView mav = new ModelAndView();
		Forms forms = new Forms();
		String check=null;
		String msg="";
		forms.setOtp(otp);
		forms.setForms_seq(forms_seq);
		try{
		check=forms_service.update_otp(forms);
		if(check.equals("yes")){
			msg="성공하셨습니다.";
		}else{
			msg="실패하셨습니다.";
		}
		}catch(Exception e){
		e.printStackTrace();
		}
		String url ="/Forms.do?forms_seq="+forms_seq+"&list_seq=1&otp="+otp;
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
		return mav;
	}
}
