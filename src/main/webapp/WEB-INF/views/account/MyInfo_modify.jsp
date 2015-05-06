<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<script type="text/javascript" src="/resources/js/Main/jquery-1.3.2.js"></script>
	<script type="text/javascript" src="/resources/js/member/check_modify_info.js"></script>
	<style type="text/css">
	.my_font{
		font-size:14px;
	}
	#my_info{
		width:90%;
	}
	.heightTD{
		height:30px;
	}
	</style>
	<script type="text/javascript">
		var win=null;
		  function printIt(printThis){
		    win = window.open('','offprint','width=755 height=526');
		    self.focus();
		    win.document.open();
		    win.document.write('<'+'html'+'><'+'head'+'><'+'style'+'>');
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
		<div class="total_container" id="total_container">
			<div class="space"></div>
			<div id="total_content">
				<jsp:include page="/resources/inc/Sub_header.jsp"/>
				<div>
					<table id="container">
						<tr>
							<td id="side_menu_place" rowspan="1"><jsp:include page="/resources/inc/Side_menu.jsp"/></td>
							<td id="content_place" align="center">
								<jsp:include page="/resources/inc/my_tab/My_tab_01.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<br>
								<table id="body" width="1064px">
									<tr>
										<td style="padding:35px;" align="center">
										<form action="/updateMemberProc.do" method="post" name="join" enctype="multipart/form-data">
											<hr><br>
											<table id="total_info" style="text-align:left;">
												<tr height="30px">
													<td bgcolor="#BDBDBD" width="100%">&nbsp;<font color="red">*</font>&nbsp;<b>회원 정보</b></td>
												</tr>
												<tr>
													<td>
														<table>
															<tr>
																<td width="140px;" class="heightTD">ID(사업자 등록 번호) :</td>
																<td><input type="text" style="width:30px;" maxlength="3" name="id1" value="${memberInfo.id1}" readonly="readonly">
																 - <input type="text" style="width:20px;" maxlength="2" name="id2" value="${memberInfo.id2}" readonly="readonly">
																 - <input type="text" style="width:50px;" maxlength="5" name="id3" value="${memberInfo.id3}" readonly="readonly">
																 <input type="hidden" value="${memberInfo.member_seq}" name="member_seq"/>
																 </td><td></td>
															</tr>
															<tr>
																<td class="heightTD">사용자 이메일 :</td>
																<td>
																	<input type="text" style="width:60px;" name="email1" value="${memberInfo.email1}" readonly="readonly">
																  @ <input type="text" style="width:90px;" name="email2" value="${memberInfo.email2}" readonly="readonly">
																 </td><td style="color:red;">&nbsp;거래 관련 이메일, 회사의 주요정책 관련 공지메일 등이 발송됩니다.</td>
															</tr>
															<tr>
																<td class="heightTD">비밀번호 :</td><td><input type="password" id="pw_1" name="pw_1" value="${memberInfo.pw_1}"></td><td style="color:red;">&nbsp;8~15자의 영문/숫자/특수문자 혼용만 가능합니다.</td>
															</tr>
															<tr>
																<td class="heightTD">비밀번호 재확인:</td><td><input type="password" id="pw_2" name="pw_2"></td><td>&nbsp;<label id="lbl_pw_check"></label></td>
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
																<td width="125px;" class="heightTD">이름 :</td><td>국문 <input type="text" name="kor_name" style="width:100px;" value="${memberInfo.kor_name}"> | 한문 <input type="text" name="cha_name" style="width:100px;" value="${memberInfo.cha_name}"> | 영문 <input type="text" name="eng_name" value="${memberInfo.eng_name}"><a style="color:red; text-decoration:none;" >&nbsp;공백/특수문자 사용할수 없습니다.</a></td>
															</tr>
															<tr>
																<td class="heightTD">주소 :</td>
																<td>
																	<input type="button" value="우편번호찾기" onclick="getPost(1);">
																	<input type="text" style="width:520px;" name="address" readonly value="${memberInfo.address}">
																</td>
															</tr>
															<tr>
																<td class="heightTD">전화번호 :</td><td><input type="text" style="width:60px;" name="phone1" value="${memberInfo.phone1}">-<input type="text" style="width:60px;" name="phone2" value="${memberInfo.phone2}">-<input type="text" style="width:60px;" name="phone3" value="${memberInfo.phone3}"></td>
															</tr>
															<tr>
																<td class="heightTD">휴대전화번호:</td><td><select style="width:64px;" name="cell_phone1" ><option value="010">010</option><option value="017">017</option><option value="019">019</option><option value="018">018</option></select>-<input type="text" style="width:60px;" name="cell_phone2" value="${memberInfo.cell_phone2}">-<input type="text" style="width:60px;" name="cell_phone3" value="${memberInfo.cell_phone3}"></td>
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
																<td width="125px;" class="heightTD">회사명 :</td><td>국문 <input type="text" name="company_kor" value="${memberInfo.company_kor}"> | 영문 <input type="text" name="company_eng" value="${memberInfo.company_eng}"><a style="color:red; text-decoration:none;">&nbsp;사업자 등록증과 같아야 합니다.</a></td>
															</tr>
															<tr>
																<td></td>
																<td><input type="button" value="상위 정보와 동일" onclick="copy();"> 위의 정보(담당자 정보)와 주소/전화번호가 같을 경우 눌러주세요</td>
															</tr>
															<tr>
																<td class="heightTD">회사주소 :</td>
																<td>
																	<input type="button" value="우편번호찾기" onclick="getPost(2)">
																	<input type="text" style="width:520px;" name="company_address" readonly value="${memberInfo.company_address}">
																</td>
															</tr>
															<tr>
																<td class="heightTD">전화번호 :</td><td><input type="text" style="width:60px;" name="company_phone1" value="${memberInfo.company_phone1}">-<input type="text" style="width:60px;" name="company_phone2" value="${memberInfo.company_phone2}">-<input type="text" style="width:60px;" name="company_phone3" value="${memberInfo.company_phone3}"></td>
															</tr>
															<tr>
																<td class="heightTD">대표자:</td><td><input type="text" name="ceo" value="${memberInfo.ceo}"></td>
															</tr>
															<tr>
																<td style="vertical-align:top;" class="heightTD">사업자 등록증 사본:</td>
																<td class="heightTD"><input type="file" name="company_file" ><a style="color:red; text-decoration:none;">&nbsp;이미지만 업로드 가능합니다.(bmp,gif,jpg,jpeg,png)</a><br>
																현제 등록된 파일 : ${memberInfo.company_file} (파일명은 등록시 자동으로 변경 됩니다.)
																<input type="hidden" value="${memberInfo.company_file}" name="company_file_old">
																</td>
															</tr>
														</table><br>
													</td>
												</tr>
											</table>
										<hr>
										<input type="hidden" name="finance" value="-">
										<input type="hidden" name="worker" value="-">
										<input type="hidden" name="product" value="-">
										<input type="hidden" name="insurance_no" value="0">
										<input type="hidden" name="company_fax1" value="0">
										<input type="hidden" name="company_fax2" value="0">
										<input type="hidden" name="company_fax3" value="0">
											<br><br>
										</form>
											<input type="image" src="/resources/img/btn/modify_btn.png" onclick="formCheck();" width="60px">
											<input type="image" src="/resources/img/btn/cancel_button.png" onclick="javaScript:history.go(-1)" width="60px">
											<br><br>
										</td>
									</tr>
								</table>
							<hr><br><br><br><br>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
	</body>
</html>