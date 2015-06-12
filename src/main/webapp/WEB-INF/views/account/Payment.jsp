<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub_table.css"/>"/>
	<style type="text/css">
	a{
	color:grey;
	text-decoration:none;
	}
	a:hover{
	color:blue;
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
									<table id="sub_contents">
										<tr>
											<td id="sub_content" align="center">
													<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;Payment</div>
													<div style=" text-align:left; width:98%; padding-left:1px; padding-top:5px;">
														<form action="/MyPage.do?page_seq=3" method="post" name="notice">
															<select name="search">
																<option value="title">폴더명</option>
																<option value="kor_name">품목명</option>
															</select>
															<input type="text" name="find">  <input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScript:document.notice.submit();">
															&nbsp;&nbsp;&nbsp;&nbsp;
															<img src="/resources/img/forms/Books2.png" width="20px">&nbsp;<a class="file_text" href="/MyPage.do?page_seq=3">모두</a>&nbsp;
															<img src="/resources/img/forms/Books1.png" width="20px" class="file_img">&nbsp;<a class="file_text" href="/MyPage.do?page_seq=3&find=1">임시저장</a>&nbsp;
														 	<img src="/resources/img/forms/Books.png" width="20px" class="file_img">&nbsp;<a class="file_text" href="/MyPage.do?page_seq=3&find=2">작성완료</a>
														 	<img src="/resources/img/forms/document.png">&nbsp;<a class="file_text" href="/MyPage.do?page_seq=3&search=payment&find=2">결제대기</a>
														 	<img src="/resources/img/forms/docu_check_icon.png">&nbsp;<a class="file_text" href="/MyPage.do?page_seq=3&search=payment&find=3">결제완료</a>
														</form>
													</div>
													<table>
														<tr>
															<th width="40px">번호</th>
															<th width="40px">등급</th>
															<th width="100px">중분류</th>
															<th>폴더명[품목명]</th>
															<th width="476px">입금계좌[입금자명]</th>
															<th width="100px">서류</th>
															<th width="100px">입금상황</th>
														</tr>
													<c:if test="${list=='[]'}">
														<tr>
															<td colspan="7" align="center" style="color:red;">확인된 내역이 없습니다.</td>
														</tr>
													</c:if>
													<c:forEach var="a" items="${list}">
														<tr class="a" onclick="goUrl('/MyPage.do?page_seq=4&forms_seq=${a.forms_seq}');">
															<td align="center">${a.forms_seq}</td>
															<td align="center">${a.p_class}</td>
															<td align="center">${a.div_mid}</td>
															<td align="center">${a.title}[${a.kor_name}_${a.eng_name}]</td>
															<td align="center">${a.payment_bank}[${a.payment_name}]</td>
															<td align="center">
																<c:if test="${a.state=='1'}"><b style="color:red;">진행중</b></c:if>
																<c:if test="${a.state=='2'}"><b style="color:blue;">작성완료</b></c:if>
															</td>
															<td align="center">
																<c:if test="${a.payment=='2'}"><b style="color:red;">[결제대기]</b></c:if>
																<c:if test="${a.payment=='3'}"><b style="color:blue;">[결제완료]</b></c:if>
															</td>
														</tr>
													</c:forEach>
													</table>
													<br><br>
													<center>${pageList}</center>
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
		<jsp:include page="/resources/inc/Main_footer.html"/>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
	</body>
</html>