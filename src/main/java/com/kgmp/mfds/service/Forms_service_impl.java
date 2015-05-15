package com.kgmp.mfds.service;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgmp.mfds.dao.Forms_dao;
import com.kgmp.mfds.vo.Forms;
import com.kgmp.mfds.vo.Member;
import com.kgmp.mfds.vo.FirstForm;


@Service
public class Forms_service_impl implements Forms_service{
	@Autowired
	private Forms_dao forms_dao;
	
	public Map<String, Object> getProducts(int currentPage, String linkURL, String search, String find, String list_seq){
		Map<String, Object> pageAll = new HashMap<String, Object>();
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("search", search);
		info.put("find", find);
		int bundlePage = 10;
		int bundlePosts = 10;

		try {
			int totalPostsQty = 0;
			if(search == null || search.equals("all")){
				totalPostsQty = forms_dao.getProductQty(info);
			}else{
				totalPostsQty =forms_dao.getProductSearchQty(info);
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
				pageList = "<a href='" + linkURL + "?currentPage=" + linkPage + "&search=" + search + "&find=" + find +"&lsit_seq="+list_seq+"'><input type='image' src = "+btn1+">&nbsp;&nbsp;</a>";
			}else{
				pageList = "<a href='#'><input type='image' src = "+btn1+">&nbsp;&nbsp;</a>";
			}
			
			//number setting
			linkPage = startPage;
			while(linkPage <= endPage){
				if(linkPage == currentPage)
					pageList += "&nbsp;<b  style='color:red; text-decoration:underline;'>" + currentPage + "</b>&nbsp;";
				else
					pageList += "<a href='" + linkURL + "?currentPage=" + linkPage +"&search=" + search + "&find=" + find + "&list_seq="+list_seq+"'>&nbsp;" + linkPage + "&nbsp;</a>";
				
				linkPage++;
				
				if(linkPage > totalPageQty)
					break;
			}
			
			//>>button setting
			if(currentPage < totalPageQty){
				linkPage = currentPage+1; 
				pageList += "<a href='" + linkURL + "?currentPage=" + linkPage + "&search=" + search + "&find=" + find +"&list_seq="+list_seq+"'>&nbsp;&nbsp;<img src = "+btn2+"></a>";
			}else{
				pageList += "<a href='#'>&nbsp;&nbsp;<img src = "+btn2+"></a>";
			}
			
			//print list
			List<Forms> list =null;
			if(search == null || search.equals("all"))
				list=forms_dao.getProductList(info);
			else
				list=forms_dao.getProductSearch(info);
			
			pageAll.put("pageList", pageList);
			pageAll.put("list", list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pageAll;
	}
	
	public String insertForms(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.insertForms(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String insertFirstForms(int forms_seq){
		String check=null;
		try{
			check="yes";
			forms_dao.insertFirstForms(forms_seq);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public FirstForm getFirstForm(int forms_seq){
		FirstForm firstForm = null;
		try{
			firstForm=forms_dao.getFirstForm(forms_seq);
		}catch(Exception e){
			e.printStackTrace();
		}
		return firstForm;
	}
	
	
	public boolean isFirstForm(int forms_seq){
		return (getFirstForm(forms_seq) != null) ? true : false;
	}
	
	public String delForm(Forms formsInfo){
		String check=null;
		try{
			check="yes";
			forms_dao.delForm(formsInfo);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}

	public String insertContents(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.insertContents(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String insertFirstContents(FirstForm firstForm){
		String check=null;
		try{
			check="yes";
			forms_dao.insertFirstContents(firstForm);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String updateState(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.updateState(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String updateState2(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.updateState2(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String updatePayment(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.updatePayment(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String updateHelp(Map<String, Object> info){
		String check=null;
		try{
			check="yes";
			forms_dao.updateHelp(info);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public Forms getUserForms(Forms formsInfo){
		Forms forms=null;
		try{
			forms=forms_dao.getUserForms(formsInfo);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
	
	public Forms getFormsRead(Forms formsInfo){
		Forms forms=null;
		try{
			forms=forms_dao.getFormsRead(formsInfo);
		}catch(Exception e){
			e.printStackTrace();
		}
		return forms;
	}
	
	public String update_mix(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.update_mix(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String update_power(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.update_power(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public void updateContent1(Forms forms){
		try{
			forms_dao.updateContent1(forms);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public String update_otp(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.update_otp(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public String update_title(Forms forms){
		String check=null;
		try{
			check="yes";
			forms_dao.update_title(forms);
		}catch(Exception e){
			check="no";
			e.printStackTrace();
		}
		return check;
	}
	
	public ArrayList<Forms> getCountry(String country){
		return (ArrayList<Forms>)forms_dao.getCountry(country);
	}
	
	public StringBuffer inseretTxt(String replaceName1, String path){
		StringBuffer termsTxt=new StringBuffer();
        try{
    		String filePath=path+"/"+replaceName1;
	        InputStreamReader inputSR= new InputStreamReader(new FileInputStream(filePath),"UTF-8");
	        BufferedReader br=new BufferedReader(inputSR);
	        String line=null;
		  int i=0;
			  while((line=br.readLine())!=null){
				  i++;
			   termsTxt.append("<tr><td style='border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff'>"+i+"</td><td style='border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff'>"+line+"</td><td style='border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff'>예</td></tr>");
			  }
        }catch(Exception e){
        	termsTxt.append("파읽 읽기를 실패했습니다. <br/>: "+e.getMessage());
        }
        
        return termsTxt;
	}
}
