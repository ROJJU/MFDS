<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>한글 변환 프로그램</title>
<style type="text/css">
.title{
width:130px;
}
td{
border:1px solid grey;
padding:3px;
}
.loading{
font-size:10px;
color:blue;
}
</style>
</head>
<body style="margin:0px; padding:0px;">
<div style="height:40px; background-color:#324172; padding-left:10px; padding-top:10px; font-size:20px; color:#ffffff; font-weight:bolder;">
	▶&nbsp;한글 변환 프로그램
</div>
<div style="padding:10px;">
	▶ 신청내용
	<table style=" width:100%;" cellspacing="0">
		<tr>
			<td class="title">신청서</td><td><div id="form0" class="loading">로딩..</div></td>
			<td class="title">원재료</td><td><div id="form1" class="loading">로딩..</div></td>
			<td class="title">제조방법</td><td><div id="form3" class="loading">로딩..</div></td>
			<td class="title">사용방법</td><td><div id="form4" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">사용시 주의사항</td><td><div id="form5" class="loading">로딩..</div></td>
			<td class="title">저장방법</td><td><div id="form6" class="loading">로딩..</div></td>
			<td class="title">사용기한</td><td><div id="form7" class="loading">로딩..</div></td>
			<td class="title">시험규격</td><td><div id="form8" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">모양 및 구조<br>-특성</td><td><div id="form9" class="loading">로딩..</div></td>
			<td class="title">모양 및 구조<br>-작용원리</td><td><div id="form10" class="loading">로딩..</div></td>
			<td class="title">모양 및 구조<br>-외형</td><td><div id="form11" class="loading">로딩..</div></td>
			<td class="title">모양 및 구조<br>-치수</td><td><div id="form12" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">성능</td><td><div id="form13" class="loading">로딩..</div></td>
			<td class="title">기타</td><td><div id="form14" class="loading">로딩..</div></td>
			<td class="title"></td><td><div class="loading"></div></td>
			<td class="title"></td><td><div class="loading"></div></td>
		</tr>
	</table><br>
	▶ 국제표준화 기술문서
	<table style=" width:100%;" cellspacing="0">
		<tr>
			<td class="title">목차</td><td><div id="form15" class="loading">로딩..</div></td>
			<td class="title">기기설명</td><td><div id="form16" class="loading">로딩..</div></td>
			<td class="title">제품사양</td><td><div id="form17" class="loading">로딩..</div></td>
			<td class="title">유사기기 및 허가된 제품에 대한 참고자료</td><td><div id="form18" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">표시기재(안)</td><td><div id="form19" class="loading">로딩..</div></td>
			<td class="title">기기설계 계요</td><td><div id="form20" class="loading">로딩..</div></td>
			<td class="title">제조공정 요약</td><td><div id="form21" class="loading">로딩..</div></td>
			<td class="title">설계 및 제조장소 요약</td><td><div id="form22" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">필수원칙 체크리스트</td><td><div id="form23" class="loading">로딩..</div></td>
			<td class="title">위험분석과 관리요약</td><td><div id="form24" class="loading">로딩..</div></td>
			<td class="title">규격에 대한 적합선언</td><td><div id="form25" class="loading">로딩..</div></td>
			<td class="title">기기설계의 유효성 확인 개요</td><td><div id="form26" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">전기 · 기계적 안전성 시험 요약</td><td><div id="form27" class="loading">로딩..</div></td>
			<td class="title">생물학적 안전성 시험 요약</td><td><div id="form28" class="loading">로딩..</div></td>
			<td class="title">방사선에 관한 안전성 시험 요약</td><td><div id="form29" class="loading">로딩..</div></td>
			<td class="title">전자파 안전성 시험 요약</td><td><div id="form30" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">성능에 관한 자료 요약</td><td><div id="form31" class="loading">로딩..</div></td>
			<td class="title">소프트웨어 검증 및 유효성 확인 자료 요약</td><td><div id="form32" class="loading">로딩..</div></td>
			<td class="title">물리 및 화학적 특성 자료 요약</td><td><div id="form33" class="loading">로딩..</div></td>
			<td class="title">동물유래 물질에 대한 안전성 자료 요약</td><td><div id="form34" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">안전성 시험 요약</td><td><div id="form35" class="loading">로딩..</div></td>
			<td class="title">복합, 조합된 의약품에 대한 정보 요약</td><td><div id="form36" class="loading">로딩..</div></td>
			<td class="title">동물시험 자료 요약</td><td><div id="form37" class="loading">로딩..</div></td>
			<td class="title">임상시험 자료 요약</td><td><div id="form38" class="loading">로딩..</div></td>
		</tr>
	</table><br>
	▶ 첨부자료
	<table style=" width:100%;" cellspacing="0">
		<tr>
			<td class="title">목차</td><td><div id="form39" class="loading">로딩..</div></td>
			<td class="title">제조공정에 관한 자료</td><td><div id="form40" class="loading">로딩..</div></td>
			<td class="title">위험분석 보고서</td><td><div id="form41" class="loading">로딩..</div></td>
			<td class="title">제품검증 및 유효성 확인 자료</td><td><div id="form42" class="loading">로딩..</div></td>
		</tr>
		<tr>
			<td class="title">참고문헌</td><td><div id="form43" class="loading">로딩..</div></td>
			<td class="title"></td><td><div  class="loading"></div></td>
			<td class="title"></td><td><div class="loading"></div></td>
			<td class="title"></td><td><div class="loading"></div></td>
		</tr>
	</table><br>
	<div style="position:relative; height:40px;"><!--blank--></div>
	<div style="position:fixed; width:100%; bottom:0px; left:0px; background:grey; padding:10px; text-align:right; color:#ffffff;">
		다운로드를 위해 열린 팝업은 <b style="color:red;">15초</b>뒤 자동으로 닫힙니다.
		<input type="button" value="닫기" onclick="javaScript:window.close();" style="margin-right:20px; margin-left:20px;">
	</div>
</div>
<input type="hidden" value="<%=request.getParameter("forms_seq")%>" id="forms_seq">
<script type="text/javascript" src="/resources/js/account/jquery-1.4.2.min.js" ></script>
<script type="text/javascript">
	function help(){
		for(var i=0; i<=43; i++){
			var forms_seq = document.getElementById("forms_seq").value;
		window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+i+'&num2=form'+i,''+i+'','width=1 height=1 scrollbars=yes');
		}
	  }
	
	setTimeout('help()', 3000);
	</script>
</body>
</html>