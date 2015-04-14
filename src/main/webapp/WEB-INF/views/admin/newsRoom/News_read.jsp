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
				<th width="80px;">번호</th><td>${news.news_seq}</td>
				<th width="80px;">작성자</th><td width="160px;">${news.writer}</td>
				<th width="80px;">작성일</th><td width="160px;">${news.add_date}</td>
				<th width="80px;">조회</th><td width="160px;">${news.hit}</td>
			</tr>
			<tr>
				<th >제목</th>
				<td colspan="7" align="left">${news.title}&nbsp;
				<form action="/resources/inc/Download.jsp" method="post" name="down">
					[<a href="javaScript:document.down.submit();">${news.n_file}</a>
					<c:if test="${news.n_file==null}"><a style="color:red;">첨부된 파일이 없습니다.</a></c:if>
					]<input type="hidden" name="n_file" value="${news.n_file}">
					<input type="hidden" name="file_path" value="/usr/local/tomcat/webapps/ROOT/resources/img/upload/news">
				</form>
				<font color="red"></font></td>
			</tr>
			<tr>
				<th >내용</th>
				<td colspan="7" align="left">${news.content}</td>
			</tr>
		</table><br>
			<input type="image" src="/resources/img/btn/list_btn.png" onclick="history.go(-1);" width="60px;">
			<input type="image" src="/resources/img/btn/modify_btn.png" width="60px;" onclick="goUrl('/AdminNews.do?page_seq=9&news_seq=${news.news_seq}&side_seq=0');">
			<input type="image" src="/resources/img/btn/del_button.png" width="60px" onclick="goUrl('/AdminNews.do?page_seq=10&news_seq=${news.news_seq}');">
			<br><br><br><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>