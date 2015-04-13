<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="content_top_place">
	<tr><td id="sub_bar"></td></tr>
	<tr>
		<td id="content_top_place">
			<div style="text-align:left; font-size:12px; padding-left:15px;">
				<b>폴더명</b> : <b style="color:red;">${forms.title}</b> | <b>품목명</b> : ${forms.kor_name}[${forms.eng_name}] | <b>등급</b> : ${forms.p_class} | <b>작성자</b> : ${forms.id1}-${forms.id2}-${forms.id3}[${forms.email1}@${forms.email2}] | <b>작성일</b> : ${forms.add_date}
				 <c:choose>
					<c:when test="${list_seq==null}">
						 | <input type="image" src="/resources/img/btn/saveHWP_button.png" onClick="javaScript:save_hwp()" width="70px">
						 <c:choose>
				 			<c:when test="${forms.help_state==3||forms.help_state==1}">
				 				| <input type="image" src="/resources/img/btn/top_modify.png" onclick="javaScript:alert('보완 신청 진행 중 에는 수정할 수 없습니다.')" width="39px">
				 			</c:when>
				 			<c:otherwise>
				 				| <input type="image" src="/resources/img/btn/top_modify.png" onClick="goUrl('/NewForms.do?forms_seq=${forms.forms_seq}')" width="39px">
				 			</c:otherwise>
				 		</c:choose>
						 <c:choose>
						 	<c:when test="${forms.help_state==4}">
						 		| <input type="image" src="/resources/img/btn/top_help.png" width="68px" onclick="javaScript:alert('이미 보완신청 2회 완료 된 서류 입니다.')">
						 	</c:when>
						 	<c:otherwise>
						 		<c:choose>
						 			<c:when test="${forms.help_state==3||forms.help_state==1}">
						 				| <input type="image" src="/resources/img/btn/top_help.png" width="68px" onclick="javaScript:alert('보완 신청 진행 중 입니다.')">
						 			</c:when>
						 			<c:otherwise>
						 				| <input type="image" src="/resources/img/btn/top_help.png" width="68px" onclick="help(${forms.forms_seq}, ${forms.help_state}, <%=request.getParameter("otp")%>)">
						 			</c:otherwise>
						 		</c:choose>
						 	</c:otherwise>
						 </c:choose>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${forms.mix=='1'}">
								| <input type="image" src="/resources/img/forms/mix_x.png" width="90px" onclick="mixCheck(<%=request.getParameter("forms_seq")%>, ${forms.mix});">
							</c:when>
							<c:otherwise>
								| <input type="image" src="/resources/img/forms/mix_o.png" width="90px" onclick="mixCheck(<%=request.getParameter("forms_seq")%>, ${forms.mix});">
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${forms.power=='1'}">
								| <input type="image" src="/resources/img/forms/power_x.png" width="75px" onclick="goUrl('/update_powerProc.do?forms_seq=<%=request.getParameter("forms_seq")%>&power=${forms.power}');">
							</c:when>
							<c:otherwise>
								| <input type="image" src="/resources/img/forms/power_o.png" width="75px"onclick="goUrl('/update_powerProc.do?forms_seq=<%=request.getParameter("forms_seq")%>&power=${forms.power}');">
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</div>
		</td>
	</tr>
</table>