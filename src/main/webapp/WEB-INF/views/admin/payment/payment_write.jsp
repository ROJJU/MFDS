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
			<table id="sub_contents">
				<tr>
					<td id="sub_content" style="padding:10px; text-align:left;">
							<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;Payment</div><br>
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
							▶ 세금 계산서 입력<br>
							<form action="/PaymentProc.do"  method="post" enctype="multipart/form-data" name="payment_pic">
								<input type="file" name="payment_pic">
								<input type="hidden" name="forms_seq" value="${forms.forms_seq}">
							</form>
							<table style="border:1px solid black; width:100%; padding:10px;">
								<tr>
									<td align="center">
									<c:choose>
										<c:when test="${forms.payment_pic==null}">
											<font color="red">아직 입금 확인이 안된 파일 입니다.</font>
										</c:when>
										<c:otherwise>
											<div>
												<img src="/save/${forms.payment_pic}" id="my_payment">
											</div>
										</c:otherwise>
									</c:choose>
									</td>
								</tr>
							</table>
							<div align="left"><br><br>
								<center>
									<input type="image" src="/resources/img/btn/save_btn.png" onclick="formCheck()" width="60px">
									<input type="image" src="/resources/img/btn/list_btn.png" onclick="history.go(-2);" width="60px;">
								</center>
								<br><hr>
								<img src="/resources/img/common/kgmp_address.png" width="500px"><br><br><br><br>
							</div>
					</td>
				</tr>
			</table>
		</div>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
<script>
	function isFile(payment_pic){
	    var IMG_FORMAT = "\.\(bmp|gif|jpg|jpeg|png)$";
	    var pattern = new RegExp(IMG_FORMAT, "i");
	 
	    return pattern.test(payment_pic);
	}

	function formCheck(){
		var payment_pic = document.payment_pic.payment_pic.value;
		
		if(!isFile(payment_pic)){
			alert('이미지만 등록 하실 수 있습니다.');
			document.payment_pic.payment_pic.focus();
			return false;
		}else{
			document.payment_pic.submit();
		}
	}
</script>
</body>
</html>
</body>
</html>