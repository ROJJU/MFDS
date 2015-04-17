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
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2">보완관리</span></td>
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
			<table>
				<tr>
					<td>
						<form action="/AdminHelp.do?page_seq=18&side_seq=0" method="post" name="notice">
							<div id ="serch">
								<select name="search">
									<option value="id1">선택</option>
									<option value="title">폴더명</option>
									<option value="kor_name">품목명[국문]</option>
									<option value="eng_name">품목명[영문]</option>
								</select>
								<input type="text" name="find">  <input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScript:document.notice.submit();">
							</div>
						</form>
					</td>
					<td>&nbsp;
						<a href="/AdminHelp.do?page_seq=18&search=help_state&find=1"><img src="/resources/img/forms/Books_help1.png" width="25px">&nbsp;1차 진행 중</a>
						<a href="/AdminHelp.do?page_seq=18&search=help_state&find=2"><img src="/resources/img/forms/Books_help2.png" width="25px">&nbsp;1차 완료</a>
						<a href="/AdminHelp.do?page_seq=18&search=help_state&find=3"><img src="/resources/img/forms/Books_help3.png" width="25px">&nbsp;2차 진행 중</a>
						<a href="/AdminHelp.do?page_seq=18&search=help_state&find=4"><img src="/resources/img/forms/Books_help4.png" width="25px">&nbsp;2차 완료</a>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content" style="vertical-align:top;">
			<table>
				<tr>
					<th>번호</th>
					<th>작성일시</th>
					<th>폴더명</th>
					<th>품목명</th>
					<th>ID(E-MAIL)</th>
					<th>상태</th>
					<th>신청내용보기</th>
					<th>보완하기</th>
					<th>계산서 발급</th>
				</tr>
				<c:if test="${list=='[]'}">
					<tr>
						<td colspan="10" align="center" style="color:red;">게시물이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="a" items="${list}">
					<tr onclick="" class="a">
						<td>${a.forms_seq}</td>
						<td>${a.help_add_date}</td>
						<td>${a.title}</td>
						<td>${a.kor_name}[${a.eng_name}]</td>
						<td>${a.id1}-${a.id2}-${a.id3}(${a.email1}@${a.email2})</td>
						<td>
							<c:if test="${a.help_state=='1'}"><font color="red">[보완 1차 신청]</font></c:if>
							<c:if test="${a.help_state=='2'}"><font color="blue">[보완 1차 완료]</font></c:if>
							<c:if test="${a.help_state=='3'}"><font color="red">[보완 2차 신청]</font></c:if>
							<c:if test="${a.help_state=='4'}"><font color="blue">[보완 2차 완료(최종)]</font></c:if>
						</td>
						<td><input type="image" src="/resources/img/admin/look.png" width="70px" onclick="goUrl('/AdminHelp.do?page_seq=19&forms_seq=${a.forms_seq}')"></td>
						<td>
						<c:choose>
							<c:when test="${a.help_state=='1'||a.help_state=='3'}">
								<input type="image" src="/resources/img/admin/help.png" width="60px" onclick="goUrl('/AdminHelp.do?page_seq=20&forms_seq=${a.forms_seq}&list_seq=1')">
							</c:when>
							<c:otherwise>
								완료처리
							</c:otherwise>
						</c:choose>
						</td>
						<td><a href="mailto:${a.email1}@${a.email2}"><input type="image" width="70px" src="/resources/img/admin/admin_bill.png" value="계산서 발급"></a></td>
					</tr>
				</c:forEach>
			</table><br><br>
			<center>${pageList}</center><br><br><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>