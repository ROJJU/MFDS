<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
			height:120px;
			}
		</style>
	</head>
	<body>
		<jsp:include page="/resources/inc/Member_header.jsp"/>
		<div id="member_body_container">
			<div id="member_body_contents"><br><br>
				<table id="title" width="1064px">
					<tr height="30px">
						<th width="120px" style="border-bottom:2px solid grey;"><font size="3px">비밀번호 찾기</font></th>
						<td align="right">01. 아이디 입력 > <b style="color:blue">02. 본인확인</b> :</td>
					</tr>
				</table>
				<table id="summary" width="1064px">
					<tr height="50px">
						<td>비밀번호를 찾고자 하는 <b>개인정보</b>를 입력해 주세요</td>
					</tr>
				</table>
				<table id="body" width="1064px">
					<tr>
						<td style="padding:20px;" align="center">
							<b><font color="red">*</font>&nbsp;가입 시 등록된 이메일 (to*****@*****.***)</b><br><br>
							<table>
								<tr>
									<td width="80px"><b>이  름</b></td><td width="100px"><input type="text"></td><td></td>
								</tr>
								<tr  >
									<td><b>이메일 주소</b></td><td><input type="text"></td><td></td>
								</tr>
							</table>
						</td>
					</tr>
				</table><br>
				<center><input type="image" src="/resources/img/member/certification_btn.png"></center>
			</div>
		</div>
	</body>
</html>