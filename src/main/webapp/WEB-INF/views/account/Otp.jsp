<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
	<table>
		<tr><td align="center" height="30px"><font size="2px"><b>이메일</b>로 전송된 숫자를 입력해 주세요.
			<br>전송된 이메일 주소 : <b>[${email1}@${email2}]</b></font></td></tr>
		<tr>
			<td align="center">
				<input type="text" name="otp1" id="otp1">
				<input type="hidden" value="${num}" name="otp2" id="otp2">
				<input type="image" src="/resources/img/main/input_button.png" onclick="CheckOtp(<%=request.getParameter("forms_seq")%>)" width="50px;">
				<input type="image" src="/resources/img/btn/cancel_button.png" onclick="goUrl('/MyPage.do?page_seq=6');" width="50px;">
			</td>
		</tr>
		<tr><td align="center"><br><hr><img src="/resources/img/common/sted_logo.png" width="300px"><hr></td></tr>
	</table>
</body>
</html>