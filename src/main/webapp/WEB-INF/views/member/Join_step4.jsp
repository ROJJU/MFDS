<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Member_header.jsp"/>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="stylesheet" href="/resources/css/member/Join.css"/>
		<script type="text/javascript">
		var win=null;
		  function printIt(printThis){
		    win = window.open('','offprint','width=755 height=526');
		    self.focus();
		    win.document.open();
		    win.document.write('<'+'html'+'><'+'head'+'><'+'style'+'>');
		    win.document.write('#member_body_container{position:relative;width:100%;height:100%;}#member_body_contents{position:relative;width:1064px;margin:0 auto;}table{border-collapse:collapse;font-size:12px;}#title tr{border-bottom:1px solid grey;}table#body{border:1px solid grey;background-color:#ffffff;height:120px;}table#info{width:500px;border:1px solid grey;}table#info td{border:1px solid grey;}table#text{width:500px;}table#total_info{width:800px;}table#total_text{width:800px;}table#sign{width:800px;}');
		    win.document.write('<'+'/'+'style'+'><'+'/'+'head'+'><'+'body'+'>');
		    win.document.write('<br/><hr style="border: solid 1px grey;"/><br/><br/><br/>');
		    win.document.write(printThis);
		    win.document.write('<br/><br/><br/><hr style="border: solid 1px grey;"/>');
		    win.document.write('<'+'/'+'body'+'><'+'/'+'html'+'>');
		    win.document.close();
		    win.print();
		    win.close();
		  }
		</script>
	</head>
	<body>
		<div id="member_body_container">
			<div id="member_body_contents"><br><br>
				<table id="title" width="1064px">
					<tr height="30px">
						<th width="120px" style="border-bottom:2px solid grey;"><font size="3px">회원가입</font></th>
						<td align="right">01. 약관동의 > 02. 가입여부 확인 > 03. 개인정보 입력 ><b style="color:blue"> 04. 가입완료</b> : </td>
					</tr>
				</table>
				<table id="body" width="1064px">
					<tr>
						<td style="padding:35px;" align="center">
							<table id="total_text">
								<tr>
									<td align="center">
										<img src="<c:url value="/resources/img/common/sted_logo.png"/>" width="330px"><br><br>
									</td>
								</tr>
							</table>
							<hr><br>
							<table id="total_text" style="text-align:left;">
								<tr>
									<td>
										<font color="red">*</font>&nbsp;가입완료 :<br><br>
										<b>STED</b>회원가입을 축하 드립니다!<br>
									</td>
								</tr>
							</table>
							<table id="total_info" style="text-align:left;">
								<tr height="30px">
									<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>회원 정보</b></td>
								</tr>
								<tr>
									<td>
										<table style="text-align:left;">
											<tr>
												<td width="125px;">ID(사업자 등록 번호) :</td><td>${memberInfo.id1}-${memberInfo.id2}-${memberInfo.id3}</td><td></td>
											</tr>
											<tr>
												<td>사용자 이메일 :</td><td>${memberInfo.email1}@${memberInfo.email2}</td><td></td>
											</tr>
										</table><br>
									</td>
								</tr>
								<tr height="30px">
									<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>담당자 정보</b></td>
								</tr>
								<tr>
									<td>
										<table style="text-align:left;">
											<tr>
												<td width="125px;">이름 :</td><td>${memberInfo.kor_name} | ${memberInfo.cha_name} | ${memberInfo.eng_name}</td>
											</tr>
											<tr>
												<td>주소 :</td><td>${memberInfo.address}</td>
											</tr>
											<tr>
												<td>전화번호 :</td><td>${memberInfo.phone1}-${memberInfo.phone2}-${memberInfo.phone3}</td>
											</tr>
											<tr>
												<td>휴대전화번호:</td><td>${memberInfo.cell_phone1}-${memberInfo.cell_phone2}-${memberInfo.cell_phone3}</td>
											</tr>
										</table><br>
									</td>
								</tr>
								<tr height="30px">
									<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>회사 정보</b></td>
								</tr>
								<tr>
									<td>
										<table style="text-align:left;">
											<tr>
												<td width="125px;">회사명 :</td><td>${memberInfo.company_kor} | ${memberInfo.company_eng}</td>
											</tr>
											<tr>
												<td>회사주소 :</td><td>${memberInfo.company_address}</td>
											</tr>
											<tr>
												<td>전화번호 :</td><td>${memberInfo.company_phone1}-${memberInfo.company_phone2}-${memberInfo.company_phone3}</td>
											</tr>
											<tr>
												<td>대표자:</td><td>${memberInfo.ceo}</td>
											</tr>
											<tr>
												<td>사업자 등록증 사본:</td><td>${memberInfo.company_file}</td>
											</tr>
										</table><br>
									</td>
								</tr>
							</table>
						<hr>
							<table id="sign" style="text-align:left;">
								<tr>
									<td style="font-size:14px;">
										<center>
											<br><br>
											상기 정보에 따라 (주)한국지엠피 STED 회원 가입이 신청 되었음을 증명 합니다.<br><br>
											${nowYear}년 ${nowMonth}월 ${nowDay}일<br>
											<img src="/resources/img/member/join4.jpg">
										</center>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table id="button" width="1064px">
					<tr height=100px;>
						<td align="center"><br>
						<input type="image" src='<c:url value="/resources/img/member/Login_button_small.png"/>' onclick="javaScript:location.href='/Login.do'">&nbsp;
						<input type="image" src="/resources/img/member/print_btn.png" onClick="javascript:printIt(document.getElementById('body').innerHTML)"><br><br>
						<hr><jsp:include page="/resources/inc/Member_footer.jsp"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>