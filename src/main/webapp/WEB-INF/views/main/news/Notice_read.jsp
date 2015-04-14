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
												<table>
													<tr>
														<th width="80px;">번호</th><td>${notice.notice_seq}</td>
														<th width="80px;">작성자</th><td width="160px;">${notice.writer}</td>
														<th width="80px;">작성일</th><td width="160px;">${notice.add_date}</td>
														<th width="80px;">조회</th><td width="160px;">${notice.hit}</td>
													</tr>
													<tr>
														<th >제목</th>
														<td colspan="7" align="left">${notice.title}&nbsp;
														<form action="/resources/inc/Download.jsp" method="post" name="down">
															[<a href="javaScript:document.down.submit();">${notice.n_file}</a>
															<c:if test="${notice.n_file==null}"><a style="color:red;">첨부된 파일이 없습니다.</a></c:if>
															]<input type="hidden" name="n_file" value="${notice.n_file}">
															<input type="hidden" name="file_path" value="/usr/local/tomcat/webapps/ROOT/resources/img/upload/notice">
														</form>
														<font color="red"></font></td>
													</tr>
													<tr>
														<th >내용</th>
														<td colspan="7" align="left">${notice.content}</td>
													</tr>
												</table><br>
												<input type="image" src="/resources/img/btn/list_btn.png" onclick="javaScript:history.go(-1)" width="60px;">
												<br><br><br><br><br>
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