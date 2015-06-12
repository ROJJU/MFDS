<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<title>STED</title>
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
							<td id="content_place">
								<jsp:include page="/resources/inc/my_tab/My_tab_02.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<div>
									<table id="sub_contents">
										<tr>
											<td id="sub_content" style="padding:10px; text-align:left;">
													<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;Payment</div><br>
													▶ 파일 정보
													<table style="border:1px solid black; width:100%; border-collapse:collapse;">
														<tr height="25px" style="background-color:#f2f2f2; border-top:4px solid #050099; border-bottom:1px solid grey;">
															<td align="center"><b>목차</b></td>
															<td align="center"><b>입력값</b></td>
														</tr>
														<tr>
															<td style="padding-left:10px;"><br>파일명</td>
															<td style="padding-left:10px; vertical-align:bottom;">${forms.title}</td>
														</tr>
														<tr>
															<td style="padding-left:10px;">ID(e-mail)</td>
															<td style="padding-left:10px;">${forms.id1}-${forms.id2}-${forms.id3}[${forms.email1}@${forms.email2}]</td>
														</tr>
														<tr>
															<td style="padding-left:10px;">품목명</td>
															<td style="padding-left:10px;">${forms.kor_name}[${forms.eng_name}]</td>
														</tr>
														<tr>
															<td style="padding-left:10px;">품목 등급</td>
															<td style="padding-left:10px;">${forms.p_class}</td>
														</tr>
														<tr>
															<td style="padding-left:10px; vertical-align:top;">작성일</td>
															<td style="padding-left:10px;">${forms.add_date}<br><br></td>
														</tr>
													</table><br>
													▶ 세금 계산서 입력<br>
													<form action="/Payment.do"  method="post" enctype="multipart/form-data" name="payment_pic">
														<input type="file" name="payment_pic">
														<input type="hidden" name="forms_seq" value="${forms.forms_seq}">
													</form>
													<table style="border:1px solid black; width:100%; padding:10px;">
														<tr>
															<td align="center">
															<c:choose>
																<c:when test="${forms.payment_pic==null}">
																	<font color="red">아직 입금 확인이 안된 파일 입니다.</font>
																</c:when>
																<c:otherwise>
																	<div>
																		<img src="/save/${forms.payment_pic}" id="my_payment">
																	</div>
																</c:otherwise>
															</c:choose>
															</td>
														</tr>
													</table>
													<div align="left"><br><br>
														<center>
															<input type="image" src="/resources/img/btn/save_btn.png" onclick="javaScript:document.payment_pic.submit()" width="50px">
															<input type="image" src="/resources/img/btn/list_btn.png" onclick="goUrl('/MyPage?page_seq=3')" width="50px;">
														</center>
														<br><hr>
														<img src="/resources/img/common/kgmp_address.png" width="500px"><br><br><br><br>
													</div>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<jsp:include page="/resources/inc/Main_footer.jsp"/>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
	</body>
</html>