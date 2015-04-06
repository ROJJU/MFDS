<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
System.out.println(request.getParameter("news_seq"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<title>STED</title>
	</head>
	<body>
		<jsp:include page="/resources/inc/Main_header.jsp"/>
		<div class="total_container" id="total_container">
			<div class="space"></div>
			<div id="total_content">
				<jsp:include page="/resources/inc/Sub_header.jsp"/>
				<div>
					<table id="container">
						<tr>
							<td id="side_menu_place" rowspan="1"><jsp:include page="/resources/inc/Side_menu.jsp"/></td>
							<td id="content_place">
								<jsp:include page="/resources/inc/sub_tab/Sub_tab_04.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<div>
									<table id="sub_contents">
										<tr>
											<td id="sub_side" rowspan="1" align="center">
												<table id="sub_side_table">
													<tr><td><img src="/resources/img/main/sub_icon.png" id="sub_icon">&nbsp;<b>News Rooms</b></td></tr>
													<tr><td class="sub_side_bg" onclick="goUrl('/News?page_seq=1');">News</td></tr>
													<tr><td class="sub_side_bg" onclick="goUrl('/News?page_seq=2');">Notice</td></tr>
												</table>
											</td>
											<td id="sub_content" align="center">
													<div align="left" id="sub_title">News</div>
													<div align="right" style="width:98%; padding-right:1px; padding-top:5px;">
														<input type="text">&nbsp;<input type="button" value="검색">
													</div>
													<table>
														<tr>
															<th width="40px">번호</th>
															<th width="620px">제목</th>
															<th width="100px">작성자</th>
															<th width="70px">작성일</th>
															<th width="60px">조회</th>
														</tr>
														<tr class="a" onclick="goUrl('/News?page_seq=3&news_seq=1');">
															<td align="center">1</td>
															<td>test</td>
															<td align="center">hong</td>
															<td align="center">2014/12/25</td>
															<td align="center">1</td>
														</tr>
													</table><br>
													1,2,3
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
	</body>
</html>