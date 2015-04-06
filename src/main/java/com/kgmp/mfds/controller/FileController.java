package com.kgmp.mfds.controller;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.kgmp.mfds.FileUpload;

@Controller
public class FileController {
	@RequestMapping(value = "/fileUploadProc.do", method = RequestMethod.POST)
	 public String fileUpload(Model model, MultipartRequest multipartRequest, HttpServletRequest request) throws IOException{
	  MultipartFile imgfile = multipartRequest.getFile("Filedata");     //write.jsp 부분에서 input file의 name 입니다.
	  Calendar cal = Calendar.getInstance();
	  String fileName = imgfile.getOriginalFilename();
	  String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
	  String replaceName = cal.getTimeInMillis() + fileType;  
	  
	  String path = request.getSession().getServletContext().getRealPath("/")+File.separator+"resources/upload"; //파일이 저장되는 경로입니다. deploy되는 곳의 경로를 찾아서 저장합니다. 저는 deploy되는 위치의 resources/upload로 저장하겠습니다. 로컬에서는 이렇게 적지 않으면 이미지를 불러올 때 이클립스에서 f5를 누르지 않으면 엑박이 뜹니다. 
	  FileUpload.fileUpload(imgfile, path, replaceName);
	  model.addAttribute("path", path);                         // 파일업로드를 하는 창에 경로와 
	  model.addAttribute("filename", replaceName);       // 저장된 이름을 전달합니다.​
	  return "File_upload";
	 }
}
