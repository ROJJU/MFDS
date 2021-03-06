<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>KGMP</title>
<style type="text/css">
	body{font-size:14px; margin:0px; padding:0px;}
	#postHover:hover{
	cursor:hand;
	cursor:pointer;
	background-color:#ccc;
	}
	select, input, img, input.type-image{/* border: 0 none; */ vertical-align:middle;}
</style>
</head>
	<body>
		<table width="100%;">
			<tr><td style="background-color:rgb(14,90,146); color:#ffffff; height:50px; padding-left:20px; border-bottom:4px solid grey;"><h2>주소찾기</h2></td></tr>
			<tr>
				<td style="padding:10px;">
					<br>찾고자 하는 주소명(동/읍/면/리/가/건물명)을 입력하세요. <font color="grey">(예:역삼1동)</font><br>
					<form action="/Post.do" method="post" name="post">
						<div style="width:100%; height:50px; background-color:#f7f7f7; margin-top:15px; border-top:1px solid #ccc; border-bottom:1px solid #ccc;">
							<br>&nbsp;&nbsp;&nbsp;&nbsp;검색어
							<input type="text" name="post">&nbsp;
							<input type="hidden" name="num" value="<%=request.getParameter("num") %>">
							<input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScrip:document.post.submit();">
						</div><br>
					</form>
					<br><font color="grey">※ 검색 후 우편번호를 클릭해주세요.</font>
				</td>
			</tr>
			<tr>
				<td style="padding:10px; font-size:12px;">
					<div style="max-height:295px; overflow:auto; border:2px grey solid; padding:5px;">
						<table style="width:100%; border-collapse:collapse;">
						<c:forEach var="result" items="${resultList}" varStatus="status">
							<tr id="postHover" onclick="javaScript:location.href='/Post2.do?num=<%=request.getParameter("num")%>&post=${result.id1}&post2=${result.id2}'">
								<td height="20px;">${result.id1}</td><td width="60px;" align="right">${result.id2}</td>
							</tr>
						</c:forEach>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td align="center" style="border-top:3px solid rgb(14,90,146); height:40px;"><br>
					<input type="image" src="/resources/img/btn/cancel_button.png" onclick="javaScript:window.close();">
				</td>
			</tr>
		</table>
	</body>
</html>