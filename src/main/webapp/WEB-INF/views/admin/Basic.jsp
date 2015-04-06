<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<jsp:include page="/resources/inc/admin/Header.jsp"/>
<!--CONTAINER  -->
<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0" >
	<tr> 
		<td height="100" bgcolor="#FFFFFF" class="menu">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2">기본설정관리</span></td>
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
			<form action="/AdminModifyProc.do" method="post" name="adminInfo">
				<table>
					<tr>
						<th>관리자 ID</th>
						<td><input type="text" value="${adminInfo.id}" name="id"></td>
						<th>관리자 PW</th>
						<td><input type="text" value="${adminInfo.pw}" name="pw"></td>
					</tr>
				</table><br>
			</form>
			<center><input type="button" value="수정하기" onclick="document.adminInfo.submit()"></center>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>