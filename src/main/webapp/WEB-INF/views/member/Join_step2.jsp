<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="/resources/css/member/Join.css"/>
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
				<table id="body" width="1064px" style="text-align:left;">
					<tr>
						<td style="padding:35px;" align="center">
							<table id="text" style="text-align:left;">
								<tr>
									<td>
										<font color="red">*</font>&nbsp;STED 가입여부 확인 :<br><br>
										<b>회원가입 여부 확인</b>을 위한 기본정보를 입력해 주세요<br>
									</td>
								</tr>
							</table>
							<form action="/join_check.do" method="post" name="check">
								<table id="info" style="text-align:left;">
								
									<tr height="30px">
										<td bgcolor="#BDBDBD">&nbsp;ID(사업자 등록번호)</td>
										<td>&nbsp;<input type="text" style="width:30px;" maxlength="3" name="id1"> - <input type="text" style="width:20px;" maxlength="2" name="id2"> - <input type="text" style="width:50px;" maxlength="5" name="id3"></td>
									</tr>
									<tr height="30px">
										<td bgcolor="#BDBDBD">&nbsp;이메일 주소</td>
										<td>
											&nbsp;<input type="text" style="width:60px;" name="email1" readonly onclick="emailClick(this);"> @ <input type="text" style="width:90px;" name="email2" readonly onclick="emailClick(this);">
											&nbsp;<input type="button" value="이메일 인증" onclick="emailCheck()">
											<input type="hidden">
										</td>
									</tr>
								<c:if test="${result=='old'}">
									<tr>
										<td align="center" colspan="2" height="75px;" style=" background-color:yellow; color:red;">
											<img src="/resources/img/common/coution.gif">&nbsp;이미 등록 되어 있는 정보 혹은 사용하실수 없는 정보 입니다.
										</td>
									</tr>
								</c:if>
								<c:if test="${result=='new'}">
									<tr>
										<td align="center" colspan="2" height="75px;" style=" background-color:yellow; color:red;">
												<img src="/resources/img/common/coution.gif">&nbsp;<b style="font-size:15px; color:black;">[${id1}-${id2}-${id3}]</b>사용 가능한 정보 입니다.<br><br>
												<input type="button" value="사용하기" onclick="javaScript:document.passInfo.submit();">
										</td>
									</tr>
								</c:if>
								</table>
							</form>
							<br>
							<center>
								<input type="image" src="/resources/img/member/Submit_button.png" onclick="formCheck();"><br>
							</center>
						</td>
					</tr>
				</table><br>
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
		<form action="/Join_step3.do" method="post" name="passInfo">
			<input type="hidden" value="${id1}" name="id1">
			<input type="hidden" value="${id2}" name="id2">
			<input type="hidden" value="${id3}" name="id3">
			<input type="hidden" value="${email1}" name="email1">
			<input type="hidden" value="${email2}" name="email2">
		</form>
		<script type="text/javascript">
			function isId1(id1){
				var pattern = new RegExp(/^[0-9]{3}$/);
				return pattern.test(id1);
			}
			function isId2(id2){
				var pattern = new RegExp(/^[0-9]{2}$/);
				return pattern.test(id2);
			}
			function isId3(id3){
				var pattern = new RegExp(/^[0-9]{5}$/);
				return pattern.test(id3);
			}
			
			function formCheck(){
				var id1 = document.check.id1.value;
				var id2 = document.check.id2.value;
				var id3 = document.check.id3.value;
				var email1 = document.check.email1.value;
				var email2 = document.check.email2.value;
				if(id1==null || id1==""||id2==null || id2==""||id3==null || id3==""){
					alert('ID(사업자등록번호)를 입력해 주세요.');
					document.check.id1.focus();
					return false;
				}else if(email1==null || email1==""||email2==null || email2==""){
					alert('이메일 인증이 완료되지 않았습니다.');
					document.check.email1.focus();
					return false;
				}else if(!isId1(id1)){
					alert('ID를 잘못 입력 하셨습니다.');
					document.check.id1.focus();
					return false;
				}else if(!isId2(id2)){
					alert('ID를 잘못 입력 하셨습니다.');
					document.check.id2.focus();
					return false;
				}else if(!isId3(id3)){
					alert('ID를 잘못 입력 하셨습니다.');
					document.check.id3.focus();
					return false;
				}else{
					document.check.submit();
				}
			}
			
			function emailCheck(){
					window.open('/MemberOTP.do','getPost','width=400 height=250 scrollbars=yes');
			}
			
			function emailClick(email){
				if(email.value==null||email.value==""){
					window.open('/MemberOTP.do','getPost','width=400 height=250 scrollbars=yes');
				}else{
					if(confirm('이미 인증을 받았습니다. 변경하시겠습니까?')){
						window.open('/MemberOTP.do','getPost','width=400 height=250 scrollbars=yes');
					}
				}
				alert(test.value);
		}
		</script>
	</body>
</html>