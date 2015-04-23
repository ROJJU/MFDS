<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<title>STED</title>
	<script type="text/javascript">
		var win=null;
		  function printIt(printThis){
		    win = window.open('','offprint','width=755 height=526');
		    self.focus();
		    win.document.open();
		    win.document.write('<'+'html'+'><'+'head'+'><'+'style'+'>');
		    win.document.write('<'+'/'+'style'+'><'+'/'+'head'+'><'+'body'+'>');
		    win.document.write(printThis);
		    win.document.write('<'+'/'+'body'+'><'+'/'+'html'+'>');
		    win.document.close();
		    win.print();
		    win.close();
		  }
		  
		  function show_pic(){
			  $("#payment_pic").css("display","block");
			  $("#payment_pic_btn").css("display","none");
		  }
	</script>
	<style type="text/css">
	#payment_pic{
	display:none;
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
								<jsp:include page="/resources/inc/my_tab/My_tab_02.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<div>
									<table width="100%">
										<tr>
											<td id="sub_content" align="center" style="padding:10px;">
													<div align="left"><img src="/resources/img/forms/next.gif">&nbsp;Payment<br><br>
													<img src="/resources/img/common/kgmp_logo.gif" width="100px"> 세금계산서<br><hr><br>
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
															<td style="padding-left:10px;">${forms.id1}-${forms.id2}-${forms.id3}[${forms.email1}@${forms.email2}]
																<input type="hidden" id="id1" value="${forms.id1}">
																<input type="hidden" id="id2" value="${forms.id2}">
																<input type="hidden" id="id3" value="${forms.id3}">
																<input type="hidden" id="email1" value="${forms.email1}">
																<input type="hidden" id="email2" value="${forms.email2}">
																<input type="hidden" id="sessionid1" value="${id1}">
																<input type="hidden" id="sessionid2" value="${id2}">
																<input type="hidden" id="sessionid3" value="${id3}">
																<input type="hidden" id="sessionemail1" value="${email1}">
																<input type="hidden" id="sessionemail2" value="${email2}">
															</td>
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
													한국지엠피에서 고객님께 제공해 드리는 세금계산서 입니다.<br>
													▶ 매출전자세금계산서 정보
													</div>
													<table style="border:1px solid black; width:100%; padding:10px;">
														<tr>
															<td align="center">
															<c:choose>
																<c:when test="${forms.payment_pic==null}">
																	<font color="red">아직 입금 확인이 안된 파일 입니다.</font>
																</c:when>
																<c:otherwise>
																	<input type="image" src="/resources/img/account/bill.png"  onclick="show_pic()" id="payment_pic_btn">
																	<div id="my_payment">
																		<img src="/resources/img/upload/payment/${forms.payment_pic}" id="payment_pic" width="600px">
																		<form action="/resources/inc/Download.jsp" method="post" name="down">
																			<input type="hidden" name="n_file" value="${forms.payment_pic}">
																			<input type="hidden" name="file_path" value="/resources/img/upload/payment">
																		</form>
																	</div>
																</c:otherwise>
															</c:choose>
															</td>
														</tr>
													</table>
													<div align="left"><br><br>
													<center>
														<input type="image" src="/resources/img/btn/list_btn.png" onclick="history.go(-1);" width="60px;">
														&nbsp;<input type="image" src="/resources/img/member/print_btn.png" onClick="javascript:printIt(document.getElementById('my_payment').innerHTML)" width="60xp;">
														&nbsp;<input type="image" src="/resources/img/btn/down_button.png" width="60px;" onclick="javaScript:document.down.submit();">
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
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
		<script type="text/javascript">
		function check(){
			  var id1 = document.getElementById("id1").value;
			  var id2 = document.getElementById("id2").value;
			  var id3 = document.getElementById("id3").value;
			  var sessionid1 = document.getElementById("sessionid1").value;
			  var sessionid2 = document.getElementById("sessionid2").value;
			  var sessionid3 = document.getElementById("sessionid3").value;
			  var email1 = document.getElementById("email1").value;
			  var email2 = document.getElementById("email2").value;
			  var sessionemail1 = document.getElementById("sessionemail1").value;
			  var sessionemail2 = document.getElementById("sessionemail2").value;
			  if(id1!=sessionid1||id2!=sessionid2||id3!=sessionid3||email1!=sessionemail1||email2!=sessionemail2){
				  alert("잘못된 경로로 접근 하였으므로 로그아웃 됩니다.");
				  location.href="/";
			  }
		  }
		  check();
		</script>
	</body>
</html>