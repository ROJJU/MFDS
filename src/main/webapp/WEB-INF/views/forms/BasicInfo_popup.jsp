<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String purpose =null;
if(request.getParameter("purpose")==null||request.getParameter("purpose")==""){
	purpose = "<b style='color:red'>DB 준비 중입니다.<br>(서류 생성 후 신청서 입력란에서 직접 입력 가능합니다.)</b>";
}else{
	purpose = request.getParameter("purpose");
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Basic Info</title>
<link rel="stylesheet" href="/resources/css/forms/search.css"/>
</head>
<body>
<table style="border-collapse:collapse; width:100%; margin-bottom:2px;">
	<tr>
		<td id="title"><h1>기본정보 입력</h1></td>
		<td id="title" class="coution"><img src="/resources/img/common/coution.gif">&nbsp;기본정보를 입력하지 않으실 경우 기본값이 적용되지 않습니다.</td>
	</tr>
</table>
<form action="/BasicInfoProc.do" name="test" method="post">
	<table id="list_table">
		<tr>
			<td class="list_table_th">목차</td>
			<td class="list_table_th" width="375px">입력값</td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>품목명</td>
			<td class="list_table_td">
				<%=request.getParameter("kor_name")%>
				<input type="hidden" name="kor_name" value="<%=request.getParameter("kor_name")%>">
				<%if(request.getParameter("eng_name")!=null){ %>
				[<%=request.getParameter("eng_name")%>]
				<input type="hidden" name="eng_name" value="<%=request.getParameter("eng_name")%>">
				<%} %>
			</td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>분류</td>
			<td class="list_table_td"><%=request.getParameter("div_mid")%>><%=request.getParameter("div_sub")%>
				<input type="hidden" name="div_mid" value="<%=request.getParameter("div_mid")%>">
				<input type="hidden" name="div_sub" value="<%=request.getParameter("div_sub")%>">
			</td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>품목 등급</td>
			<td class="list_table_td">
				<%=request.getParameter("p_class")%>
				<input type="hidden" name="p_class" value="<%=request.getParameter("p_class")%>">
			</td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>분류 코드</td>
			<td class="list_table_td">
				<%=request.getParameter("code")%>
				<input type="hidden" name="code" value="<%=request.getParameter("code")%>">
			</td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>사용 목적</td>
			<td class="list_table_td">
				<%=purpose%>
				<input type="hidden" name="purpose" value="<%=request.getParameter("purpose")%>">
			</td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>폴더명</td>
			<td class="list_table_td"><input type="text" name="title" style="width:100%;"></td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>조합 의료기기 여부 확인</td>
			<td class="list_table_td">
				<select name="mix">
					<option value="1">예</option>
					<option value="2">아니요</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>전자기기 사용 의료기기</td>
			<td class="list_table_td">
				<select name="power">
					<option value="1">예</option>
					<option value="2">아니요</option>
				</select>
			</td>
		</tr>
		<!--
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>허가(신고)번호</td>
			<td class="list_table_td"><input type="text" style="width:100%;" name="commit_no"></td>
		</tr>
		  -->
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>상호명<b style="color:red; font-size:10px;">&nbsp;*&nbsp;제조(수입)업소일 경우 입력</b></td>
			<td class="list_table_td"><input type="text" style="width:100%;" name="company_name"></td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>소재지<b style="color:red; font-size:10px;">&nbsp;*&nbsp;제조(수입)업소일 경우 입력</b></td>
			<td class="list_table_td"><input type="text" style="width:100%;" name="company_addrs"></td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>입허가번호<b style="color:red; font-size:10px;">&nbsp;*&nbsp;제조(수입)업소일 경우 입력</b></td>
			<td class="list_table_td"><input type="text" style="width:100%;" name="license_num">
			<input type="hidden" style="width:100%;" name="making_name" value="-">
			<input type="hidden" style="width:100%;" name="making_addrs" value="-">
			<input type="hidden" style="width:100%;" name="commit_no" value="-">
			</td>
		</tr>
		<!--
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>제조(수입)업소 명칭(상호명)</td>
			<td class="list_table_td"><input type="text" style="width:100%;" name="making_name"></td>
		</tr>
		<tr>
			<td class="list_table_td"><font color="red">*&nbsp;</font>제조(수입)업소 소재지</td>
			<td class="list_table_td"><input type="text" style="width:100%;" name="making_addrs"></td>
		</tr>
		  -->
	</table><br>
	<input type="hidden" value="${id1}" name="id1">
	<input type="hidden" value="${id2}" name="id2">
	<input type="hidden" value="${id3}" name="id3">
	<input type="hidden" value="${email1}" name="email1">
	<input type="hidden" value="${email2}" name="email2">
	<input type="hidden" value="1" name="state">
	<input type="hidden" value="1" name="payment">
	<input type="hidden" value="<p><b style='line-height: 1.5;'><span style='font-size: 12pt;'>ㅣ의료기기 기술문서 등 심사의뢰서</span></b></p><p><b style='line-height: 1.5;'><span style='font-size: 12pt;'><br></span></b></p><p><b><span style='font-size: 12pt;'><br></span></b></p><p><b><span style='font-size: 12pt;'></span></b></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='4' rowspan='1' style='width: 1203px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&nbsp;&gt; 의뢰인</span></b></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><span style='font-size: 10pt;'><b>&nbsp;[성명(대표자)]</b></span></p></td><td class='' style='width: 301px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;<span style='color: rgb(0, 0, 0); font-size: 10pt;'>홍길동</span></span></p></td><td class='' style='width: 301px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p align='left' style='text-align: left;'><span style='font-size: 10pt;'><b>[생년월일]&nbsp;</b></span></p></td><td class='' style='width: 301px; height: 18px; padding: 3px 4px 2px; background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt; color: rgb(255, 0, 0);'><font color='#3d76ab'><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;</span><span style='color: rgb(255, 0, 0); font-size: 10pt;'>YY</span><span style='color: rgb(255, 0, 0); font-size: 10pt;'>YY.MM.DD</span></font></span></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p align='left' style='text-align: left;'><span style='font-size: 10pt;'><b>&nbsp;[주소]</b></span></p></td><td class='' colspan='3' rowspan='1' style='width: 903px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt; color: rgb(0, 0, 0);'>&nbsp;(</span><span style='line-height: 1.5; color: rgb(0, 0, 0); font-size: 10pt;'>440-746</span><span style='font-size: 10pt; line-height: 1.5; color: rgb(0, 0, 0);'>​)&nbsp;</span><span style='font-size: 10pt; line-height: 1.5; color: rgb(0, 0, 0);'>경기도 수원시 장안구 서부로 2066, 성균관대학교 자연과학캠퍼스 산학협력센터 #85513</span></p></td></tr></tbody></table><p><b><span style='font-size: 12pt;'><br></span></b></p><p><b><span style='font-size: 12pt;'><br></span></b></p><p><b><span style='font-size: 12pt;'></span></b></p><table class='__se_tbl' _se2_tbl_template='15' border='0' cellpadding='0' cellspacing='1' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='4' rowspan='1' style='width: 1204px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&nbsp;&gt; 제조(수입)업소</span></b></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><span style='font-size: 10pt;'>&nbsp;</span><b><span style='font-size: 10pt;'>[명칭(상호)]</span></b></p></td><td class='' colspan='3' rowspan='1' style='width: 904px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><span style='color: rgb(0, 0, 0); font-size: 10pt;'>(주)한국지엠피</span></p></td></tr><tr><td class='' style='width: 300px; height: 20px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[소재지]</span></b></p></td><td class='' colspan='3' rowspan='1' style='width: 904px; height: 20px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><span style='color: rgb(0, 0, 0); font-size: 10pt; line-height: 20px;'>경기도 수원시 장안구 서부로 2066, 성균관대학교 자연과학캠퍼스 산학협력센터 #85513</span><span style='line-height: 1.5; font-size: 10pt;'>​</span></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[사업자등록번호]</span></b></p></td><td class='' style='width: 301px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><span style='color: rgb(255, 0, 0); font-size: 10pt;'>000-00-00000</span></p></td><td class='' style='width: 301px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><span style='font-size: 10pt;'>&nbsp;[업허가번호]</span></p></td><td class='' style='width: 302px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><span style='color: rgb(255, 0, 0); font-size: 10pt;'>0000</span></p></td></tr></tbody></table><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='2' rowspan='1' style='width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&gt; 심사의뢰의 구분</span></b></p></td></tr><tr><td class='' style='width: 299px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[심사의 종류]</span></b></p></td><td class='' style='width: 922px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><span style='color: rgb(255, 0, 0); font-size: 10pt;'>임상시험 자료 심사 / 기술문서 심사</span></p></td></tr><tr><td class='' style='width: 299px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><span style='font-size: 10pt;'>&nbsp;</span><b><span style='font-size: 10pt;'>[제조/수입 구분]</span></b></p></td><td class='' style='width: 922px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;제조/ 수입</span></p></td></tr><tr><td class='' style='width: 299px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[제품의 구분]</span></b></p></td><td class='' style='width: 922px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;새로운제품/개량제품/동등제품/해당없음 (3, 4등급은 해당없음을 선택)</span></p></td></tr></tbody></table><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='2' rowspan='1' style='width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&nbsp;&gt; 상세내용&nbsp;</span></b></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><span style='font-size: 10pt;'>&nbsp;</span><b><span style='font-size: 10pt;'>[제 품 명]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><span style='color: rgb(255, 0, 0); font-size: 10pt;'>* 제출파일 생성 시 자동으로 입력됩니다.</span></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[상 품 명]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><span style='color: rgb(255, 0, 0); font-size: 10pt;'>상품명(2개 이상 입력시, 콤마로 분리하여 입력)</span></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><span style='font-size: 10pt;'>&nbsp;</span><b><span style='font-size: 10pt;'>[업소명 표기 여부]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;제품명에 업소명을 출력할 경우 선택. 상품명 입력을 안했을 경우 '업소명 표기 여부'가 표기로 전환됩니다.</span></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><span style='font-size: 10pt;'>&nbsp;</span><b><span style='font-size: 10pt;'>[품 목 명]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(0, 0, 0); font-size: 10pt;'>&nbsp;세라믹프라이머[agent, restorative, sealant]</span></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><span style='font-size: 10pt;'>&nbsp;</span><b><span style='font-size: 10pt;'>[품목분류번호]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(0, 0, 0); font-size: 10pt;'>&nbsp;103</span></p></td></tr><tr><td class='' style='width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[등 &nbsp; &nbsp; 급]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(0, 0, 0); font-size: 10pt;'>&nbsp;1등급</span></p></td></tr></tbody></table><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='line-height: 1.5; background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='2' rowspan='1' style='width: 1224px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&nbsp;&gt; 사용목적</span></b></p></td></tr><tr><td class='' style='width: 303px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[사용목적]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;사용목적</span></p></td></tr><tr><td class='' style='width: 303px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[성 &nbsp; &nbsp; &nbsp;능]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;성능</span></p></td></tr></tbody></table><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' _se2_tbl_template='15' border='0' cellpadding='0' cellspacing='1' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='2' rowspan='1' style='width: 1222px; height: 16px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&nbsp;&gt; 신청항목</span></b></p></td></tr><tr><td class='' style='width: 302px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[원 &nbsp;재 &nbsp;료]</span></b></p></td><td class='' style='width: 920px; height: 16px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;원재료</span></p></td></tr><tr><td class='' style='width: 302px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[제조 방법]</span></b></p></td><td class='' style='width: 920px; height: 16px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;제조방법</span><span style='line-height: 1.5; color: rgb(255, 0, 0); font-size: 10pt;'>​</span></p></td></tr><tr><td class='' style='width: 302px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[사용 방법]</span></b></p></td><td class='' style='width: 920px; height: 16px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;사용방법</span></p></td></tr><tr><td class='' colspan='1' rowspan='1' style='padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[사용 시 주의사항]</span></b></p></td><td class='' colspan='1' rowspan='1' style='padding: 3px 4px 2px; background-color: rgb(255, 255, 255);'><p><font color='#3d76ab'><span style='font-size: 10pt;'>&nbsp;</span></font><font color='#ff0000'><span style='font-size: 10pt;'>사용 시 주의사항</span></font></p></td></tr><tr><td class='' rowspan='1' colspan='1' style='padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[저장 방법]</span></b></p></td><td class='' rowspan='1' colspan='1' style='padding: 3px 4px 2px; background-color: rgb(255, 255, 255);'><p><font color='#3d76ab'><span style='font-size: 10pt;'>&nbsp;</span></font><font color='#ff0000'><span style='font-size: 10pt;'>저장방법</span></font></p></td></tr><tr><td class='' rowspan='1' colspan='1' style='padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[사용 기한]</span></b></p></td><td class='' rowspan='1' colspan='1' style='padding: 3px 4px 2px; background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><font color='#ff0000'><span style='font-size: 10pt;'>사용기한</span></font></p></td></tr><tr><td class='' rowspan='1' colspan='1' style='padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[시험 규격]</span></b></p></td><td class='' rowspan='1' colspan='1' style='padding: 3px 4px 2px; background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><font color='#ff0000'><span style='font-size: 10pt;'>시험규격</span></font></p></td></tr><tr><td class='' rowspan='1' colspan='1' style='padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[허가 조건]</span></b></p></td><td class='' rowspan='1' colspan='1' style='padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span><span style='color: rgb(255, 0, 0); font-size: 10pt;'>허가조건</span></p></td></tr></tbody></table><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='2' rowspan='1' style='width: 1224px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&nbsp;&gt; 제조원</span></b></p></td></tr><tr><td class='' style='width: 303px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[제조 의뢰자]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;명칭(직접입력) [제조국(선택입력), 소재지(직접입력)]</span></p></td></tr><tr><td class='' style='width: 303px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[제 &nbsp;&nbsp;조 &nbsp; &nbsp;자]</span></b></p></td><td class='' style='width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;</span><span style='line-height: 1.5; color: rgb(255, 0, 0); font-size: 10pt;'>명칭(직접입력) [제조국(선택입력), 소재지(직접입력)]</span><span style='line-height: 1.5; color: rgb(255, 0, 0); font-size: 10pt;'>​</span></p></td></tr></tbody></table><p><i><span style='color: rgb(58, 50, 195); font-size: 10pt;'>* 제조자 항목은 제조의뢰자와 제조자가 동일할 경우 기재하고, 제조의뢰자와 제조자가 다를 경우에는 제조자 항목에 제품이 실제 조립되거나 생산되는 곳을 기재하고, 제조의뢰자에 법적제조책임자를 기재.</span></i></p><p><i><span style='color: rgb(58, 50, 195); font-size: 10pt;'>* 제조자가 다수인 경우 줄추가 메뉴를 이용하여 다중 입력이 가능합니다.&nbsp;</span></i></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' style='width: 299px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&nbsp;&gt; 비고</span></b></p></td><td class='' style='width: 924px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td></tr><tr><td class='' style='width: 299px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[일회용의료기기 여부]</span></b></p></td><td class='' style='width: 924px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;예/아니오</span></p></td></tr><tr><td class='' style='width: 299px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[추적관리대상 의료기기]</span></b></p></td><td class='' style='width: 924px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;</span><span style='line-height: 1.5; color: rgb(255, 0, 0); font-size: 10pt;'>예/아니오</span><span style='line-height: 1.5; color: rgb(255, 0, 0); font-size: 10pt;'>​</span></p></td></tr><tr><td class='' style='width: 299px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[비고(신청근거)]</span></b></p></td><td class='' style='width: 924px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;비고</span></p></td></tr><tr><td class='' style='width: 299px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[조합용 의료기기]</span></b></p></td><td class='' style='width: 924px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;품목병, 분류, 등급 * 조합용 의료기기가 여러개 일 경우 줄 추가 메뉴를 이용하여 추가작성 가능합니다.</span></p></td></tr></tbody></table><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='3' rowspan='1' style='width: 1216px; height: 17px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><span style='font-size: 10pt;'>&nbsp;</span><b><span style='font-size: 10pt;'>&gt; 모델명</span></b></p></td></tr><tr><td class='' style='width: 514px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><b><span style='font-size: 10pt;'>&nbsp;[일련번호]</span></b></p></td><td class='' style='width: 499px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><b><span style='font-size: 10pt;'>[모델명]&nbsp;</span></b></p></td><td class='' style='width: 203px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><b><span style='font-size: 10pt;'>[수출용 여부]&nbsp;</span></b></p></td></tr><tr><td class='' style='width: 514px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td><td class='' style='width: 499px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td><td class='' style='width: 203px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td></tr><tr><td class='' style='width: 514px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td><td class='' style='width: 499px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td><td class='' style='width: 203px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td></tr></tbody></table><p><span style='color: rgb(58, 50, 195); font-size: 10pt;'><i>* 모델명 중에 깨짐이 발생하는 문자(특수문자) 등은 직접 수정해주시기 바랍니다.&nbsp;</i></span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><div><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='line-height: 1.5; background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='3' rowspan='1' style='width: 1226px; height: 17px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><span style='font-size: 10pt;'>&nbsp;</span><b><span style='font-size: 10pt;'>&gt; 포장단위</span></b></p></td></tr><tr><td class='' style='width: 514px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><b><span style='font-size: 10pt;'>&nbsp;[일련번호]</span></b></p></td><td class='' colspan='2' rowspan='1' style='width: 712px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><b><span style='font-size: 10pt;'>[포장단위]&nbsp;</span></b></p></td></tr><tr><td class='' style='width: 514px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td><td class='' colspan='2' rowspan='1' style='width: 712px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td></tr><tr><td class='' style='width: 514px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td><td class='' colspan='2' rowspan='1' style='width: 712px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td></tr></tbody></table><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='2' rowspan='1' style='width: 1228px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><span style='font-size: 10pt;'>&nbsp;&gt; 모양 및 구조</span></p></td></tr><tr><td class='' style='width: 297px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[작용 원리]</span></b></p></td><td class='' style='width: 931px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;작용 원리</span></p></td></tr><tr><td class='' style='width: 297px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[외 &nbsp; &nbsp; &nbsp; 형]</span></b></p></td><td class='' style='width: 931px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;외형</span></p></td></tr><tr><td class='' style='width: 297px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[치 &nbsp; &nbsp; &nbsp; 수]</span></b></p></td><td class='' style='width: 931px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;치수</span></p></td></tr><tr><td class='' style='width: 297px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;[특 &nbsp; &nbsp; &nbsp; 성]</span></b></p></td><td class='' style='width: 931px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='color: rgb(255, 0, 0); font-size: 10pt;'>&nbsp;특성</span></p></td></tr></tbody></table><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><p><span style='font-size: 10pt;'>&nbsp;</span></p><table class='__se_tbl' border='0' cellpadding='0' cellspacing='1' _se2_tbl_template='15' style='background-color: rgb(166, 188, 209);'><tbody><tr><td class='' colspan='4' rowspan='1' style='width: 1212px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);'><p><b><span style='font-size: 10pt;'>&nbsp;&gt; 담당자</span></b></p></td></tr><tr><td class='' style='width: 297px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;성명</span></b></p></td><td class='' style='width: 290px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td><td class='' style='width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;이메일</span></b></p></td><td class='' style='width: 329px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td></tr><tr><td class='' style='width: 297px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;전화번호</span></b></p></td><td class='' style='width: 290px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td><td class='' style='width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);'><p><b><span style='font-size: 10pt;'>&nbsp;휴대폰</span></b></p></td><td class='' style='width: 329px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);'><p><span style='font-size: 10pt;'>&nbsp;</span></p></td></tr></tbody></table></div><p><span style='color: rgb(58, 50, 195); font-size: 10pt;'><i>* 이메일 : 민원처리과정에서 발생하는 담당자의 의견을 메일을 통해 전달받기 원하는 경우 기재</i></span></p><p><span style='color: rgb(58, 50, 195); font-size: 10pt;'><i>* 휴대폰 : 민원신청 내역의 처리 진행사항을 안내받기 원하는 경우 기재</i></span></p><p><span style='color: rgb(58, 50, 195);'><i><br></i></span></p><p><span style='color: rgb(58, 50, 195);'><i><br></i></span></p><p><span style='color: rgb(58, 50, 195);'><i><br></i></span></p><p><span style='color: rgb(58, 50, 195);'><i><br></i></span></p><p>&nbsp;</p>" name="contents">
</form>
<center>
	<input type="image" src="/resources/img/btn/kr_back_btn.png" width="60px;" onclick="javaScript:history.go(-1);">
	<input type="image" src="/resources/img/btn/kr_next_btn.png" width="60px;" onclick="formCheck();">
	<input type="image" src="/resources/img/btn/cancel_button.png" width="60px" onclick="javaScript:window.close();">
</center>
<script type="text/javascript">	
	function formCheck(){
		var title = document.test.title.value;
		var commit_no = document.test.commit_no.value;
		var making_name = document.test.making_name.value;
		var making_addrs = document.test.making_addrs.value;
		
		if(title==null || title==""){
			alert('폴더명을 입력해 주세요');
			document.test.title.focus();
			return false;
		}else if(commit_no==null || commit_no==""){
			alert('허가(신고)번호를 입력해 주세요)');
			document.test.commit_no.focus();
			return false;
		}else if(making_name==null || making_name==""){
			alert('허가(신고)번호를 입력해 주세요)');
			document.test.making_name.focus();
			return false;
		}else if(making_addrs==null || making_addrs==""){
			alert('허가(신고)번호를 입력해 주세요)');
			document.test.making_addrs.focus();
			return false;
		}else{
			document.test.submit();
		}
	}
</script>
</body>
</html>