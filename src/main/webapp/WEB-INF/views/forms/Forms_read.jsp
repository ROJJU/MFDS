<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<!--[if gte IE 9 ]><link rel="stylesheet" type="text/css" href="_styles.css" media="screen"><![endif]-->
	<!--[if !IE]>--><link rel="stylesheet" type="text/css" href="/resources/css/forms/_styles.css" media="screen"><!--<![endif]-->
	<link rel="stylesheet" href="/resources/css/forms/firstForm.css"><!--firstForm css-->
	<style type="text/css">
	.__se_tbl{
	width:100%;
	border-collapse:separate;
	}
	.hong{
	width:100%;
	border-collapse:separate;
	}	
	</style>
</head>
	<body>
	<jsp:include page="/resources/inc/Main_header.jsp"/>
		<div class="total_container" id="total_container">
			<div class="space"></div>
			<div id="total_content">
				<jsp:include page="/resources/inc/Sub_header.jsp"/>
				<div>
				<input type="hidden" value="${forms.otp}" name="otp1" id="otp1">
				<input type="hidden" value="<%=request.getParameter("otp")%>" name="otp2" id="otp2">
					<table id="container">
						<tr>
							<td id="side_menu_place2" rowspan="1">
								<table id="side_menu" style="border-collapse:collapse;">
									<tr><td id="side_down_icon"><b class="side_img">▼</b><b>STED Forms</b></td></tr>
									<tr>
										<td>
											<jsp:include page="/resources/inc/forms_side/List_forms.jsp"/>
										</td>
									</tr>
								</table>
							</td>
							<td id="content_place">
								<jsp:include page="/resources/inc/forms_tab/forms_tab.jsp"/>
								<br>
								<div style="width:920px; margin:0 auto; text-align:left; border:1px solid black; padding:8px 10px 8px 30px; background-color:#102967;">
									<table>
										<tr>
											<td width="590px" style="color:#ffffff;">
												<jsp:include page="/resources/inc/forms_tab/forms_tab_under.jsp"/>
											</td>
											<td align="right">
												<img src="/resources/img/forms/Firewall.png" width="20px"><b style="color:#ffffff;">보안 기능 작동 중</b><img src="/resources/img/progress_bar.gif" width="170px">
											</td>
										</tr>
									</table>
								</div>
								<div class="__se_tbl" style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
								<form name="hwp">
									<input type="hidden" value="${forms.forms_seq}" id="forms_seq" name="forms_seq">
									<input type="hidden" id="contents" name="contents">
									<input type="hidden" name="add_date" value="${forms.add_date}">
									<div id="form"><center><img src="/resources/img/loading1.gif"></center></div>
								</form>
								</div>
								<br>
								<div>
									<input type="image" src="/resources/img/btn/list_btn.png" width="60px;" onclick="goUrl('/MyPage.do?page_seq=6')">&nbsp;
									<input type="image" src="/resources/img/member/print_btn.png" onClick="javascript:printIt(document.getElementById('form').innerHTML)" title="my form" width="60xp;">&nbsp;
								</div><br><br><br><br>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/forms/FormRead.js"/>"></script>
		<div style="padding:10px; vertical-align:middle; width:30px; height:30px; background-color:#102967; color:#ffffff; position:fixed; bottom:100px; right:2px; border-top:3px solid grey;">
			<a style="color:#ffffff" href="#">
				TOP
			</a>
		</div>
	</body>
</html>
