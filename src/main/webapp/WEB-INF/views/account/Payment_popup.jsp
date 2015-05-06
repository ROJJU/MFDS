<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Basic Info</title>
<link rel="stylesheet" href="/resources/css/forms/search.css"/>
<script type="text/javascript">
function formCheck(){
	var payment_name = document.payment.payment_name.value;
	
	if(payment_name==null || payment_name==""){
		alert('입금자명을 입력해 주세요');
		document.payment.payment_name.focus();
		return false;
	}else{
		document.payment.submit()
	}
}
</script>
<style type="text/css">
.box_style{
height:132; background-color:#EAEAEA;  border-radius:5%; padding:10px; border:1px solid grey;
}
</style>
</head>
<body style="padding:0px;">
<table style="border-collapse:collapse; width:100%; margin-bottom:2px;">
	<tr>
		<td id="title"><h1>K-GMP</h1></td>
	</tr>
</table>
<div style="padding:10px;">
	<table id="list_table">
		<tr>
			<td class="list_table_th">목차</td>
			<td class="list_table_th">입력값</td>
		</tr>
		<tr>
			<td class="list_table_td" style="padding-left:10px">파일명</td>
			<td class="list_table_td" style="padding-left:10px"><input type="text" value="${forms.title}"></td>
		</tr>
		<tr>
			<td class="list_table_td" style="padding-left:10px">ID(e-mail)</td>
			<td class="list_table_td" style="padding-left:10px">${forms.id1}-${forms.id2}-${forms.id3}[${forms.email1}@${forms.email2}]</td>
		</tr>
		<tr>
			<td class="list_table_td" style="padding-left:10px">품목명</td>
			<td class="list_table_td" style="padding-left:10px">${forms.kor_name}[${forms.eng_name}]</td>
		</tr>
		<tr>
			<td class="list_table_td" style="padding-left:10px">품목 등급</td>
			<td class="list_table_td" style="padding-left:10px">${forms.p_class}</td>
		</tr>
		<tr>
			<td class="list_table_td" style="padding-left:10px">작성일</td>
			<td class="list_table_td" style="padding-left:10px">${forms.add_date}</td>
		</tr>
	</table><br>
	<%if(request.getParameter("payment").equals("1")){ %>
	<table width="100%">
		<tr>
			<td class="box_style">
				<form name="payment" action="/updatePaymentProc.do" method="post">
					<table>
						<tr height="25px">
							<td width="100px"><b>무통장 입금</b></td>
							<td>
								<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
								<select style="width:100%;" name="payment_bank">
									<option value="우리은행(1002-542-000000)">우리은행(1002-542-000000)</option>
									<option value="기업은행(1002-542-000000)">기업은행(1002-542-000000)</option>
								</select>
							</td>
							<td style="color:red; font-size:10px; width:100px;">&nbsp;*선택하십시오.</td>
						</tr>
						<tr height="25px">
							<td><b>예금주명</b></td>
							<td>(주)한국지엠피</td>
							<td style="color:red; font-size:8px;"></td>
						</tr>
						<tr height="25px">
							<td><b>입금자명</b></td>
							<td><input type="text" style="width:100%;" name="payment_name"></td>
							<td style="color:red; font-size:9px;"></td>
						</tr>
						<tr height="25px">
							<td><b>입금자명</b></td>
							<td colspan="2"><font color="red"><b>신청 후 [7일] 이내로</b></font> 입금해 주셔야 합니다.</td>
						</tr>
					</table>
				</form>
			</td>
			<td width="2px"></td>
			<td style=" vertical-align:top; padding-left:10px;" class="box_style">
				<table width="100%">
					<tr><td><b>최종 결제 금액</b><br><br></td></tr>
					<tr>
						<td>
							&nbsp;<input type="text" style="width:100%; text-align:right;" value="25,000,000 원&nbsp;&nbsp;" readonly><br>
							&nbsp;<input type="text" style="width:100%; text-align:right;" value="이천오백만 원&nbsp;&nbsp;" readonly>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<br>
	<p style="color:grey; font-weight:bolder;">
	* 대금은 (주)한국지엠피 전용계좌로만 입금 하셔야 하며, (주)한국지엠피 전용계좌 외의 계좌로 입금하실경우 고객님의 거래대금은 법적 보호를 받지 못하오니, 반드시 (주)한국지엠피 전용계좌로만 입금 해주셔야 합니다.
	</p>
	<%}else if(request.getParameter("payment").equals("2")){%>
	<div style="width:100%; text-align:center; color:red;">
		결제 신청이 완료 된 폴더입니다. 입금 확인 후 폴더가 활성화 됩니다. <b>[평균 소요시간 : 1~2일]</b>
	</div>
	<%}else{%>
	<div style="width:100%; text-align:center; color:red;">
		결제가 완료된 폴더 입니다. 불러오기 버튼을 클릭하여 서류를 확인 하실 수 있습니다.
	</div>
	<%}%>
	<br>
	<center>
		<%if(request.getParameter("payment").equals("1")){ %>
		<input type="image" src="/resources/img/btn/payment_btn.png" width="55px" onclick="formCheck()">
		<%}else if(request.getParameter("payment").equals("2")){%>
		
		<%}else{%>
		<input type="image" src="/resources/img/btn/load_button.png" width="55px" onclick="javaScript:location.href='/condition.do?forms_seq=<%=request.getParameter("forms_seq")%>'">
		<%}%>
		<input type="image" src="/resources/img/btn/cancel_button.png" width="55px" onclick="javaScript:window.close();">
	</center>
</div>
<div style="height:50px;">
<!--blank-->
</div>
<div style="position:fixed; bottom:0px; width:100%; background-color:#f2f2f2; border-top:3px solid #050099; text-align:right; padding:5px 5px 5px 5px;">
	<input type="button" value="폴더명 변경">&nbsp;
	<input type="button" value="폴더 삭제" onclick="javaScript:location.href='/DelForms.do?forms_seq=<%=request.getParameter("forms_seq")%>'">&nbsp;&nbsp;&nbsp;
</div>
</body>
</html>