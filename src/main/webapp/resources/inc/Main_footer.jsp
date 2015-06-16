<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String condition =request.getParameter("msg");
if(condition==null){
	condition ="로딩이 완료 되었습니다.";
}else{
	condition =request.getParameter("msg");
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
	<div class="total_footer" id="total_footer">
		<div id="condition"><img src="/resources/img/common/warning.png" width="15px;">&nbsp;<b>알림</b> : <%=condition%></div>
	</div>
</html>