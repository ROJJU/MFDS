<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>보완 신청</title>
</head>
<body style="padding:0px; margin:0;">
	<div style="height:40px; background-color:#324172; padding-left:10px; padding-top:10px; font-size:20px; color:#ffffff; font-weight:bolder;">
		▶&nbsp;보완신청_
		<b style="color:red;">
			<%if(request.getParameter("help_state").equals("0")){%>
			1차 보완
			<%}else if(request.getParameter("help_state").equals("2")){%>
			1차 보완 완료된 서류입니다(2차 보완 신청)
			<%}%>
		</b>
	</div>
	<div style="padding:10px;">
	신청내용 :
		<form action="/helpProc.do" method="post" name="help">
			<input type="hidden" name="forms_seq" value="<%=request.getParameter("forms_seq")%>">
			<input type="hidden" name="help_state" value="1">
			<textarea style="width:100%;" rows="4" name="help_content"></textarea>
			<%if(request.getParameter("help_state").equals("0")){%>
			<input type="hidden" name="content_state" value="help_content">
			<%}else{%>
			<input type="hidden" name="content_state" value="help_content2">
			<%}%>
		</form><br>
		<img src="/resources/img/forms/help.jpg" width="100%"><br><br>
		<center>
			<input type="image" src="/resources/img/btn/close_btn.png" width="60px" onclick="javaScript:window.close();">
			<input type="image" src="/resources/img/btn/help_btn.png" width="71px" onclick="javaScript:document.help.submit();">
		</center>
	</div>
</body>
</html>