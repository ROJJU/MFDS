<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/admin/Header.jsp"/>
<!--CONTAINER  -->
<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0" style="min-width:800px;">
	<tr> 
		<td height="100" bgcolor="#FFFFFF" class="menu">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2"> News</span></td>
					</tr>
					<tr>
					  <td height="5" background="/resources/img/admin/admin_title_bar_p.gif"></td>
					</tr>
				</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content">
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
					<input type="hidden" name="file_path" value="www/save/notice">
				</form>
				<font color="red"></font></td>
			</tr>
			<tr>
				<th >내용</th>
				<td colspan="7" align="left">${notice.content}</td>
			</tr>
		</table><br>
			<input type="image" src="/resources/img/btn/list_btn.png" onclick="history.go(-1);" width="50px;">
			<input type="image" src="/resources/img/btn/modify_btn.png" width="50px;" onclick="goUrl('/AdminNews.do?page_seq=7&notice_seq=${notice.notice_seq}&side_seq=1');">
			<input type="image" src="/resources/img/btn/del_button.png" width="50px" onclick="goUrl('/AdminNews.do?page_seq=2&notice_seq=${notice.notice_seq}');">
			<br><br><br><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>