<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<style type="text/css">
select, input, img, input.type-image{/* border: 0 none; */ vertical-align:middle;}
</style>
<script type="text/javascript">
function formCheck(){
	var email1 = document.email.email1.value;
	var email2 = document.email.email2.value;
	if(email1==null||email1==""){
		alert('Email 주소를 입력하세요');
		document.email.email1.focus();
		return false;
	}else if(email2==null||email2==""){
		alert('Email 주소를 입력하세요');
		document.email.email2.focus();
		return false;
	}else{
		document.email.submit();
	}
}
</script>
</head>
<body>
<div style="margin:0 auto; width:360px;"><br>
	<table width="100%">
		<tr><td align="center" height="30px" colspan="2"><font size="2px">인증받을<b>이메일</b>주소를 입력해 주세요.
			<br>해당 이메일은 <b style="color:red;">[서류열람, 비밀번호 확인]</b>등에 사용 됩니다.</font></td></tr>
		<tr>
			<td align="center">
			<form action="/MemberOtpProc.do" method="post" name="email">
				<input type="text" name="email1" style="width:80px;">&nbsp;@
				<input type="text" name="email2" style="width:100px;">
			</form>
			</td>
			<td align="left">
				<input type="image" src="/resources/img/main/input_button.png" onclick="formCheck();" width="50px;">
				<input type="image" src="/resources/img/btn/cancel_button.png" onclick="javaScript:window.close();" width="50px;">
			</td>
		</tr>
		<tr><td align="center" colspan="2"><br><hr><img src="/resources/img/common/sted_logo.png" width="300px"><hr></td></tr>
	</table>
</div>
</body>
</html>