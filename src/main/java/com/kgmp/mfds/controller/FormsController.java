package com.kgmp.mfds.controller;


import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kgmp.mfds.FileUpload;
import com.kgmp.mfds.service.Account_service;
import com.kgmp.mfds.service.Forms_service;
import com.kgmp.mfds.service.Member_service;
import com.kgmp.mfds.vo.FirstForm;
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
	    					   @RequestParam(value = "contents_name", required = false, defaultValue = "1") String contents_name,
							   HttpSession session){
		StringBuffer modelFileName = null;
		StringBuffer pakingFileNmae = null;
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
		formsInfo.setContents_name("contents"+contents_name);
		//setting parameter e
		mav.setViewName("/forms/New_forms");
		FirstForm firstForm = null;
		try{
			forms=forms_service.getUserForms(formsInfo);
			forms.getForms_seq();
			firstForm = forms_service.getFirstForm(forms_seq);
			modelFileName=forms_service.inseretTxt(firstForm.getModelFileName(), "c:/save/notice");
			pakingFileNmae=forms_service.inseretTxt(firstForm.getPakingFileNmae(), "c:/save/notice");
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("pakingFileNmae", pakingFileNmae.toString());
		model.addAttribute("modelFileName", modelFileName.toString());
		model.addAttribute("firstForm", firstForm);
		model.addAttribute("list_seq", list_seq);
		model.addAttribute("forms", forms);
        return mav;
    }
	
	@RequestMapping(value = "/DelForms.do")
    public ModelAndView delForms(Model model,
	    					   @RequestParam("forms_seq") int forms_seq,
							   HttpSession session){
		ModelAndView mav = new ModelAndView();
		String check=null;
		String msg=null;
		String url=null;
		Forms formsInfo= new Forms();
		formsInfo.setId1((String)session.getAttribute("id1"));
		formsInfo.setId2((String)session.getAttribute("id2"));
		formsInfo.setId3((String)session.getAttribute("id3"));
		formsInfo.setEmail1((String)session.getAttribute("email1"));
		formsInfo.setEmail2((String)session.getAttribute("email2"));
		formsInfo.setForms_seq(forms_seq);
		//setting parameter e
		mav.setViewName("/forms/New_forms");
		
		try{
			check=forms_service.delForm(formsInfo);
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
		forms.setContents_name("contents"+contents_name);
		forms.setck_form(ck_form);
		String check=null;
		try{
			check=forms_service.insertContents(forms);
			if(check.equals("yes")){
				msg="임시저장 완료하였습니다.";
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
		
	@RequestMapping(value = "/FirstFormsProc.do")
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
				  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
				  replaceName1 = cal.getTimeInMillis() + fileType;  //change file name
				  String path = "c:/save/notice";
				  FileUpload.fileUpload(file, path, replaceName1);
				//del file s		
					String fileDir = "c:/save/notice/"+modelFileName_old;
					File f = new File(fileDir);
					if( f.exists()) f.delete();
				//del file e
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
					  String path ="c:/save/notice";
					  //String path = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/payment";
					  FileUpload.fileUpload(file, path, replaceName2);
					//del file s		
					  String fileDir ="c:/save/notice"+pakingFileNmae_old;
						//String fileDir = "/usr/local/tomcat/webapps/ROOT/resources/img/upload/payment/"+pakingFileNmae_old;
						File f = new File(fileDir);
						if( f.exists()) f.delete();
					//del file e
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
		String url=p_url;
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
		String check=null;
		try{
			check=forms_service.insertFirstContents(firstForm);
			if(check.equals("yes")){
				Forms forms = new Forms();
				String finalCheck=null;
				forms.setForms_seq(forms_seq);
				forms.setContents("-");
				forms.setContents_name("contents"+contents_name);
				forms.setck_form(ck_form);
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
				url="/NewForms.do?forms_seq="+forms_seq+"&list_seq=1&contents_name=1";
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
									@RequestParam(value = "contents_name", required = false, defaultValue = "1") String contents_name,
									HttpSession session){
		ModelAndView mav = new ModelAndView();
		Forms forms = null;
		Forms formsInfo = new Forms();
		FirstForm firstForm = null;
		formsInfo.setContents_name(contents_name);
		formsInfo.setForms_seq(forms_seq);
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
		try{
			forms=forms_service.getFormsRead(formsInfo);
			firstForm = forms_service.getFirstForm(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("firstForm", firstForm);
		mav.addObject("forms", forms);
		mav.setViewName("/forms/LoadContent");
	    return mav;
	}
	
	@RequestMapping(value = "/download_hwpProc.do")
	public ModelAndView download_hwp(Model model,
						@RequestParam("forms_seq") int forms_seq,
						@RequestParam(value = "contents_name", required = false, defaultValue = "1") String contents_name){
		ModelAndView mav = new ModelAndView();
		Forms forms = null;
		Forms formsInfo = new Forms();
		formsInfo.setForms_seq(forms_seq);
		formsInfo.setContents_name("contents"+contents_name);
		try{
			forms=forms_service.getFormsRead(formsInfo);
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("forms", forms);
		mav.setViewName("/forms/Forms_hwp");
	    return mav;
	}
	
	@RequestMapping(value = "/change_hwpProc.do")
	public ModelAndView change_hwp(Model model,
						@RequestParam("forms_seq") int forms_seq,
						@RequestParam("num") int num,
						HttpSession session){
		ModelAndView mav = new ModelAndView();
		Forms forms = null;
		Forms formsInfo = new Forms();
		String contents_name=null;
		if(num==1){
			contents_name = "contents1";
		}else if(num==2){
			contents_name = "contents2";
		}else if(num==3){
			contents_name = "contents3";
		}else if(num==4){
			contents_name = "contents4";
		}else if(num==5){
			contents_name = "contents5";
		}else if(num==6){
			contents_name = "contents6";
		}else if(num==7){
			contents_name = "contents7";
		}else if(num==8){
			contents_name = "contents8";
		}else if(num==9){
			contents_name = "contents9";
		}else if(num==10){
			contents_name = "contents10";
		}else if(num==11){
			contents_name = "contents11";
		}else if(num==12){
			contents_name = "contents12";
		}else if(num==13){
			contents_name = "contents13";
		}else if(num==14){
			contents_name = "contents14";
		}else if(num==15){
			contents_name = "contents15";
		}else if(num==16){
			contents_name = "contents16";
		}else if(num==17){
			contents_name = "contents17";
		}else if(num==18){
			contents_name = "contents18";
		}else if(num==19){
			contents_name = "contents19";
		}else if(num==20){
			contents_name = "contents20";
		}else if(num==21){
			contents_name = "contents21";
		}else if(num==22){
			contents_name = "contents22";
		}else if(num==23){
			contents_name = "contents23";
		}else if(num==24){
			contents_name = "contents24";
		}else if(num==25){
			contents_name = "contents25";
		}else if(num==26){
			contents_name = "contents26";
		}else if(num==27){
			contents_name = "contents27";
		}else if(num==28){
			contents_name = "contents28";
		}else if(num==29){
			contents_name = "contents29";
		}else if(num==30){
			contents_name = "contents30";
		}else if(num==31){
			contents_name = "contents31";
		}else if(num==32){
			contents_name = "contents32";
		}else if(num==33){
			contents_name = "contents33";
		}else if(num==34){
			contents_name = "contents34";
		}else if(num==35){
			contents_name = "contents35";
		}else if(num==36){
			contents_name = "contents36";
		}else if(num==37){
			contents_name = "contents37";
		}else if(num==38){
			contents_name = "contents38";
		}else if(num==39){
			contents_name = "contents39";
		}else if(num==40){
			contents_name = "contents40";
		}else if(num==41){
			contents_name = "contents41";
		}else if(num==42){
			contents_name = "contents42";
		}else if(num==43){
			contents_name = "contents43";
		}else{
			contents_name = "contents1";
		}
		formsInfo.setForms_seq(forms_seq);
		formsInfo.setContents_name(contents_name);
		FirstForm firstForm = null;
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
		try{
			forms=forms_service.getFormsRead(formsInfo);
			firstForm = forms_service.getFirstForm(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		mav.addObject("firstForm", firstForm);
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
						@RequestParam("mix") String mix,
						@RequestParam("list_seq") String list_seq,
						@RequestParam("contents_name") String contents_name){
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
		String url ="/NewForms.do?forms_seq="+forms_seq+"&list_seq="+list_seq+"&contents_name="+contents_name;
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Check_proc");
	    return mav;
	}
	
	@RequestMapping(value = "/update_powerProc.do")
	public ModelAndView update_power(Model model,
			@RequestParam("forms_seq") int forms_seq,
			@RequestParam("power") String power,
			@RequestParam("list_seq") String list_seq,
			@RequestParam("contents_name") String contents_name){
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
		String url ="/NewForms.do?forms_seq="+forms_seq+"&list_seq="+list_seq+"&contents_name="+contents_name;
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
	
	@RequestMapping(value = "/update_title.do")
	public ModelAndView updateTitle(Model model,
			@RequestParam("forms_seq") int forms_seq,
			@RequestParam("title") String title){
		ModelAndView mav = new ModelAndView();
		Forms forms = new Forms();
		String check=null;
		String msg="";
		forms.setForms_seq(forms_seq);
		forms.setTitle(title);
		try{
		check=forms_service.update_title(forms);
		if(check.equals("yes")){
			msg="성공하셨습니다.";
		}else{
			msg="실패하셨습니다.";
		}
		}catch(Exception e){
		e.printStackTrace();
		}
		String url ="/MyPage.do?page_seq=6";
		mav.addObject("msg", msg);
		mav.addObject("url", url);
		mav.setViewName("/Opener_check_proc");
		return mav;
	}
	
	@RequestMapping(value = "/selectCountry.do")
    public String selectCountry(Model model,
    				   @RequestParam(value = "country", required = false, defaultValue = "") String country){
		ArrayList<Forms> list = forms_service.getCountry(country);
		model.addAttribute("resultList", list);
        return "/forms/Country";
    }
}
