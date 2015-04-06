<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>STED 작성시 주의사항</title>
<script type="text/javascript">
<!--
function notice_setCookie( name, value, expiredays ) {
 var todayDate = new Date();
 todayDate.setDate( todayDate.getDate() + expiredays );
 document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}
//체크후 닫기를 눌렀을때 쿠키를 만들고 창닫는다.
function notice_closeWin() {
 if ( document.forms[0].pop1.checked )
 notice_setCookie( "pop1", "done" , 1); //1일
 self.close();
}
//-->

</script>
</head>
<body style="margin:0 auto;">
<div style="padding:10px;">
	<h2><공지사항 안내></h2>
	<div style="padding:5px; border:1px solid blakc; background-color:#EAEAEA;">
	1. 한국지엠피 자체 Text-editer 개발로 조금 더 자유롭게 작성이 가능하도록 업데이트 예정입니다.(반영예정일 : 2016년-)<br>
	2. 가이드를 다양하게 업데이트 할 예정입니다.(반영예정일: 2016년-)<br>
	</div>
	
	
	<h2><작성시 주의사항></h2> 
	1. 의료기기 변경민원은 의료기기전자민원창구(<a href="http://emed.kfda.go.kr" target="_blank">http://emed.kfda.go.kr</a>)에서 작성 및 접수하시길
	   바랍니다.<br>
	2. 신청내용(별첨)을 포함한 허가증을 온라인으로 발급 받기 위해서는 기타 구비서류 폴더를 제외한
	   신청내용 폴더 파일들의 전체 사이즈가 10MB 미만으로 작성이 되어야 합니다.<br>
	3. 따라서 이미지 삽입시 "해상도는 가급적 200dpi ~ 300dpi 사이로" 작업해 주시기 바랍니다.<br>
	4. 또한 이미지 삽입시 "BMP 포멧을 제외한 JPEG, GIF, PNG 등의 포멧을" 사용해 주시기 바랍니다.<br>
	5. <font color="red">이미지는 업로드 한 후 사이즈 변경을 할 수 없으니 <b>미리 사이즈를 조정하여 업로드</b> 해주시기 바랍니다.</font><br>
	6. 만약 신청내용 폴더 전체 사이즈가 10MB를 넘을 경우 허가증 온라인 발급이 어려울 수도 있으니 
	   허가증 수령방법을 방문 또는 우편으로 지정해 주시기 바랍니다. <br>
	7. 문단 정렬을 위해서 문서에 이미지를 삽입 시 반드시 "개체속성->기본->위치에서 글자처럼 
	   취급을 체크"해 주시기 바랍니다.<br>
	8. <font color="red">한글로 변환한 서류의 <b>용지 여백</b>은 반드시 아래 그림과 같이 지정하여 작성해 주시기 바랍니다.</font><br><br>
	<img src="/resources/img/forms/PageMargin.JPG">
</div>
<div style="height:40px;"></div>
<div style="position:fixed; bottom:0px; background-color:#EAEAEA; width:100%; padding:5px; text-align:right; ">
	<form name="form1" method="post" action="">
	<input type="checkbox" name="pop1" id="pop1"><label for="pop1" style="cursor:hand; cursor:pointer;">오늘은 이창을 다시 열지않음.</label>
	<input type="button" value="확인" OnClick="notice_closeWin()">&nbsp;&nbsp;&nbsp;&nbsp;
	</form>
</div>
</body>
</html>