<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub_table.css"/>"/>
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
								<jsp:include page="/resources/inc/sub_tab/Sub_tab_04.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<jsp:include page="/resources/inc/main_title/News_rooms.jsp"/>
								<div>
									<table id="sub_contents">
										<tr>
											<td id="sub_content" align="center">
													<table style="border:none; text-align:left;">
														<tr>
															<td style="border:none; border-bottom:2px solid grey;">
																<a href="javaScript:goUrl('/News.do?page_seq=1');" class="sub_tab">News</a>
														  &nbsp;<a href="javaScript:goUrl('/News.do?page_seq=8');" class="sub_tab_action">Notice</a></td>
														</tr>
													</table>
													<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;Notice</div>
													<div align="right" style="width:98%; padding-right:1px; padding-top:5px;">
														<form action="/News.do?page_seq=8" method="post" name="notice">
															<div id ="serch">
																<select name="search">
																	<option value="all">ALL</option>
																	<option value="title">제목</option>
																	<option value="writer">작성자</option>
																</select>
																<input type="text" name="find">  <input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScript:document.notice.submit();">
															</div>
														</form>
													</div>
													<table>
														<tr>
															<th width="40px">번호</th>
															<th width="620px">제목</th>
															<th width="100px">작성자</th>
															<th width="70px">작성일</th>
															<th width="60px">조회</th>
														</tr>
													<c:if test="${list=='[]'}">
														<tr>
															<td colspan="5" align="center" style="color:red;">게시물이 없습니다.</td>
														</tr>
													</c:if>
													<c:forEach var="a" items="${list}">
														<tr onclick="goUrl('/News.do?page_seq=4&notice_seq=${a.notice_seq}')" class="a">
															<td align="center">${a.notice_seq}</td>
															<td align="left">
																${a.title}
																<c:if test="${a.n_file!=null}"><input type="image" src="/resources/img/main/icon_attach.gif" title="${a.n_file}"></c:if>
															</td>
															<td align="center">${a.writer}</td>
															<td align="center">${a.add_date}</td>
															<td align="center">${a.hit}</td>
														</tr>
													</c:forEach>
													</table><br>
													<center>${pageList}</center><br><br><br><br>
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