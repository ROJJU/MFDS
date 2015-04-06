<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<style type="text/css">
select, input, img, input.type-image{/* border: 0 none; */ vertical-align:middle;}
</style>
</head>
<body>
<div style="margin:0 auto; width:350px;"><br>
	<table>
		<tr><td align="center" height="30px"><font size="2px">인증받을<b>이메일</b>주소를 입력해 주세요.
			<br>해당 이메일은 <b style="color:red;">[서류열람, 비밀번호 확인]</b>등에 사용 됩니다.</font></td></tr>
		<tr>
			<td align="center">
			<form action="/MemberOtpProc.do" method="post" name="email">
				<input type="text" name="email1" style="width:80px;">&nbsp;@
				<input type="text" name="email2" style="width:100px;">
				<input type="image" src="/resources/img/main/input_button.png" onclick="javaScript:document.email.submit();" width="40px;">
				<input type="image" src="/resources/img/btn/cancel_button.png" onclick="javaScript:window.close();" width="40px;">
			</form>
			</td>
		</tr>
		<tr><td align="center"><br><hr><img src="/resources/img/common/sted_logo.png" width="300px"><hr></td></tr>
	</table>
</div>
</body>
</html>