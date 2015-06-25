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
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2"> 고객/문서 관리</span></td>
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
			<form action="/AdminMember.do?page_seq=14" method="post" name="notice">
				<div id ="serch">
					<select name="search">
						<option value="id1">선택</option>
						<option value="company_kor">회사명</option>
						<option value="ceo">CEO</option>
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
					<th width="100px">ID(사업자번호)</th>
					<th width="200px">E-MAIL</th>
					<th>회사명</th>
					<th width="60px">대표자</th>
					<th width="60px">종업원수</th>
					<th width="200px">회사 전화번호</th>
					<th width="70px">가입일</th>
					<th width="70px">상세보기</th>
					<th width="70px">문서보기</th>
				</tr>
			<c:if test="${list=='[]'}">
				<tr>
					<td colspan="10" align="center" style="color:red;">가입된 고객이 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="a" items="${list}">
				<tr class="a">
					<td align="center">${a.member_seq}</td>
					<td align="left">${a.id1}-${a.id2}-${a.id3}</td>
					<td align="center">${a.email1}@${a.email2}</td>
					<td align="center">${a.company_kor}[${a.company_eng}]</td>
					<td align="center">${a.ceo}</td>
					<td align="center">${a.worker}명</td>
					<td align="center">${a.company_phone1}-${a.company_phone2}-${a.company_phone3}</td>
					<td align="center">${a.join_date}</td>
					<td align="center">
						<input type="image" src="/resources/img/admin/more.png" width="50px" title="상세보기" onclick="goUrl('/AdminMember.do?page_seq=15&member_seq=${a.member_seq}')">
					</td>
					<td align="center">
						<input type="image" src="/resources/img/admin/form.png" width="50px" title="문서보기" onclick="goUrl('/AdminMember.do?page_seq=16&member_seq=${a.member_seq}&id1=${a.id1}&id2=${a.id2}&id3=${a.id3}&email1=${a.email1}&email2=${a.email2}')">
					</td>
				</tr>
			</c:forEach>
			</table><br>
			<center>${pageList}</center><br><br><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>