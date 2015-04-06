<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>KGMP</title>
<script type="text/javascript">
	function addAddrs1(){
		var post1 = document.post2.post1.value;
		var post2 = document.post2.post2.value;
		window.opener.document.join.address.value = post1+post2;
		window.close();
	}
	function addAddrs2(){
		var post1 = document.post2.post1.value;
		var post2 = document.post2.post2.value;
		window.opener.document.join.company_address.value = post1+post2;
		window.close();
	}
</script>
<style type="text/css">
	body{font-size:14px; margin:0px; padding:0px;}
	#postHover:hover{
	cursor:hand;
	cursor:pointer;
	background-color:#ccc;
	}
</style>
</head>
	<body>
		<table width="100%;">
			<tr><td style="background-color:rgb(14,90,146); color:#ffffff; height:50px; padding-left:20px; border-bottom:4px solid grey;"><h2>주소찾기</h2></td></tr>
			<tr>
				<td style="padding:10px;">
					<br><b>상세주소 입력</b><hr style="border:1px solid black;"><br>
					<form action="" name="post2">
					<div style="width:100%;  background-color:#f7f7f7; margin-top:15px; border-top:1px solid #ccc; border-bottom:1px solid #ccc;">
						<br>
						<input type="text" value="(<%=request.getParameter("post2") %>)<%=request.getParameter("post") %>" style="width:98%; height:20px;" readonly id="post1">
						<hr>
						나머지 주소를 입력하신 후 <font color="red">'주소입력'</font> 버튼을 눌러주세요.<br><br>
						<input type="text" style="width:98%; height:20px;" id="post2"><br><br>
					</div><br>
					</form>
				</td>
			</tr>
			<tr>
				<td align="center" style="border-top:3px solid rgb(14,90,146); height:40px;"><br>
				<%if(request.getParameter("num").equals("1")){%>
					<input type="image" src="/resources/img/btn/addrs_button.png" onclick="addAddrs1();">
				<%}else{%>
					<input type="image" src="/resources/img/btn/addrs_button.png" onclick="addAddrs2();">
				<%}%>
					&nbsp;<input type="image" src="/resources/img/btn/kr_back_btn.png" onclick="javaScript:history.go(-1);">
					&nbsp;<input type="image" src="/resources/img/btn/cancel_button.png" onclick="javaScript:window.close();">
				</td>
			</tr>
		</table>
	</body>
</html>