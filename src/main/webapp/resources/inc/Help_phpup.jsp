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
		<p style="color:red; font-size:12px;">보완 서류는 담당직원이 검토 후 금액을 산정하여 가입 시 입력된 이메일로 관련 사항을 보내드립니다.<br>보완은 평균 입금 확인 후 24시간 내에 완성이 되며 총 2회까지 신청 가능 합니다.<br>
		2회 이상은 신청이 되지 않으니 주의 바랍니다.</p> 
		<center>
			<input type="button" value="닫기" onclick="javaScript:window.close();">
			<input type="button" value="보완신청" onclick="javaScript:document.help.submit();">
		</center>
	</div>
</body>
</html>