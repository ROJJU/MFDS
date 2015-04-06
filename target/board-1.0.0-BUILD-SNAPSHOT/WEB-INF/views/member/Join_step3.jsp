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
			table#total_info{
			width:900px;
			}
			table#total_text{
			width:900px;
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
						<td align="right">01. 약관동의 > 02. 가입여부 확인 > <b style="color:blue">03. 개인정보 입력 </b> > 04. 가입완료 :</td>
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
							<hr><br>
							<table id="total_text">
								<tr>
									<td>
										<font color="red">*</font>&nbsp;개인정보 입력 :<br><br>
										<b>회원가입</b>을 위한 개인정보를 입력해 주세요<br>
									</td>
								</tr>
							</table>
							<table id="total_info">
								<tr height="30px">
									<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>회원 정보</b></td>
								</tr>
								<tr>
									<td>
										<table>
											<tr>
												<td width="125px;">ID(사업자 등록 번호) :</td><td><input type="text"></td><td></td>
											</tr>
											<tr>
												<td>사용자 이메일 :</td><td><input type="text" style="width:60px;"> @ <input type="text" style="width:60px;"></td><td></td>
											</tr>
											<tr>
												<td>비밀번호 :</td><td><input type="password"></td><td></td>
											</tr>
											<tr>
												<td>비밀번호 재확인:</td><td><input type="password"></td><td></td>
											</tr>
										</table><br>
									</td>
								</tr>
								<tr height="30px">
									<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>담당자 정보</b></td>
								</tr>
								<tr>
									<td>
										<table>
											<tr>
												<td width="125px;">이름 :</td><td>국문 <input type="text"> | 한문 <input type="text"> | 영문 <input type="text"></td>
											</tr>
											<tr>
												<td>주소 :</td><td><input type="text" style="width:557px;"></td>
											</tr>
											<tr>
												<td>전화번호 :</td><td><input type="text" style="width:60px;">-<input type="text" style="width:60px;">-<input type="text" style="width:60px;"></td>
											</tr>
											<tr>
												<td>휴대전화번호:</td><td><select style="width:64px;"><option>010</option><option>017</option><option>019</option><option>018</option></select>-<input type="text" style="width:60px;">-<input type="text" style="width:60px;"></td>
											</tr>
										</table><br>
									</td>
								</tr>
								<tr height="30px">
									<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>회사 정보</b></td>
								</tr>
								<tr>
									<td>
										<table>
											<tr>
												<td width="125px;">회사명 :</td><td>국문 <input type="text"> | 영문 <input type="text"></td>
											</tr>
											<tr>
												<td>회사주소 :</td><td><input type="text" style="width:557px;"></td>
											</tr>
											<tr>
												<td>전화번호 :</td><td><input type="text" style="width:60px;">-<input type="text" style="width:60px;">-<input type="text" style="width:60px;"></td>
											</tr>
											<tr>
												<td>FAX번호:</td><td><input type="text" style="width:60px;">-<input type="text" style="width:60px;">-<input type="text" style="width:60px;"></td>
											</tr>
											<tr>
												<td>대표자:</td><td><input type="text"></td>
											</tr>
											<tr>
												<td>사업자 등록증 사본:</td><td><input type="file"></td>
											</tr>
											<tr>
												<td>고용보험 관리번호:</td><td><input type="text"></td>
											</tr>
											<tr>
												<td>주요생산품:</td><td><input type="text"></td>
											</tr>
											<tr>
												<td>매출액:</td><td><input type="text"></td>
											</tr>
											<tr>
												<td>종업원수:</td><td><input type="text"></td>
											</tr>
										</table><br>
									</td>
								</tr>
								<tr>
									<td align="center">
										<br><br>
										<input type="image" src="/resources/img/member/Submit_button.png" onclick="javaScript:location.href='/Join_step4'">
										<input type="image" src="/resources/img/member/cancel_btn.png" onclick="javaScript:location.href='/Login'">
										<br><br>
									</td>
								</tr>
							</table>
						<hr>
						</td>
					</tr>
				</table>
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