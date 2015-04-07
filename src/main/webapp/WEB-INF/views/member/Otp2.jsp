<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<style type="text/css">
select, input, img, input.type-image{/* border: 0 none; */ vertical-align:middle;}
</style>
<script type="text/javascript">
function CheckOtp(){
	var otp1=document.getElementById("otp1").value;
	var otp2=document.getElementById("otp2").value;
	var email1=document.getElementById("email1").value;
	var email2=document.getElementById("email2").value;
	if(otp1==otp2){
		if(confirm('확인되었습니다. 해당 이메일주소를 사용하시겠습니까?')){
			window.opener.document.check.email1.value = email1;
			window.opener.document.check.email2.value = email2;
			window.close();
		}
	}else{
		alert('잘못된 OTP를 입력하셨습니다.');
	}
}

function KeyEventHandle(){
	if( 
	( event.ctrlKey == true && ( event.keyCode == 78 || event.keyCode == 82 ) ) ||
	( event.keyCode >= 112 && event.keyCode <= 123 )){
	event.keyCode = 0;
	event.cancelBubble = true;
	event.returnValue = false;
	alert('F1~F12는 사용하실 수 없습니다.');
	}
}
document.onkeydown=KeyEventHandle;
document.onkeyup=KeyEventHandle;
</script>
</head>
<body>
<div style="margin:0 auto; width:300px;"><br>
	<table>
		<tr><td align="center" height="30px"><font size="2px"><b>이메일</b>로 전송된 숫자를 입력해 주세요.
			<br>전송된 이메일 주소 : <b>[${email1}@${email2}]</b></font></td></tr>
		<tr>
			<td align="center">
				<input type="hidden" value="${email1}" id="email1">
				<input type="hidden" value="${email2}" id="email2">
				<input type="text" name="otp1" id="otp1">
				<input type="hidden" value="${num}" name="otp2" id="otp2">
				<input type="image" src="/resources/img/main/input_button.png" onclick="CheckOtp()" width="40px;">
				<input type="image" src="/resources/img/btn/kr_back_btn.png" onclick="javaScript:history.go(-1)" width="40px;"><br>
				<a style="font-size:11px; color:red;">* email 도착은 <b>30초</b>에서 최대 <b>1분</b>정도 소요가 됩니다. *</a>
			</td>
		</tr>
		<tr><td align="center"><br><hr><img src="/resources/img/common/sted_logo.png" width="250px"><hr></td></tr>
	</table>
</div>
</body>
</html>