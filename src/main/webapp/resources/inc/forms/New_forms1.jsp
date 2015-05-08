<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="contents1" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=1" name="url">
		  	<input type="hidden" value="ck_form1" name="ck_form">
		  	<p><b><span style="font-size: 12pt;">ㅣ 의료기기 기술문서 등 심사의뢰서</span></b></p><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="4">▶ 의뢰인</td></tr>
		  		<tr>
		  			<td class="first_th" >[성명(대표자)]</td>
		  			<td class="first_td" width="300px">${memberInfo.kor_name}</td>
		  			<td class="first_th">[생년월일]</td>
		  			<td class="first_td"><input type="date" placeholder="YYYY-MM-DD" style="width:99%;"></td>
	  			</tr>
		  		<tr><td class="first_th">[주소]</td><td class="first_td" colspan="3">${memberInfo.address}</td></tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="4">▶ 제조(수입)업소</td></tr>
		  		<tr>
		  			<td class="first_th" >[명칭(상호)]</td>
		  			<td class="first_td" width="300px" colspan="3"><input type="text" placeholder="업소명칭(상호)" style="width:99%;"></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[주소]</td>
		  			<td class="first_td" colspan="3"><input type="text" placeholder="(우편번호)제조소의 소재지" style="width:99%;"></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" >[사업자등록번호]</td>
		  			<td class="first_td" width="300px"><input type="text" placeholder="사업자등록번호" style="width:99%;"></td>
		  			<td class="first_th">[입허가번호]</td>
		  			<td class="first_td"><input type="text" placeholder="입허가번호" style="width:98%;"></td></tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 심사의뢰의 구분</td></tr>
		  		<tr><td class="first_th" >[심사의 종류]</td><td class="first_td" >기술문서 심사</td></tr>
		  		<tr>
		  			<td class="first_th">[제조/수입 구분]</td>
		  			<td class="first_td" colspan="3">
		  				<input type="radio">&nbsp; 제조
		  				<input type="radio">&nbsp; 수입
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" >[제품의 구분]</td>
		  			<td class="first_td" >
		  				<input type="radio">&nbsp; 새로운제품
		  				<input type="radio">&nbsp; 개량제품
		  				<input type="radio">&nbsp; 동등제품
		  				<input type="radio">&nbsp; 해당없음
		  				&nbsp; <font color="red">(3,4등급은 해당없음을 선택)</font>
		  			</td>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 상세내용</td></tr>
		  		<tr><td class="first_th" >[제품명]</td><td class="first_td" >${forms.kor_name}, ${forms.code}</td></tr>
		  		<tr>
		  			<td class="first_th">[상품명]</td>
		  			<td class="first_td"><input type="text" placeholder="상품명(2개 이상 입력 시, 콤마로 분리하여 입력)" style="width:98%;"></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" >[업소명 표기 여부]</td>
		  			<td class="first_td" >
		  				<input type="radio">&nbsp; 예
		  				<input type="radio">&nbsp; 아니요<br>
		  				<font color="red">(제품명에 업소명을 출력할 경우 선택해 주세요. 상품명 입력을 안했을 경우 '업소명 표기 여부'가 표기로 전환됩니다.)</font>
		  			</td>
	  			</tr>
		  		<tr><td class="first_th" >[품목명]</td><td class="first_td" >${forms.kor_name}</td></tr>
		  		<tr><td class="first_th" >[품목분류번호]</td><td class="first_td" >${forms.code}</td></tr>
		  		<tr><td class="first_th" >[등급]</td><td class="first_td" >${forms.p_class}</td></tr>
		  	</table><br>
	  		<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 사용목적</td></tr>
		  		<tr>
		  			<td class="first_th" >[사용목적]</td>
		  			<td class="first_td" ><input type="text" style="width:98%;" placeholder="사용목적"></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[성능]</td>
		  			<td class="first_td">
		  				<input type="button" value="별첨추가">
		  			</td>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 신청항목</td></tr>
		  		<tr><td class="first_th" >[원재료]</td><td class="first_td" >별첨</td></tr>
		  		<tr><td class="first_th">[제조방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[사용방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[사용 시 주의사항]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[저장방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[사용기한]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[시험규격]</td><td class="first_td">별첨</td></tr>
		  		<tr>
		  			<td class="first_th">[허가조건]</td>
		  			<td class="first_td"><input type="text" style="width:98%;" placeholder="허가조건"></td>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 제조원</td></tr>
		  		<tr>
		  			<td class="first_th" >[제조의뢰자]</td>
		  			<td class="first_td" >
		  				<input type="text" placeholder="명칭(직접입력)">
		  				(<input type="text" placeholder="제조국(선택입력)" readonly>,
		  				<input type="text" placeholder="소재지(직접입력)">)
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[제조자]</td>
		  			<td class="first_td" >
		  				<input type="text" placeholder="명칭(직접입력)">
		  				(<input type="text" placeholder="제조국(선택입력)" readonly>,
		  				<input type="text" placeholder="소재지(직접입력)">)
		  			</td>
	  			</tr>
		  	</table>
		  	<p>
			  	<ul style="color:red;">
			  		<li>제조자 항목은 제조의뢰자와 제조자가 동일할 경우 기재하고, 제조의뢰자와 제조자가 다를 경우에는 제조자 항목에 제품이 실제 조립되거나 생산되는 곳을 기재하고, 제조의뢰자에 법적제조책임자를 기재.</li>
			  		<li>제조자가 다수인 경우[입력->줄추가] 메뉴를 이용하여 다중 입력이 가능합니다.</li>
			  	</ul>
		  	</p>
		  	<br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 비고</td></tr>
		  		<tr>
		  			<td class="first_th" >[일회용의료기기 여부]</td>
		  			<td class="first_td" >
		  				<input type="radio">&nbsp; 예
		  				<input type="radio">&nbsp; 아니요
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[추적관리대상의료기기]</td>
		  			<td class="first_td">
		  				<input type="radio">&nbsp; 예
		  				<input type="radio">&nbsp; 아니요
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[비고(신청근거)]</td>
		  			<td class="first_td"><input type="text" style="width:98%;" placeholder="비고(신청근거)"></td>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" >▶ 조합의료기기</td></tr>
		  		<tr>
		  			<td class="first_td" style="height:30px;"><input type="text" style="width:98%;" placeholder="품목명, 분류번호, 등급"></td>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" >▶ 모델명/포장단위</td></tr>
		  	</table>
		    <textarea id="txtContent" name="contents" style="width:100%; color:#ffffff;">
		    	▶ 모델명
		    	<table border="0" cellpadding="0" cellspacing="0" style="border:1px solid #000000; border-left:0; border-bottom:0;" class="__se_tbl">
		    		<tbody>
						<tr>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#DDDDDE;" width="189"><p>&nbsp;[일렬번호]</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#DDDDDE;" width="489"><p>&nbsp;[품목명]</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#DDDDDE;" width="189"><p>&nbsp;[수출용여부]</p></td>
						</tr>
						<tr>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="189"><p>&nbsp;</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="489"><p>&nbsp;</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="189"><p>&nbsp;</p></td>
						</tr>
						<tr>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="189"><p>&nbsp;</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="489"><p>&nbsp;</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="189"><p>&nbsp;</p></td>
						</tr>
					</tbody>
				</table><br>
				▶ 포장단위
				<table border="0" cellpadding="0" cellspacing="0" style="border:1px solid #000000; border-left:0; border-bottom:0;" class="__se_tbl">
					<tbody>
						<tr>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#DDDDDE" width="234"><p>&nbsp;[일렬번호]</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#DDDDDE" width="634"><p>&nbsp;[포장단위]</p></td>
						</tr>
						<tr>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="234"><p>&nbsp;</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="634"><p>&nbsp;</p></td>
						</tr>
						<tr>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="234"><p>&nbsp;</p></td>
							<td style="border:1px solid #000000; border-top:0; border-right:0; background-color:#ffffff" width="634"><p>&nbsp;</p></td>
						</tr>
					</tbody>
				</table>
		    </textarea><br><br>
		    <table class="first_form">
		  		<tr><td class="first_title" colspan="3">▶ 모양 및 구조</td></tr>
		  		<tr>
		  			<td class="first_th" >[작용원리]</td>
		  			<td class="first_td">
		  				<div id="logic_tool">
			  				<input type="button" value="별첨추가" >
			  				<input type="button" value="직접입력" onclick="logic_function1()" >
		  				</div>
		  				<textarea style="width:98%; display:none;" id="logic_text" placeholder="작용원리">-</textarea>
	  				</td>
	  				<td align="center"><a class="change" id="change1" onclick="logic_function2()">x</a></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[외형]</td>
		  			<td class="first_td">
		  				<div id="shape_tool">
			  				<input type="button" value="별첨추가" >
			  				<input type="button" value="직접입력" onclick="shape_function1()" >
		  				</div>
		  				<textarea style="width:98%; display:none;" id="shape_text" placeholder="외형">-</textarea>
	  				</td>
	  				<td align="center"><a class="change" id="change2" onclick="shape_function2()">x</a></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[치수]</td>
		  			<td class="first_td">
		  				<div id="size_tool">
			  				<input type="button" value="별첨추가" >
			  				<input type="button" value="직접입력" onclick="size_function1()" >
		  				</div>
		  				<textarea style="width:98%; display:none;" id="size_text" placeholder="치수">-</textarea>
	  				</td>
	  				<td align="center"><a class="change" id="change3" onclick="size_function2()">x</a></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[특성]</td>
		  			<td class="first_td" >별첨</td>
		  			<td align="center"></td>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 담당자</td></tr>
		  		<tr><td class="first_th" >[성명]</td><td class="first_td">${memberInfo.kor_name}</td></tr>
		  		<tr><td class="first_th">[전화번호]</td><td class="first_td">${memberInfo.phone1}-${memberInfo.phone2}-${memberInfo.phone3}</td></tr>
		  		<tr><td class="first_th">[이메일]</td><td class="first_td">${memberInfo.email1}@${memberInfo.email2}</td></tr>
		  		<tr><td class="first_th">[휴대폰]</td><td class="first_td">${memberInfo.cell_phone1}-${memberInfo.cell_phone2}-${memberInfo.cell_phone3}</td></tr>
		  	</table><br>
		  </div>
	 </form>
</div>
<script>
	function logic_function1(){
		$("#logic_text").css("display","block");
		$("#logic_tool").css("display", "none");
		$("#change1").css("display", "block");
		document.getElementById('logic_text').value="";
	}
	
	function logic_function2(){
		$("#logic_text").css("display","none");
		$("#logic_tool").css("display", "block");
		$("#change1").css("display", "none");
		document.getElementById('logic_text').value="-";
	}
	
	function shape_function1(){
		$("#shape_text").css("display","block");
		$("#shape_tool").css("display", "none");
		$("#change2").css("display", "block");
		document.getElementById('shape_text').value="";
	}
	
	function shape_function2(){
		$("#shape_text").css("display","none");
		$("#shape_tool").css("display", "block");
		$("#change2").css("display", "none");
		document.getElementById('shape_text').value="-";
	}

	function size_function1(){
		$("#size_text").css("display","block");
		$("#size_tool").css("display", "none");
		$("#change3").css("display", "block");
	}
	
	function size_function2(){
		$("#size_text").css("display","none");
		$("#size_tool").css("display", "block");
		$("#change3").css("display", "none");
	}
</script>