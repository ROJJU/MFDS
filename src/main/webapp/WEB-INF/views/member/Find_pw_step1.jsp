<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Member_header.jsp"/>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="/resources/css/member/Find.css"/>
		<script type="text/javascript">
				function formCheck(){
					var id1=document.find1.id1.value;
					var id2=document.find1.id2.value;
					var id3=document.find1.id3.value;
					if(id1==null || id1==""){
						alert('ID(사업자등록번호)를 입력해 주세요.');
						document.find1.id1.focus();
						return false;
					}else if(id2==null || id2==""){
						alert('ID(사업자등록번호)를 입력해 주세요.');
						document.find1.id2.focus();
						return false;
					}else if(id3==null || id3==""){
						alert('ID(사업자등록번호)를 입력해 주세요.');
						document.find1.id3.focus();
						return false;
					}else{
						document.find1.submit();
					}
				}
		</script>
	</head>
	<body>
		<div id="member_body_container">
			<div id="member_body_contents"><br><br>
				<table id="title">
					<tr height="30px">
						<th width="120px" style="border-bottom:2px solid grey;"><font size="3px">비밀번호 찾기</font></th>
						<td align="right"><b style="color:blue">01. 아이디 입력</b> > 02. 본인확인 > 03. 비밀번호확인 :</td>
					</tr>
				</table>
				<table id="summary">
					<tr height="50px">
						<td>비밀번호를 찾고자 하는 <b>아이디(사업자 등록 번호)</b>를 입력해 주세요</td>
					</tr>
				</table>
				<form action="/Find1.do" method="post" name="find1">
					<table id="body">
						<tr>
							<td align="center">
								<font color="red">*</font>&nbsp;ID(사업자 등록 번호) :
								 <input type="text" style="width:30px;" maxlength="3" name="id1">
								  - <input type="text" style="width:20px;" maxlength="2" name="id2">
								   - <input type="text" style="width:50px;" maxlength="5" name="id3">
							</td>
						</tr>
					</table>
				</form>
				<table id="button">
					<tr height=80px;>
						<td align="center">
							<input type="image" src="/resources/img/btn/kr_back_btn.png" onclick="javaScript:history.go(-1)">&nbsp;
							<input type="image" src="/resources/img/btn/kr_next_btn.png" onclick="formCheck();">
						</td>
					</tr>
				</table>
				<hr>
				<jsp:include page="/resources/inc/Member_footer.jsp"/>
			</div>
		</div>
	</body>
</html>