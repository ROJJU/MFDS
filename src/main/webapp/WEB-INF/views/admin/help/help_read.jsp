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
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content" style="vertical-align:top;">
			<table>
				<tr>
					<th colspan="2">
						보완 신청 내역
						<c:if test="${forms.help_state=='1'}"><font color="red">[보완 1차 신청]</font></c:if>
						<c:if test="${forms.help_state=='2'}"><font color="blue">[보완 1차 완료]</font></c:if>
						<c:if test="${forms.help_state=='3'}"><font color="red">[보완 2차 신청]</font></c:if>
						<c:if test="${forms.help_state=='4'}"><font color="blue">[보완 2차 완료(최종)]</font></c:if>
					</th>
				</tr>
				<tr>
					<th>보완 신청(1차)</th>
					<th>보완 신청(2차)</th>
				</tr>
				<tr>
					<td>${forms.help_content}</td>
					<td>
						<c:choose>
							<c:when test="${forms.help_content2==null||forms.help_content2==''}">
								<font color="red">내역이 없습니다.</font>
							</c:when>
							<c:otherwise>
								${forms.help_content2}
							</c:otherwise>
						</c:choose>
					</td>
				</tr>		
			</table><br>
			<center>
				<input type="image" src="/resources/img/btn/list_btn.png" onclick="history.go(-1);" width="60px;">
				<c:choose>
					<c:when test="${forms.help_state=='1'||forms.help_state=='3'}">
						<input type="image" src="/resources/img/admin/help.png" width="60px;" onclick="goUrl('/AdminHelp.do?page_seq=20&list_seq=1&contents_name=contents1&forms_seq=<%=request.getParameter("forms_seq")%>')">
					</c:when>
				</c:choose>
			</center>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>