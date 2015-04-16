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
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content">
		<div>
				<table width="100%">
					<tr>
						<td id="sub_content" align="center" style="padding:10px;">
								<div align="left"><img src="/resources/img/forms/next.gif">&nbsp;Payment<br><br>
								<img src="/resources/img/common/kgmp_logo.gif" width="100px"> 세금계산서<br><hr><br>
								▶ 파일 정보
								<table style="border:1px solid black; width:100%; border-collapse:collapse;">
									<tr height="25px" style="background-color:#f2f2f2; border-top:4px solid #050099; border-bottom:1px solid grey;">
										<td align="center"><b>목차</b></td>
										<td align="center"><b>입력값</b></td>
									</tr>
									<tr>
										<td style="padding-left:10px;"><br>파일명</td>
										<td style="padding-left:10px; vertical-align:bottom;">${forms.title}</td>
									</tr>
									<tr>
										<td style="padding-left:10px;">ID(e-mail)</td>
										<td style="padding-left:10px;">${forms.id1}-${forms.id2}-${forms.id3}[${forms.email1}@${forms.email2}]</td>
									</tr>
									<tr>
										<td style="padding-left:10px;">품목명</td>
										<td style="padding-left:10px;">${forms.kor_name}[${forms.eng_name}]</td>
									</tr>
									<tr>
										<td style="padding-left:10px;">품목 등급</td>
										<td style="padding-left:10px;">${forms.p_class}</td>
									</tr>
									<tr>
										<td style="padding-left:10px; vertical-align:top;">작성일</td>
										<td style="padding-left:10px;">${forms.add_date}<br><br></td>
									</tr>
								</table><br>
								한국지엠피에서 고객님께 제공해 드리는 세금계산서 입니다.<br>
								▶ 매출전자세금계산서 정보
								</div>
								<table style="border:1px solid black; width:100%; padding:10px;">
									<tr>
										<td align="center">
										<c:choose>
											<c:when test="${forms.payment_pic==null}">
												<font color="red">아직 입금 확인이 안된 파일 입니다.</font>
											</c:when>
											<c:otherwise>
												<div id="my_payment">
													<img src="/resources/img/upload/payment/${forms.payment_pic}">
													<form action="/resources/inc/Download.jsp" method="post" name="down">
														<input type="hidden" name="n_file" value="${forms.payment_pic}">
														<input type="hidden" name="file_path" value="/resources/img/upload/payment">
													</form>
												</div>
											</c:otherwise>
										</c:choose>
										</td>
									</tr>
								</table>
								<div align="left"><br><br>
								<center>
								<%if(request.getParameter("side_seq").equals("1")){%>
									<input type="image" src="/resources/img/account/bill.png" width="72px" onclick="goUrl('/AdminPayment.do?page_seq=13&side_seq=<%=request.getParameter("side_seq")%>&forms_seq=${forms.forms_seq}')">
								<%}else{%>
									<input type="image" src="/resources/img/account/bill.png" width="72px" onclick="goUrl('/AdminPayment.do?page_seq=13&side_seq=<%=request.getParameter("side_seq")%>&forms_seq=${forms.forms_seq}')">
								<%}%>
									<input type="image" src="/resources/img/btn/list_btn.png" onclick="history.go(-1);" width="60px;">
								</center>
								<br><hr>
								<img src="/resources/img/common/kgmp_address.png" width="500px"><br><br><br><br>
								</div>
						</td>
					</tr>
				</table>
			</div><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>