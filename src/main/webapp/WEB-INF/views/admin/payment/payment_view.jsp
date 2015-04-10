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
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2"> Payment</span></td>
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
			<form action="/AdminPayment.do?page_seq=11&side_seq=<%=request.getParameter("side_seq") %>" method="post" name="notice">
				<div id ="serch">
				<b>통합검색 : </b>
					<select name="search">
						<option value="id1">선택</option>
						<option value="title">폴더명</option>
						<option value="kor_name">품목명[국문]</option>
						<option value="eng_name">품목명[영문]</option>
						<option value="payment_name">입금자명</option>
					</select>
					<input type="text" name="find">  <input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScript:document.notice.submit();">
					<font color="red">결제현황 검색은 통합으로 이루어 집니다.</font>
				</div>
			</form>
		</td>
	</tr>
	<tr>
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content">
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
			<tr class="a" onclick="goUrl('/AdminPayment.do?page_seq=12&side_seq=<%=request.getParameter("side_seq")%>&forms_seq=${a.forms_seq}');">
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
		</table><br>
			<input type="image" src="/resources/img/main/input_button.png" onclick="goUrl('/AdminNews.do?page_seq=5&side_seq=0')" width="60px;"><br><br>
			<center>${pageList}</center><br><br><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>