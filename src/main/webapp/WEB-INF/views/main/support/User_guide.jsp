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
								<jsp:include page="/resources/inc/sub_tab/Sub_tab_05.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<jsp:include page="/resources/inc/main_title/Support.jsp"/>
								<div>
									<table id="sub_contents">
										<tr>
											<td id="sub_content" align="center">
												<table style="border:none; width:100%;">
													<tr>
														<td style="border:none; border-bottom:2px solid grey; height:30px; padding-top:8px;" align="left">
															<a href="javaScript:goUrl('/Support.do?page_seq=2');" class="sub_tab" style="margin-left:8px;">FAQ</a>
													  &nbsp;<a href="javaScript:goUrl('/Support.do?page_seq=1');" class="sub_tab_action">User guide</a></td>
													</tr>
												</table>
												<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;User Guide</div>
												<div style="background-image:url('/resources/img/main/guide_back.png'); background-size:950px; background-repeat:no-repeat; background-position:50% 0%; height:1050px;">
													<div></div>
													<div></div>
													<div style="text-align:left; position:relative; margin:0 auto; width:600px; padding-left:380px; top:132px; height:220px;">
														<table style="float:left; margin-right:40px;">
															<tr>
																<td rowspan="2"><img src="/resources/img/main/guide/05.jpg" width="150px;"></td>
																<td style="vertical-align:top; padding-left:5px;"><b>제1부</b><br><b style="color:grey;">회원가입</b></td>
															</tr>
															<tr>
																<td style="vertical-align:bottom; padding-left:5px;">
																	<input type="image" src="/resources/img/main/PDF_button.png" width="45px;" onclick="showPDF('Member.pdf', '3')">
																	<input type="image" src="/resources/img/main/EBOOK_button.png" width="50px;" onclick="showPDF('Member.pdf', '4')">
																</td>
															</tr>
														</table>
														<table style="float:left;">
															<tr>
																<td rowspan="2"><img src="/resources/img/main/guide/03.jpg" width="150px;"></td>
																<td style="vertical-align:top; padding-left:5px;"><b>제2부</b><br><b style="color:grey;">메인페이지</b></td>
															</tr>
															<tr>
																<td style="vertical-align:bottom; padding-left:5px;">
																	<input type="image" src="/resources/img/main/PDF_button.png" width="45px;" onclick="showPDF('Main.pdf', '3')">
																	<input type="image" src="/resources/img/main/EBOOK_button.png" width="50px;" onclick="showPDF('Main.pdf', '4')">
																</td>
															</tr>
														</table>
													</div>
													<div style="text-align:left; position:relative; margin:0 auto; width:900px; padding-left:80px; top:159px; height:220px;">
														<table style="float:left; margin-right:40px;">
															<tr>
																<td rowspan="2"><img src="/resources/img/main/guide/02.jpg" width="150px;"></td>
																<td style="vertical-align:top; padding-left:5px;"><b>제3부</b><br><b style="color:grey;">마이페이지</b></td>
															</tr>
															<tr>
																<td style="vertical-align:bottom; padding-left:5px;">
																	<input type="image" src="/resources/img/main/PDF_button.png" width="45px;" onclick="showPDF('My.pdf', '3')">
																	<input type="image" src="/resources/img/main/EBOOK_button.png" width="50px;" onclick="showPDF('My.pdf', '4')">
																</td>
															</tr>
														</table>
														<table style="float:left; margin-right:40px;">
															<tr>
																<td rowspan="2"><img src="/resources/img/main/guide/01.jpg" width="150px;"></td>
																<td style="vertical-align:top; padding-left:5px;"><b>제4부</b><br><b style="color:grey;">결제</b></td>
															</tr>
															<tr>
																<td style="vertical-align:bottom; padding-left:5px;">
																	<input type="image" src="/resources/img/main/PDF_button.png" width="45px;" onclick="showPDF('Payment.pdf', '3')">
																	<input type="image" src="/resources/img/main/EBOOK_button.png" width="50px;" onclick="showPDF('Payment.pdf', '4')">
																</td>
															</tr>
														</table>
														<table style="float:left;">
															<tr>
																<td rowspan="2"><img src="/resources/img/main/guide/04.jpg" width="150px;"></td>
																<td style="vertical-align:top; padding-left:5px;"><b>제5부</b><br><b style="color:grey;">서식작성</b></td>
															</tr>
															<tr>
																<td style="vertical-align:bottom; padding-left:5px;">
																	<input type="image" src="/resources/img/main/PDF_button.png" width="45px;" onclick="showPDF('Form.pdf', '3')">
																	<input type="image" src="/resources/img/main/EBOOK_button.png" width="50px;" onclick="showPDF('Form.pdf', '4')">
																</td>
															</tr>
														</table>
													</div>
													<!--
													<div style="text-align:left; position:relative; margin:0 auto; width:900px; padding-left:80px; top:199px; height:220px;">
														<table style="float:left; margin-right:40px;">
															<tr>
																<td rowspan="2"><img src="/resources/img/main/guide.jpeg" width="150px;"></td>
																<td style="vertical-align:top; padding-left:5px;"><b>제1부</b><br><b style="color:grey;">사용 시작</b></td>
															</tr>
															<tr>
																<td style="vertical-align:bottom; padding-left:5px;">
																	<input type="image" src="/resources/img/main/PDF_button.png" width="45px;" onclick="goUrl('/Support.do?page_seq=3')">
																	<input type="image" src="/resources/img/main/EBOOK_button.png" width="50px;" onclick="goUrl('/Support.do?page_seq=4')">
																</td>
															</tr>
														</table>
														<table style="float:left; margin-right:40px;">
															<tr>
																<td rowspan="2"><img src="/resources/img/main/guide.jpeg" width="150px;"></td>
																<td style="vertical-align:top; padding-left:5px;"><b>제1부</b><br><b style="color:grey;">사용 시작</b></td>
															</tr>
															<tr>
																<td style="vertical-align:bottom; padding-left:5px;">
																	<input type="image" src="/resources/img/main/PDF_button.png" width="45px;" onclick="goUrl('/Support.do?page_seq=3')">
																	<input type="image" src="/resources/img/main/EBOOK_button.png" width="50px;" onclick="goUrl('/Support.do?page_seq=4')">
																</td>
															</tr>
														</table>
														<table style="float:left;">
															<tr>
																<td rowspan="2"><img src="/resources/img/main/guide.jpeg" width="150px;"></td>
																<td style="vertical-align:top; padding-left:5px;"><b>제1부</b><br><b style="color:grey;">사용 시작</b></td>
															</tr>
															<tr>
																<td style="vertical-align:bottom; padding-left:5px;">
																	<input type="image" src="/resources/img/main/PDF_button.png" width="45px;" onclick="goUrl('/Support.do?page_seq=3')">
																	<input type="image" src="/resources/img/main/EBOOK_button.png" width="50px;" onclick="goUrl('/Support.do?page_seq=4')">
																</td>
															</tr>
														</table>
													</div>
													  -->
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
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
		<script type="text/javascript">
			function showPDF(PDF, page){
				location.href="/Support.do?page_seq="+page+"&pdf="+PDF;
			}
		</script>
	</body>
</html>