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
			width:800px;
			}
			table#total_text{
			width:800px;
			}
			table#sign{width:800px;}
		</style>
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
		<jsp:include page="/resources/inc/Member_header.jsp"/>
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
							<table id="total_text">
								<tr>
									<td>
										<font color="red">*</font>&nbsp;가입완료 :<br><br>
										<b>STED</b>회원가입을 축하 드립니다!<br>
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
												<td width="125px;">ID(사업자 등록 번호) :</td><td>12-345-67890</td><td></td>
											</tr>
											<tr>
												<td>사용자 이메일 :</td><td>sted@k-gmp.com</td><td></td>
											</tr>
											<tr>
												<td>비밀번호 :</td><td>kgmp0315480055</td><td></td>
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
												<td width="125px;">이름 :</td><td>김찬홍 | 金燦弘 | CHANHONG KIM</td>
											</tr>
											<tr>
												<td>주소 :</td><td>경기도 수원시 천천동 천천푸르지오 아파트 121동 402호</td>
											</tr>
											<tr>
												<td>전화번호 :</td><td>070-4652-3187</td>
											</tr>
											<tr>
												<td>휴대전화번호:</td><td>010-8801-2036</td>
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
												<td width="125px;">회사명 :</td><td>한국지엠피 | K-GMP</td>
											</tr>
											<tr>
												<td>회사주소 :</td><td>경기도 수원시 장안구 성균관대학교 자연과학캠퍼스 산학협력센터 85513호</td>
											</tr>
											<tr>
												<td>전화번호 :</td><td>031-548-0055</td>
											</tr>
											<tr>
												<td>FAX번호:</td><td>0505-369-0055</td>
											</tr>
											<tr>
												<td>대표자:</td><td>김효진</td>
											</tr>
											<tr>
												<td>사업자 등록증 사본:</td><td>K-GMP 사업자 등록 사본.jpg</td>
											</tr>
											<tr>
												<td>고용보험 관리번호:</td><td>123-456-45634</td>
											</tr>
											<tr>
												<td>주요생산품:</td><td>서비스</td>
											</tr>
											<tr>
												<td>매출액:</td><td>-</td>
											</tr>
											<tr>
												<td>종업원수:</td><td>4</td>
											</tr>
										</table><br>
									</td>
								</tr>
							</table>
						<hr>
							<table id="sign">
								<tr>
									<td>
										<center>
											<br><br><br>
											상기 정보에 따라 (주)한국지엠피 STED 회원 가입이 신청 되었음을 증명 합니다.<br><br><br>
											2014년 11월 25일<br><br><br>
											<h1>(주)한국 지엠피<br><br>
											한국의료산업품질연구원</h1>
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
						<input type="image" src="/resources/img/member/print_btn.png" onClick="javascript:printIt(document.getElementById('body').innerHTML)"><br><br>
						<font size="1.5px"><a href="#">이용약관</a> | <a href="#"><b>개인정보취급방침</b></a> | <a href="#">책임의 한계와 법적고지</a> | <a href="#">회원정보 고객센터</a></font><br><br>
						<img src="<c:url value="/resources/img/common/kgmp_logo.gif"/>" width="50px">&nbsp;<font size="1px">Copyright © <b>K-GMP Corp.</b> All Rights Reserved.</font>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>