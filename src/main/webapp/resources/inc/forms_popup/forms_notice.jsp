<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>STED �ۼ��� ���ǻ���</title>
<script type="text/javascript">
<!--
function notice_setCookie( name, value, expiredays ) {
 var todayDate = new Date();
 todayDate.setDate( todayDate.getDate() + expiredays );
 document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}
//üũ�� �ݱ⸦ �������� ��Ű�� ����� â�ݴ´�.
function notice_closeWin() {
 if ( document.forms[0].pop1.checked )
 notice_setCookie( "pop1", "done" , 1); //1��
 self.close();
}
//-->

</script>
</head>
<body style="margin:0 auto;">
<img src="/resources/img/forms/notice.jpg" width="100%">
<div style="height:40px;"></div>
<div style="position:fixed; bottom:0px; background-color:#EAEAEA; width:100%; padding:5px; text-align:right; ">
	<form name="form1" method="post" action="">
	<input type="checkbox" name="pop1" id="pop1"><label for="pop1" style="cursor:hand; cursor:pointer;">������ ��â�� �ٽ� ��������.</label>
	<input type="button" value="Ȯ��" OnClick="notice_closeWin()">&nbsp;&nbsp;&nbsp;&nbsp;
	</form>
</div>
</body>
</html>