<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="/resources/css/common/Base.css"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<link rel="stylesheet" href="/resources/css/account/style.css"/>
	<link href='http://fonts.googleapis.com/css?family=Metrophobic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="/resources/css/account/promptumenu.css" />
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub_table.css"/>"/>
	<style type="text/css">
		.file_img{
			padding-right:2px;
		}
		.file_text{
			font-weight:bold;
			cursor:hand;
			cursor:pointer;
			color:black;
		}
		.file_text:hover{
			text-decoration:underline;
		}
		.container{
			border:1px solid grey;
			box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
			-webkit-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
			-moz-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
			 width:98%;
			 padding:20px 0px 20px 0px;
		}
		
		li{
		cursor :hand;
		cursor:pointer;
		}
	</style>
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
								<jsp:include page="/resources/inc/my_tab/My_tab_04.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<div>
									<table id="sub_contents">
										<tr>
											<td id="sub_content" align="center">
												<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;My Forms</div>
												<div align="right" style="width:98%; padding-right:1px; padding-top:5px;">
													<form action="/MyPage.do?page_seq=6" method="post" name="notice">
														<select name="search">
															<option value="title">폴더명</option>
															<option value="kor_name">품목명</option>
														</select>
														<input type="text" name="find">  <input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScript:document.notice.submit();">
													</form>
												</div>
												<table>
													<tr>
														<td align="left">
															<div class="button"><strong>Documentation</strong> - <em>check your forms</em></div>
															<img src="/resources/img/forms/Books2.png" width="20px"><a class="file_text" href="/MyPage.do?page_seq=6">모두(<font color="black">${countAll}</font>)</a>&nbsp;
														  	<img src="/resources/img/forms/Books1.png" width="20px" class="file_img"><a class="file_text" href="/MyPage.do?page_seq=6&find=1">임시저장(<font color="red">${countIng}</font>)</a>&nbsp;
														 	<img src="/resources/img/forms/Books.png" width="20px" class="file_img"><a class="file_text" href="/MyPage.do?page_seq=6&find=2">작성완료(<font color="blue">${countDone}</font>)</a>&nbsp;
														 	<input type="image" src="/resources/img/account/calendar_re.png" width="60px;" onclick="location.href='/MyPage.do?page_seq=6';">
														</td>
													</tr>
												</table>
													<table style="border:none; width:98%;">
														<tr>
															<td style="border:none; border-bottom:2px solid grey; height:30px; padding-top:8px;" align="left">
																<a href="javaScript:goUrl('/MyPage.do?page_seq=6');" class="sub_tab_action" style="padding-bottom:12px;"><img src="/resources/img/forms/folder.png">&nbsp;폴더별 보기</a>
															</td>
														</tr>
													</table>
													<div class="container">
														<div class="example_3">
															<ul>
																<c:forEach var="a" items="${list}">
																	<c:if test="${a.payment=='1'||a.payment=='2'}">
																		<li style="text-align:center; width:120px; height:100px; overflow:auto;" onclick="payment(${a.forms_seq},${a.payment});">
																	</c:if>
																	<c:if test="${a.payment=='3'}">
																		<c:if test="${a.state=='1'}"><li style="text-align:center; width:120px; height:100px; overflow:auto;" onclick="payment(${a.forms_seq},${a.payment});"></c:if>
																		<c:if test="${a.state=='2'}">
																			<c:choose>
																				<c:when test="${a.help_state=='1'||a.help_state=='3'}">
																					<li style="text-align:center; width:120px; height:100px; overflow:auto;" onclick="javaScrip:alert('보완신청중인 서류는 열람하실 수 없습니다.')">
																				</c:when>
																				<c:otherwise>
																					<li style="text-align:center; width:120px; height:100px; overflow:auto;" onclick="tiny_box(${a.forms_seq});">
																				</c:otherwise>
																			</c:choose>
																		</c:if>
																	</c:if>
																		<c:if test="${a.state=='1'}"><input type="image" src="/resources/img/forms/Books1.png"></c:if>
																		<c:if test="${a.state=='2'}">
																			<c:choose>
																				<c:when test="${a.help_state=='1'}">
																					<input type="image" src="/resources/img/forms/Books_help1.png">
																				</c:when>
																				<c:when test="${a.help_state=='2'}">
																					<input type="image" src="/resources/img/forms/Books_help2.png">
																				</c:when>
																				<c:when test="${a.help_state=='3'}">
																					<input type="image" src="/resources/img/forms/Books_help3.png">
																				</c:when>
																				<c:when test="${a.help_state=='4'}">
																					<input type="image" src="/resources/img/forms/Books_help4.png">
																				</c:when>
																				<c:otherwise>
																					<input type="image" src="/resources/img/forms/Books.png">
																				</c:otherwise>
																			</c:choose>
																		</c:if>
																		<br>
																		<c:if test="${a.payment=='1'}"><b style="color:red;">[미결제]</b></c:if>
																		<c:if test="${a.payment=='2'}"><b style="color:blue;">[결제대기]</b></c:if>
																		<c:if test="${a.payment=='3'}"><b style="color:blue;">[결제완료]</b></c:if>
																		<br>${a.title}
																	</li>
																</c:forEach>
																<c:if test="${list=='[]'}"><font color="red"><br><br><br><br><br><img src="/resources/img/common/coution.gif">&nbsp;작성된 서류가 없습니다.</font></c:if>
															</ul>
															
														</div>
													</div>
													<br><br><br>
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
		
	<!--forms files s-->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/js/account/jquery.promptumenu.min.js"></script>
	<script type="text/javascript" src="/resources/js/account/tinybox.js"></script>
	<!--forms files e-->
		<script type="text/javascript">
			function tiny_box(forms_seq){TINY.box.show('/OTP.do?forms_seq='+forms_seq,1,300,150,1)};
			function payment(forms_seq, payment){
				window.open('/Payment.do?forms_seq='+forms_seq+'&payment='+payment,'payment','width=755 height=526 scrollbars=yes');
			}
			$(function(){
				$('.example_3 ul').promptumenu({
					'height': 500,
					'width':1000,
					'rows': 3,
					'columns': 5,
					'direction': 'horizontal',
					'pages': true
				});
			});
			function CheckOtp(forms_seq){
				var otp1=document.getElementById("otp1").value;
				var otp2=document.getElementById("otp2").value;
				if(otp1==otp2){
					goUrl('/updateOtp.do?forms_seq='+forms_seq+'&list_seq=1&otp='+otp1);
				}else{
					alert('잘못된 OTP를 입력하셨습니다.');
				}
			}
		</script>
	</body>
</html>