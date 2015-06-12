<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<link rel="stylesheet" type="text/css" href="/resources/css/main/jquery.hrzAccordion.defaults.css"/>
	<link rel="stylesheet" type="text/css" href="/resources/css/main/jquery.hrzAccordion.examples.css"/>
	
		<title>STED</title>
		<script>
	      window.onresize = function () { //리사이즈 이벤트를 체크
	         alert("리사이즈시 이벤트 호출");
	      }
	  </script>
	</head>
	<body >
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
											<td id="sub_content" align="left">
												<table style="border:none; width:100%;">
													<tr>
														<td style="border:none; border-bottom:2px solid grey; height:30px; padding-top:8px;">
															<a href="javaScript:goUrl('/Support.do?page_seq=2');" class="sub_tab_action" style="margin-left:8px;">FAQ</a>
													  &nbsp;<a href="javaScript:goUrl('/Support.do?page_seq=1');" class="sub_tab">User guide</a></td>
													</tr>
												</table>
												<div align="left" id="sub_title">
													<h1><img src="/resources/img/account/FAQimage.png" width="50px">&nbsp;FAQ게시판이란?</h1>
													<p style="font-size:12px;">
													대다수 사용자들이 공통적으로 문의하고자 하는 사항에 대해 질문과 답변을 함께 올려놓는 게시판입니다.<br>
													FAQ게시판에는 별도로 사용자가 질문을 게재할 수 없으며, 추가적인 질문사항이 들어올 경우 게시판은 계속해서 업데이트 됩니다.<br>
													</p>
												</div><br><br>
													<center>
														<input type="image" src="/resources/img/main/FAQ-1_button.png" onclick="$('#test3Handle0').click()"> | 
														<input type="image" src="/resources/img/main/FAQ-2_button.png" onclick="$('#test3Handle1').click()"> |
														<input type="image" src="/resources/img/main/FAQ-3_button.png" onclick="$('#test3Handle2').click()"> | 
														<input type="image" src="/resources/img/main/FAQ-4_button.png" onclick="$('#test3Handle3').click()"> |  
														<input type="image" src="/resources/img/main/FAQ-5_button.png" onclick="$('#test3Handle4').click()"> |
													</center> 
													<br><br>
													<ul class="test3">
													  <li><div class="handle3"><img src='/resources/img/main/com_01.gif'></div>
													    <h3><img src="/resources/img/account/Question_icon.png"> 아이디(ID) 찾기/패스워드(PW) 찾기</h3>
													    <p>
													    	<b><img src="/resources/img/account/Answer_icon.png">&nbsp;아이디(ID) 찾기</b><br>
													   		아이디(ID)를 찾고자 하시는 고객님께서는 본 프로그램 개발팀으로 개별 문의바랍니다. (<a href="mailto:sted@k-gmp.com">sted@k-gmp.com</a>)<br><br>
													   		<b><img src="/resources/img/account/Answer_icon.png">&nbsp;패스워드(PW) 찾기</b><br>
													   		> 로그인 페이지 내, LOG IN / SIGN IN을 누릅니다.<br> 
															> 팝업 페이지 하단 “Forgot your password?”를 누른 후, 사업자 등록번호를 입력하고 다음 버튼을 누릅니다.<br>
															> 가입 시 등록된 이 메일을 순차적으로 확인 하신 후, 가입 시 입력했던 (국문)이름 및 이 메일 주소를 입력하고 다음버튼을 누릅니다.<br>
															> 고객님께서 입력하신 메일로 PW를 발송해 드립니다.<br>
															<b style="color:red;">* 패스워드(PW) 수정을 원하시는 경우, 로그인 후 My Info 내, 수정페이지에서 비밀번호 변경이 가능합니다.</b>
															<br><br>
															기타 시스템 오류 및 추가 문의 사항이 있으실 경우 본 프로그램 개발팀으로 개별 연락바랍니다. (<a href="mailto:sted@k-gmp.com">sted@k-gmp.com</a>)<br>
															MON-FRI AM 09:00-PM 06:00 / WEEKEND & HOLIDAY - CLOSED
													    </p>
													  </li>
													  <li><div class="handle3"><img src='/resources/img/main/com_02.gif'></div>
													    <h3><img src="/resources/img/account/Question_icon.png"> 서식의 한글변환 시, 표가 깨지거나 이미지가 나오지 않습니다. 어떻게 해야 하나요?</h3>
													    <p>
													    	<b><img src="/resources/img/account/Answer_icon.png">&nbsp;서식작성 시 주의사항</b><br>
													    	> 한글 내 용지여백을 위쪽(20mm), 아래쪽(15mm), 왼쪽(20mm), 오른쪽(20mm)로 지정해 주십시오.<br>
															> 문단 정렬을 위해서 문서에 이미지 삽입 시 반드시 “개체속성->기본->위치”에서 “글자처럼 취급”을 체크해 주시기 바랍니다.<br>
															> 이미지 삽입 시 “가로 사이즈는 300Pixel이내”, “해상도는 가급적 200dpi ~ 300dpi” 사이로 작업해 주시기 바랍니다.<br>
															> 또한 이미지 삽입 시 “BMP 포맷을 제외한 JPEG, GIF, PNG 등의 포맷”을 사용해 주시기 바랍니다.<br>
															<br><br>
															기타 시스템 오류 및 추가 문의 사항이 있으실 경우 본 프로그램 개발팀으로 개별 연락바랍니다. (<a href="mailto:sted@k-gmp.com">sted@k-gmp.com</a>)<br>
															MON-FRI AM 09:00-PM 06:00 / WEEKEND & HOLIDAY - CLOSED
													    </p>
													  </li>
													  <li><div class="handle3"><img src='/resources/img/main/com_03.gif'></div>
													    <h3><img src="/resources/img/account/Question_icon.png"> 최종 작성 완료된 문서는 어디로 제출하면 되나요?</h3>
													    <p>
													    	<b><img src="/resources/img/account/Answer_icon.png">&nbsp;작성완료 문서 제출방법</b><br>
														    > 의료기기관련 민원은 의료기기전자민원창구(<a href="http://emed.kfda.go.kr">http://emed.kfda.go.kr</a>)에서 개별 작성 및 접수하시길 바랍니다.<br>
															> 이때, 신청내용은 폴더 온라인으로 허가증을 발급받기 위해서는 기타서류 폴더를 제외한 신청내용 폴더 파일들이 10MB미만으로 작성이 되어야 합니다.<br>
															<br><br>
															기타 시스템 오류 및 추가 문의 사항이 있으실 경우 본 프로그램 개발팀으로 개별 연락바랍니다. (<a href="mailto:sted@k-gmp.com">sted@k-gmp.com</a>)<br>
															MON-FRI AM 09:00-PM 06:00 / WEEKEND & HOLIDAY - CLOSED
													    </p>
													  </li>
													  <li><div class="handle3"><img src='/resources/img/main/com_04.gif'></div>
													    <h3><img src="/resources/img/account/Question_icon.png"> 해당 서류 보완신청은 어떻게 하나요?</h3>
													    <p>
													    	<b><img src="/resources/img/account/Answer_icon.png">&nbsp;보완신청 방법</b><br>
														    > 서식작성 페이지 내, 상단의 보완신청 버튼을 누르신 후, 보완이 필요한 내용에 대해 간략하게 서술해 주시기 바랍니다.<br>
															> 이후, 보완 신청된 서류에 대한 검토가 이루어진 후 비용 산청이 이루어지며 입금확인 후에는 24시간 이내 해당 서류는 보완 완료됩니다.<br>
															<b style="color:red;">* 이때, 보완은 2회이상 신청이 불가하기 때문에 사전에 신중한 검토 부탁 드리겠습니다.</b>
															<br><br>
															기타 시스템 오류 및 추가 문의 사항이 있으실 경우 본 프로그램 개발팀으로 개별 연락바랍니다. (<a href="mailto:sted@k-gmp.com">sted@k-gmp.com</a>)<br>
															MON-FRI AM 09:00-PM 06:00 / WEEKEND & HOLIDAY - CLOSED
													    </p>
													  </li>
													  <li><div class="handle3"><img src='/resources/img/main/com_05.gif'></div>
													  	<h3><img src="/resources/img/account/Question_icon.png"> 서류에 대한 결제는 어떤 절차로 진행되나요?</h3>
													    <p>
													    	<b><img src="/resources/img/account/Answer_icon.png">&nbsp;세부 결제 절차사항</b><br>
													    	> 새 문서 작성(NEW FORM)을 활용하여 서식작성을 위한 기본정보를 입력합니다.<br>
															> 이후, My Form탭을 통해 미 결제된 서류를 확인 한 후, 해당 서류에 대한 결제하기(무통장입금)을 진행합니다.<br>
															> 무통장 입금 시, 해당 폴더는 “결제완료” 그렇지 않은 경우”결제대기”로 구분하여 확인 가능합니다.<br>
															<b style="color:red">* 모든 결제관련 프로세스는 Payment 창에서 확인 가능하며 결제 내역에 대해 발행된 계산서 또한 해당 페이지에서 한 번 에 확인 가능합니다.</b>
															<br><br>
															기타 시스템 오류 및 추가 문의 사항이 있으실 경우 본 프로그램 개발팀으로 개별 연락바랍니다. (<a href="mailto:sted@k-gmp.com">sted@k-gmp.com</a>)<br>
															MON-FRI AM 09:00-PM 06:00 / WEEKEND & HOLIDAY - CLOSED
													    </p>
													  </li>
													</ul><div style="clear:both;"></div><br/><br/><br/><br/>
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
		<!--accordion s-->
		<script type="text/javascript" src="/resources/js/Main/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="/resources/js/Main/jquery.hrzAccordion.js"></script>
		<script type="text/javascript" src="/resources/js/Main/jquery.hrzAccordion.examples.js"></script>
		<!--accordion e-->
	</body>
</html>