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
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content">
		<table id="total_info" style="text-align:left;">
				<tr height="30px">
					<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>회원 정보</b></td>
				</tr>
				<tr>
					<td>
						<table style="text-align:left;">
							<tr>
								<td width="125px;">ID(사업자 등록 번호) :</td><td>${memberInfo.id1}-${memberInfo.id2}-${memberInfo.id3}</td>
							</tr>
							<tr>
								<td>사용자 이메일 :</td><td>${memberInfo.email1}@${memberInfo.email2}</td>
							</tr>
						</table><br>
					</td>
				</tr>
			</table><br>
			<table id="total_info" style="text-align:left;">
				<tr height="30px">
					<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>등록 서류 정보</b></td>
				</tr>
				<tr>
					<td>
					<form action="/AdminMember.do?page_seq=16&member_seq=41&id1=123&id2=45&id3=67890&email1=tom100&email2=naver.com" method="post" name="notice">
						<div id ="serch">
							<select name="search">
								<option value="title">파일명</option>
								<option value="kor_name">품목명[국문]</option>
								<option value="eng_name">품목명[영문]</option>
							</select>
							<input type="text" name="find">&nbsp;<input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScript:document.notice.submit();">&nbsp;&nbsp;&nbsp;
							<img src="/resources/img/forms/Books2.png" width="20px">&nbsp;<a class="file_text" href="/AdminMember.do?page_seq=<%=request.getParameter("page_seq")%>&member_seq=<%=request.getParameter("member_seq")%>&id1=<%=request.getParameter("id1")%>&id2=<%=request.getParameter("id2")%>&id3=<%=request.getParameter("id3")%>&email1=<%=request.getParameter("email1")%>&email2=<%=request.getParameter("email2")%>">모두</a>&nbsp;
							<img src="/resources/img/forms/Books1.png" width="20px" class="file_img">&nbsp;<a class="file_text" href="/AdminMember.do?page_seq=<%=request.getParameter("page_seq")%>&member_seq=<%=request.getParameter("member_seq")%>&id1=<%=request.getParameter("id1")%>&id2=<%=request.getParameter("id2")%>&id3=<%=request.getParameter("id3")%>&email1=<%=request.getParameter("email1")%>&email2=<%=request.getParameter("email2")%>&find=1&search=state">임시저장</a>&nbsp;
						 	<img src="/resources/img/forms/Books.png" width="20px" class="file_img">&nbsp;<a class="file_text" href="/AdminMember.do?page_seq=<%=request.getParameter("page_seq")%>&member_seq=<%=request.getParameter("member_seq")%>&id1=<%=request.getParameter("id1")%>&id2=<%=request.getParameter("id2")%>&id3=<%=request.getParameter("id3")%>&email1=<%=request.getParameter("email1")%>&email2=<%=request.getParameter("email2")%>&find=2&search=state">작성완료</a>
						 	<img src="/resources/img/forms/document.png">&nbsp;<a class="file_text" href="/AdminMember.do?page_seq=<%=request.getParameter("page_seq")%>&member_seq=<%=request.getParameter("member_seq")%>&id1=<%=request.getParameter("id1")%>&id2=<%=request.getParameter("id2")%>&id3=<%=request.getParameter("id3")%>&email1=<%=request.getParameter("email1")%>&email2=<%=request.getParameter("email2")%>&find=1&search=payment">결제대기</a>
						 	<img src="/resources/img/forms/docu_check_icon.png">&nbsp;<a class="file_text" href="/AdminMember.do?page_seq=<%=request.getParameter("page_seq")%>&member_seq=<%=request.getParameter("member_seq")%>&id1=<%=request.getParameter("id1")%>&id2=<%=request.getParameter("id2")%>&id3=<%=request.getParameter("id3")%>&email1=<%=request.getParameter("email1")%>&email2=<%=request.getParameter("email2")%>&find=3&search=payment">결제완료</a>
						</div>
					</form>
						<table style="text-align:left;">
							<tr>
								<td>파일명</td>
								<td>품목명</td>
								<td>품목등급</td>
								<td>서류상태</td>
								<td>결제상태</td>
								<td>작성일</td>
							</tr>
							<c:forEach var="a" items="${list}">
								<tr class="a" onclick="goUrl('/AdminMember.do?page_seq=17&member_seq=<%=request.getParameter("member_seq")%>&id1=<%=request.getParameter("id1")%>&id2=<%=request.getParameter("id2")%>&id3=<%=request.getParameter("id3")%>&email1=<%=request.getParameter("email1")%>&email2=<%=request.getParameter("email2")%>&forms_seq=${a.forms_seq}')">
									<td>${a.title}</td>
									<td>${a.kor_name}[${a.eng_name}]</td>
									<td>${a.p_class}</td>
									<td>
										<c:if test="${a.state=='1'}">[임시저장]</c:if>
										<c:if test="${a.state=='2'}">[작성완료]</c:if>
									</td>
									<td>
										<c:if test="${a.payment=='1'}"><b style="color:red;">[미결제]</b></c:if>
										<c:if test="${a.payment=='2'}"><b style="color:blue;">[결제대기]</b></c:if>
										<c:if test="${a.payment=='3'}"><b style="color:blue;">[결제완료]</b></c:if>
									</td>
									<td>${a.add_date}</td>
								</tr>
							</c:forEach>
							<c:if test="${list=='[]'}"><tr><td align="center" colspan="6"><font color="red"><img src="/resources/img/common/coution.gif">&nbsp;작성된 서류가 없습니다.</font></td></tr></c:if>
						</table><br>
					</td>
				</tr>
			</table><br><br>
			<input type="image" src="/resources/img/btn/list_btn.png" onclick="goUrl('/AdminMember.do?page_seq=14')" width="60px;"><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>