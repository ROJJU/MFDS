<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="/resources/css/member/Find.css"/>
		<script type="text/javascript">
				function formCheck(){
					var kor_name=document.find2.kor_name.value;
					var email1=document.find2.email1.value;
					var email2=document.find2.email2.value;
					if(kor_name==null || kor_name==""){
						alert('이름을 입력해 주세요.');
						document.find2.kor_name.focus();
						return false;
					}else if(email1==null || email1==""){
						alert('EMAIL을 입력해 주세요.');
						document.find2.email1.focus();
						return false;
					}else if(email2==null || email2==""){
						alert('EMAIL을 입력해 주세요.');
						document.find2.email2.focus();
						return false;
					}else{
						document.find2.submit();
					}
				}
		</script>
	</head>
	<body>
		<jsp:include page="/resources/inc/Member_header.jsp"/>
		<div id="member_body_container">
			<div id="member_body_contents"><br><br>
				<table id="title" >
					<tr height="30px">
						<th width="120px" style="border-bottom:2px solid grey;"><font size="3px">비밀번호 찾기</font></th>
						<td align="right">01. 아이디 입력 > <b style="color:blue">02. 본인확인</b> > 03. 비밀번호확인 :</td>
					</tr>
				</table>
				<table id="summary">
					<tr height="50px">
						<td>비밀번호를 찾고자 하는 <b>개인정보</b>를 입력해 주세요</td>
					</tr>
				</table>
				<table id="body">
					<tr>
						<td align="center">
							<table style="width:270px;">
								<tr><td><br><b><font color="red">*</font>&nbsp;가입 시 등록된 이메일 [${id1}-${id2}-${id3}]</b></td></tr>
								<c:if test="${resultList=='[]'}">
									<tr>
										<td style="color:red;">
											<img src="/resources/img/common/coution.gif">&nbsp;해당 사업자 번호로 등록된 이메일이 없습니다.
										</td>
									</tr>
								</c:if>
								<c:forEach var="result" items="${resultList}" varStatus="status">
									<tr>
										<td style="padding-left:13px; height:25px;">
											${result.email1}@${result.email2}
										</td>
									</tr>
								</c:forEach>
							</table>
						</td>
					</tr>
					<tr>
						<td style="padding:20px;" align="center">
							<form action="/Find2.do" method="post" name="find2">
								<table style="width:270px;">
									<tr>
										<td width="80px"><b>(국 문)이  름</b></td><td><input type="text" name="kor_name"></td><td></td>
									</tr>
									<tr  >
										<td><b>이메일 주소</b></td>
										<td>
											<input type="text" style="width:60px;" name="email1" >
										  @ <input type="text" style="width:85px;" name="email2" >
										</td><td></td>
									</tr>
								</table>
								<input type="hidden" value="${id1}" name="id1">
								<input type="hidden" value="${id2}" name="id2">
								<input type="hidden" value="${id3}" name="id3">
							</form>
						</td>
					</tr>
				</table><br>
				<center>
					<input type="image" src="/resources/img/btn/kr_back_btn.png" onclick="javaScript:history.go(-1)">
					<input type="image" src="/resources/img/btn/kr_next_btn.png" onclick="formCheck();">
				</center><br>
				<hr>
				<jsp:include page="/resources/inc/Member_footer.jsp"/>
			</div>
		</div>
	</body>
</html>