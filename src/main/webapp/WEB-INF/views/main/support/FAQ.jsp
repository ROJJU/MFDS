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
												<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;FAQ</div>
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
													    <h3>Content 1</h3>
													    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus vestibulum metus sed massa. Pellentesque pharetra felis a enim. Aliquam sapien nisl, iaculis ac, hendrerit placerat, iaculis congue, augue. Quisque eget mi quis purus vestibulum eleifend. Maecenas condimentum eros vel eros. Ut facilisis leo id mi. Suspendisse nisl magna, consequat quis, pretium eget, laoreet vel, orci.<br>
													      <br>
													      Mauris sed mauris. Praesent imperdiet, nunc ut sollicitudin hendrerit, nisi tellus mollis leo, blandit pharetra nulla orci id eros. Nullam ut nunc. Praesent lacus lacus, tempor a, dignissim eu, tristique ac, tortor. Sed faucibus. Integer eleifend lacus ac neque. Fusce tempus. In hac habitasse platea dictumst. Nulla arcu neque, gravida at, rhoncus id, pharetra vitae, tortor. Aenean vestibulum consequat augue.</p>
													  </li>
													  <li><div class="handle3"><img src='/resources/img/main/com_02.gif'></div>
													    <h3>Content 2</h3>
													    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus vestibulum metus sed massa. Pellentesque pharetra felis a enim. Aliquam sapien nisl, iaculis ac, hendrerit placerat, iaculis congue, augue. Quisque eget mi quis purus vestibulum eleifend. Maecenas condimentum eros vel eros. Ut facilisis leo id mi. Suspendisse nisl magna, consequat quis, pretium eget, laoreet vel, orci.<br>
													      <br>
													      Mauris sed mauris. Praesent imperdiet, nunc ut sollicitudin hendrerit, nisi tellus mollis leo, blandit pharetra nulla orci id eros. Nullam ut nunc. Praesent lacus lacus, tempor a, dignissim eu, tristique ac, tortor. Sed faucibus. Integer eleifend lacus ac neque. Fusce tempus. In hac habitasse platea dictumst. Nulla arcu neque, gravida at, rhoncus id, pharetra vitae, tortor. Aenean vestibulum consequat augue.</p>
													  </li>
													  <li><div class="handle3"><img src='/resources/img/main/com_03.gif'></div>
													    <h3>Content 3</h3>
													    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus vestibulum metus sed massa. Pellentesque pharetra felis a enim. Aliquam sapien nisl, iaculis ac, hendrerit placerat, iaculis congue, augue. Quisque eget mi quis purus vestibulum eleifend. Maecenas condimentum eros vel eros. Ut facilisis leo id mi. Suspendisse nisl magna, consequat quis, pretium eget, laoreet vel, orci.<br>
													      <br>
													      Mauris sed mauris. Praesent imperdiet, nunc ut sollicitudin hendrerit, nisi tellus mollis leo, blandit pharetra nulla orci id eros. Nullam ut nunc. Praesent lacus lacus, tempor a, dignissim eu, tristique ac, tortor. Sed faucibus. Integer eleifend lacus ac neque. Fusce tempus. In hac habitasse platea dictumst. Nulla arcu neque, gravida at, rhoncus id, pharetra vitae, tortor. Aenean vestibulum consequat augue.</p>
													  </li>
													  <li><div class="handle3"><img src='/resources/img/main/com_04.gif'></div>
													    <h3>Content 4</h3>
													    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus vestibulum metus sed massa. Pellentesque pharetra felis a enim. Aliquam sapien nisl, iaculis ac, hendrerit placerat, iaculis congue, augue. Quisque eget mi quis purus vestibulum eleifend. Maecenas condimentum eros vel eros. Ut facilisis leo id mi. Suspendisse nisl magna, consequat quis, pretium eget, laoreet vel, orci.<br>
													      <br>
													      Mauris sed mauris. Praesent imperdiet, nunc ut sollicitudin hendrerit, nisi tellus mollis leo, blandit pharetra nulla orci id eros. Nullam ut nunc. Praesent lacus lacus, tempor a, dignissim eu, tristique ac, tortor. Sed faucibus. Integer eleifend lacus ac neque. Fusce tempus. In hac habitasse platea dictumst. Nulla arcu neque, gravida at, rhoncus id, pharetra vitae, tortor. Aenean vestibulum consequat augue.</p>
													  </li>
													  <li><div class="handle3"><img src='/resources/img/main/com_05.gif'></div>
													    <h3>Content 5</h3>
													    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus vestibulum metus sed massa. Pellentesque pharetra felis a enim. Aliquam sapien nisl, iaculis ac, hendrerit placerat, iaculis congue, augue. Quisque eget mi quis purus vestibulum eleifend. Maecenas condimentum eros vel eros. Ut facilisis leo id mi. Suspendisse nisl magna, consequat quis, pretium eget, laoreet vel, orci.<br>
													      <br>
													      Mauris sed mauris. Praesent imperdiet, nunc ut sollicitudin hendrerit, nisi tellus mollis leo, blandit pharetra nulla orci id eros. Nullam ut nunc. Praesent lacus lacus, tempor a, dignissim eu, tristique ac, tortor. Sed faucibus. Integer eleifend lacus ac neque. Fusce tempus. In hac habitasse platea dictumst. Nulla arcu neque, gravida at, rhoncus id, pharetra vitae, tortor. Aenean vestibulum consequat augue.</p>
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
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
		<!--accordion s-->
		<script type="text/javascript" src="/resources/js/Main/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="/resources/js/Main/jquery.hrzAccordion.js"></script>
		<script type="text/javascript" src="/resources/js/Main/jquery.hrzAccordion.examples.js"></script>
		<!--accordion e-->
	</body>
</html>