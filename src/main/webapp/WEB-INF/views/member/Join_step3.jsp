<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="stylesheet" href="/resources/css/member/Join.css"/>
		<script type="text/javascript" src="/resources/js/Main/jquery-1.3.2.js"></script>
		<script type="text/javascript" src="/resources/js/member/check_join_info.js"></script>
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
						<form action="/join.do" method="post" name="join" enctype="multipart/form-data">
							<hr><br>
							<table id="total_text" style="text-align:left;">
								<tr>
									<td>
										<font color="red">*</font>&nbsp;개인정보 입력 :<br><br>
										<b>회원가입</b>을 위한 개인정보를 입력해 주세요<br>
									</td>
								</tr>
							</table>
							<table id="total_info" style="text-align:left;">
								<tr height="30px">
									<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>회원 정보</b></td>
								</tr>
								<tr>
									<td>
										<table>
											<tr>
												<td width="125px;">ID(사업자 등록 번호) :</td>
												<td><input type="text" style="width:30px;" maxlength="3" name="id1" value="<%=request.getParameter("id1")%>" readonly="readonly">
												 - <input type="text" style="width:20px;" maxlength="2" name="id2" value="<%=request.getParameter("id2")%>" readonly="readonly">
												 - <input type="text" style="width:50px;" maxlength="5" name="id3" value="<%=request.getParameter("id3")%>" readonly="readonly">
												 </td><td></td>
											</tr>
											<tr>
												<td>사용자 이메일 :</td>
												<td>
													<input type="text" style="width:60px;" name="email1" value="<%=request.getParameter("email1")%>" readonly="readonly">
												  @ <input type="text" style="width:90px;" name="email2" value="<%=request.getParameter("email2")%>" readonly="readonly">
												 </td><td style="color:red;">&nbsp;거래 관련 이메일, 회사의 주요정책 관련 공지메일 등이 발송됩니다.</td>
											</tr>
											<tr>
												<td>비밀번호 :</td><td><input type="password" id="pw_1" name="pw_1"></td><td style="color:red;">&nbsp;8~15자의 영문/숫자/특수문자 혼용만 가능합니다.</td>
											</tr>
											<tr>
												<td>비밀번호 재확인:</td><td><input type="password" id="pw_2" name="pw_2"></td><td>&nbsp;<label id="lbl_pw_check"></label></td>
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
												<td width="125px;">이름 :</td><td>국문 <input type="text" name="kor_name" style="width:100px;"> | 한문 <input type="text" name="cha_name" style="width:100px;"> | 영문 <input type="text" name="eng_name" style="width:100px;"><a style="color:red; text-decoration:none;">&nbsp;공백/특수문자 사용할수 없습니다.</a></td>
											</tr>
											<tr>
												<td>주소 :</td>
												<td>
													<input type="button" value="우편번호찾기" onclick="getPost(1);">
													<input type="text" style="width:520px;" name="address" readonly>
												</td>
											</tr>
											<tr>
												<td>전화번호 :</td><td><input type="text" style="width:60px;" name="phone1">-<input type="text" style="width:60px;" name="phone2">-<input type="text" style="width:60px;" name="phone3"></td>
											</tr>
											<tr>
												<td>휴대전화번호:</td><td><select style="width:64px;" name="cell_phone1"><option value="010">010</option><option value="017">017</option><option value="019">019</option><option value="018">018</option></select>-<input type="text" style="width:60px;" name="cell_phone2">-<input type="text" style="width:60px;" name="cell_phone3"></td>
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
												<td width="125px;">회사명 :</td><td>국문 <input type="text" name="company_kor"> | 영문 <input type="text" name="company_eng"><a style="color:red; text-decoration:none;">&nbsp;사업자등록증과 동일하게 입력해주세요.</a></td>
											</tr>
											<tr>
												<td></td>
												<td><input type="button" value="상위 정보와 동일" onclick="copy();"> 위의 정보(담당자 정보)와 주소/전화번호가 같을 경우 눌러주세요</td>
											</tr>
											<tr>
												<td>회사주소 :</td>
												<td>
													<input type="button" value="우편번호찾기" onclick="getPost(2)">
													<input type="text" style="width:520px;" name="company_address" readonly>
												</td>
											</tr>
											<tr>
												<td>전화번호 :</td><td><input type="text" style="width:60px;" name="company_phone1">-<input type="text" style="width:60px;" name="company_phone2">-<input type="text" style="width:60px;" name="company_phone3"></td>
											</tr>
											<tr>
												<td>FAX번호:</td><td><input type="text" style="width:60px;" name="company_fax1">-<input type="text" style="width:60px;" name="company_fax2">-<input type="text" style="width:60px;" name="company_fax3"></td>
											</tr>
											<tr>
												<td>대표자:</td><td><input type="text" name="ceo"></td>
											</tr>
											<tr>
												<td>사업자 등록증 사본:</td><td><input type="file" name="company_file"><a style="color:red; text-decoration:none;">&nbsp;이미지만 업로드 가능합니다.(bmp,gif,jpg,jpeg,png)</a></td>
											</tr>
											<tr>
												<td>고용보험 관리번호:</td><td><input type="text" name="insurance_no" value="<%=request.getParameter("id1")%><%=request.getParameter("id2")%><%=request.getParameter("id3")%>0" readonly><br><font color="red"> * 고용보험 사업장관리번호는 4대보험이 통합되면서 해당 사업장의 사업자고유번호 (사업자등록증번호)+0으로 부여됩니다</font></td>
											</tr>
											<tr>
												<td>주요생산품:</td><td><input type="text" name="product" maxlength="99"></td>
											</tr>
											<tr>
												<td>매출액:</td><td><input type="text" name="finance" maxlength="99">&nbsp;만원</td>
											</tr>
											<tr>
												<td>종업원수:</td><td><input type="text" name="worker" maxlength="99">&nbsp;명</td>
											</tr>
										</table><br>
									</td>
								</tr>
							</table>
						<hr>
							<br><br>
						</form>
							<input type="image" src="/resources/img/member/Submit_button.png" onclick="formCheck();">
							<input type="image" src="/resources/img/member/cancel_btn.png" onclick="javaScript:location.href='/Login.do'">
							<br><br>
						</td>
					</tr>
				</table>
				<table id="button" width="1064px">
					<tr height=100px;>
						<td align="center"><br>
						<hr><jsp:include page="/resources/inc/Member_footer.jsp"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>