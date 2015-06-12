<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<style type="text/css">
	#video_box{
		width:600px; box-shadow: 2px 2px 20px rgba(0,0,0,0.5); 
		-webkit-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		-moz-box-shadow: 2px 2px 20px rgba(0,0,0,0.5); margin:0 auto; padding:10px; background-color:#ffffff; 
	}
	#top_background{
	color:#ffffff; font-weight:bold;
	background-image:url('/resources/img/main/main_top_back.png'); background-size:cover 550px; background-repeat:no-repeat; padding-top:50px;
	height:647px;
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
								<jsp:include page="/resources/inc/sub_tab/Sub_tab_01.jsp"/>
								<div id="top_background">
									<b style="font-size:35px;">환영합니다.</b>
									<br><b style="font-size:25px;">STED 프로그램에 접속하셨습니다.</b><br><br><br><br>
									<h1>NEW CREATIVE & NEW CHALLENGE</h1>
									<h4>With Korea Medical Industry Institute of Goods Management Procedure</h4><br><br>
									<div id="video_box">
										<video preload autoplay loop width="100%">
											<source src="/resources/video/kgmp.mp4" type="video/mp4" codec="avc.1.42e01e, mp4a.40.2">
											<img src="/resources/img/main/kgmp.png" width="100%">
										</video>
									</div>
								</div>
								<br>
								<div style="padding:30px 70px 0px 70px; max-width:1150px; margin:0 auto;">
									<div style="text-align:left;">
										<div style="margin:5px 0px 5px 0px; height:3px; background-color:grey; width:100%;"></div><br>
										안녕하십니까.<br>한국의료산업품질경영연구원(이하 K-GMP)는 국내 의료기기 및 외국 수입의료기기에 대한 식약처의 안전하고 신속한 인허가 자문을 제공하고. 의료기술에 대한 국내에 객관적이고 신뢰성 있는 분석을 통해 근거있는 양질의 정보를 제공하기 위해 설립되었습니다.<br><br><br>아울러 앞으로도 식품의약품안전청 민원의뢰업무에 있어서 보다 고객님들의 편의를 위해 체계적인 시스템을 구축해 나가는데 앞장서겠습니다. 뿐만 아니라 우수한 연구개발 인력을 확보하는 동시에 적극적인 대한민국 여성 대표 모범기업으로서의 소임을 다하고자 부단히 노력할 것을 약속 드립니다.<br><br>감사합니다.<br><br>
										<div style="margin:5px 0px 0px 0px; height:3px; background-color:grey; width:100%;"></div><br>
									</div>
								</div>
								<div style="background-color:#f5f5f5; padding-top:40px; padding-bottom:60px;margin-bottom:45px;">
									<b  style="font-size:35px;">Simple to use with the icon</b><br><br><br><br>
									<input type="image" src="/resources/img/main/my_account_btn.png" title="내정보" onclick="goUrl('/MyPage.do');">&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="image" src="/resources/img/main/Payment_btn.png" title="결제내역 조회/결산서발행" onclick="goUrl('/MyPage.do?page_seq=3');">&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="image" src="/resources/img/main/New_form.png" title="내문서" onclick="goUrl('/MyPage.do?page_seq=6');">&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="image" src="/resources/img/main/calendar_btn.png" title="일정관리" onclick="goUrl('/MyPage.do?page_seq=7')">
								</div>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
				<jsp:include page="/resources/inc/Main_footer.jsp"/>
			</div>
		</div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
	</body>
</html>