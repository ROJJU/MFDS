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
							<tr>
								<td>비밀번호 :</td><td>${memberInfo.pw_1}</td>
							</tr>
						</table><br>
					</td>
				</tr>
				<tr height="30px">
					<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>담당자 정보</b></td>
				</tr>
				<tr>
					<td>
						<table style="text-align:left;">
							<tr>
								<td width="125px;">이름 :</td><td>${memberInfo.kor_name} | ${memberInfo.cha_name} | ${memberInfo.eng_name}</td>
							</tr>
							<tr>
								<td>주소 :</td><td>${memberInfo.address}</td>
							</tr>
							<tr>
								<td>전화번호 :</td><td>${memberInfo.phone1}-${memberInfo.phone2}-${memberInfo.phone3}</td>
							</tr>
							<tr>
								<td>휴대전화번호:</td><td>${memberInfo.cell_phone1}-${memberInfo.cell_phone2}-${memberInfo.cell_phone3}</td>
							</tr>
						</table><br>
					</td>
				</tr>
				<tr height="30px">
					<td bgcolor="#BDBDBD" width="300px">&nbsp;<font color="red">*</font>&nbsp;<b>회사 정보</b></td>
				</tr>
				<tr>
					<td>
						<table style="text-align:left;">
							<tr>
								<td width="125px;">회사명 :</td><td>${memberInfo.company_kor} | ${memberInfo.company_eng}</td>
							</tr>
							<tr>
								<td>회사주소 :</td><td>${memberInfo.company_address}</td>
							</tr>
							<tr>
								<td>전화번호 :</td><td>${memberInfo.company_phone1}-${memberInfo.company_phone2}-${memberInfo.company_phone3}</td>
							</tr>
							<tr>
								<td>FAX번호:</td><td>${memberInfo.company_fax1}-${memberInfo.company_fax2}-${memberInfo.company_fax3}</td>
							</tr>
							<tr>
								<td>대표자:</td><td>${memberInfo.ceo}</td>
							</tr>
							<tr>
								<td>사업자 등록증 사본:</td><td>${memberInfo.company_file}</td>
							</tr>
							<tr>
								<td>고용보험 관리번호:</td><td>${memberInfo.insurance_no}</td>
							</tr>
							<tr>
								<td>주요생산품:</td><td>${memberInfo.product}</td>
							</tr>
							<tr>
								<td>매출액:</td><td>${memberInfo.finance}</td>
							</tr>
							<tr>
								<td>종업원수:</td><td>${memberInfo.worker}</td>
							</tr>
						</table><br>
					</td>
				</tr>
			</table><br>
			<input type="image" src="/resources/img/btn/list_btn.png" onclick="history.go(-1);" width="50px;"><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
</body>
</html>
</body>
</html>