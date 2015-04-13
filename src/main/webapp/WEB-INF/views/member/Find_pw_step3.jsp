<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="/resources/css/member/Find.css"/>
	</head>
	<body>
		<jsp:include page="/resources/inc/Member_header.jsp"/>
		<div id="member_body_container">
			<div id="member_body_contents"><br><br>
				<table id="title" width="1064px">
					<tr height="30px">
						<th width="120px" style="border-bottom:2px solid grey;"><font size="3px">비밀번호 찾기</font></th>
						<td align="right">01. 아이디 입력 > 02. 본인확인 > <b style="color:blue">03. 비밀번호확인</b> :</td>
					</tr>
				</table>
				<table id="summary" width="1064px">
					<tr height="50px">
						<td><b>비밀번호</b>를 확인해 주십시오&nbsp;<b style="color:red; font-size:10px;">(비밀번호는 보안상 최소 6개월에 한변씩 변환을 부탁 드립니다)</b></td>
					</tr>
				</table>
				<table id="body" width="1064px">
					<tr>
						<td align="center">
							<table>
								<tr>
									<td width="80px" align="center"><b>비밀번호 확인</b><br><br></td>
								</tr>
								<tr>
									<td width="100%" align="center">
										<img src="/resources/img/common/coution.gif">&nbsp;<b style="color:red;">해당 정보로 등록된 비밀번호가 입력하신 E-MAIL로 전송되었습니다.</b>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table><br>
				<center>
					<input type="image" src="/resources/img/btn/kr_back_btn.png" onclick="javaScript:history.go(-1)">
					<input type="image" src="/resources/img/member/Submit_button.png" onclick="javaScript:location.href='/Login.do'">
				</center><br>
				<hr>
				<jsp:include page="/resources/inc/Member_footer.jsp"/>
			</div>
		</div>
	</body>
</html>