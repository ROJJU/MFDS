<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<style type="text/css">
			body{margin:0 auto; background:#f5f6f7; height:100%;}
			#member_body_container{
			position:relative;
			width:100%;
			height:100%;
			}
			#member_body_contents{
			position:relative;
			width:1064px;
			margin:0 auto;
			}
			table{
			border-collapse:collapse;
			font-size:12px;
			}
			#title tr{
			border-bottom:1px solid grey;
			}
			table#body{
			border:1px solid grey;
			background-color:#ffffff;
			height:120px;
			}
			table#info{
			width:500px;
			border:1px solid grey;
			}
			table#info td{
			border:1px solid grey;
			}
			table#text{
			width:500px;
			}
		</style>
	</head>
	<body>
		<jsp:include page="/resources/inc/Member_header.jsp"/>
		<div id="member_body_container">
			<div id="member_body_contents"><br><br>
				<table id="title" width="1064px">
					<tr height="30px">
						<th width="120px" style="border-bottom:2px solid grey;"><font size="3px">회원가입</font></th>
						<td align="right">01. 약관동의 > <b style="color:blue">02. 가입여부 확인</b> > 03. 개인정보 입력 > 04. 가입완료 :</td>
					</tr>
				</table>
				<table id="summary" width="1064px">
					<tr height="100px">
						<td align="center">
							<br><img src="<c:url value="/resources/img/common/sted_logo.png"/>" width="330px"><br><br><br>
						</td>
					</tr>
				</table>
				<table id="body" width="1064px">
					<tr>
						<td style="padding:35px;" align="center">
							<table id="text">
								<tr>
									<td>
										<font color="red">*</font>&nbsp;STED 가입여부 확인 :<br><br>
										<b>회원가입 여부 확인</b>을 위한 기본정보를 입력해 주세요<br>
									</td>
								</tr>
							</table>
							<table id="info">
								<tr height="30px">
									<td bgcolor="#BDBDBD">&nbsp;ID(사업자 등록번호)</td>
									<td>&nbsp;<input type="text" style="width:30px;" maxlength="3"> - <input type="text" style="width:20px;" maxlength="2"> - <input type="text" style="width:50px;" maxlength="5"></td>
								</tr>
								<tr height="30px">
									<td bgcolor="#BDBDBD">&nbsp;이메일 주소</td>
									<td>&nbsp;<input type="text" style="width:60px;"> @ <input type="text" style="width:90px;"></td>
								</tr>
							</table>
						</td>
					</tr>
				</table><br>
				<center><input type="image" src="/resources/img/member/Submit_button.png" onclick="javaScript:location.href='/Join_step3'"></center>
				<table id="button" width="1064px">
					<tr height=100px;>
						<td align="center"><br>
						<font size="1.5px"><a href="#">이용약관</a> | <a href="#"><b>개인정보취급방침</b></a> | <a href="#">책임의 한계와 법적고지</a> | <a href="#">회원정보 고객센터</a></font><br><br>
						<img src="<c:url value="/resources/img/common/kgmp_logo.gif"/>" width="50px">&nbsp;<font size="1px">Copyright © <b>K-GMP Corp.</b> All Rights Reserved.</font>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>