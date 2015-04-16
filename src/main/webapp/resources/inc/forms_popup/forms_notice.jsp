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
<style type="text/css">
select, input, img, input.type-image{/* border: 0 none; */ vertical-align:middle;}
</style>
</head>
<body style="margin:0 auto;">
<img src="/resources/img/forms/notice.jpg" width="100%">
<div style="height:40px;"></div>
<div style="position:fixed; bottom:0px; background-color:#EAEAEA; width:100%; padding:5px; text-align:right; ">
	<form name="form1" method="get" action="">
	<input type="checkbox" name="pop1" id="pop1"><label for="pop1" style="cursor:hand; cursor:pointer;">오늘은 이창을 다시 열지않음.</label>
	<input type="image" src="/resources/img/member/Submit_button.png" width="50px" OnClick="notice_closeWin()">&nbsp;&nbsp;&nbsp;&nbsp;
	</form>
</div>
</body>
</html>