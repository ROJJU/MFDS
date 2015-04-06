<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
								<jsp:include page="/resources/inc/sub_tab/Sub_tab_02.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<div>
									<table id="sub_contents">
										<tr>
											<td id="sub_side" rowspan="1" align="center">
												<table id="sub_side_table">
													<tr><td><img src="/resources/img/main/sub_icon.png" id="sub_icon">&nbsp;<b>K-GMP Info</b></td></tr>
													<tr><td class="sub_side_bg" onclick="goUrl('/Info?page_seq=1');">History</td></tr>
													<tr><td class="sub_side_bg" onclick="goUrl('/Info?page_seq=2');">Location</td></tr>
													<tr><td class="sub_side_bg" onclick="goUrl('/Info?page_seq=3');">Organization</td></tr>
												</table>
											</td>
											<td id="sub_content" align="center">
												<div align="left" id="sub_title">History</div>
												<table>
													<tr>
														<th width="40px">번호</th>
														<th width="650px">제목</th>
														<th width="100px">작성자</th>
														<th width="80px">작성일</th>
														<th width="20px">조회</th>
													</tr>
													<tr>
														<td>1</td>
														<td>test</td>
														<td>hong</td>
														<td>2014/12/25</td>
														<td>1</td>
													</tr>
												</table>
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