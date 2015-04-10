<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/admin/Header.jsp"/>
<!--CONTAINER  -->
<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0" >
	<tr> 
		<td height="100" bgcolor="#FFFFFF" class="menu">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2"> Notice</span></td>
					</tr>
					<tr>
					  <td height="5" background="/resources/img/admin/admin_title_bar_p.gif"></td>
					</tr>
				</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<form action="/AdminNews.do?page_seq=8&side_seq=1" method="post" name="notice">
				<div id ="serch">
					<select name="search">
						<option value="all">ALL</option>
						<option value="title">제목</option>
						<option value="writer">작성자</option>
					</select>
					<input type="text" name="find">  <input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScript:document.notice.submit();">
				</div>
			</form>
		</td>
	</tr>
	<tr>
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content">
		<table id="admintable" >
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
				<tr onclick="goUrl('/AdminNews.do?page_seq=4&notice_seq=${a.notice_seq}&side_seq=1')" class="a">
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
			<input type="image" src="/resources/img/main/input_button.png" onclick="goUrl('/AdminNews.do?page_seq=6&side_seq=1')" width="60px;"><br><br>
			<center>${pageList}</center><br><br><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>