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
<div style="padding:10px;">
	<h2><�������� �ȳ�></h2>
	<div style="padding:5px; border:1px solid blakc; background-color:#EAEAEA;">
	1. �ѱ������� ��ü Text-editer ���߷� ���� �� �����Ӱ� �ۼ��� �����ϵ��� ������Ʈ �����Դϴ�.(�ݿ������� : 2016��-)<br>
	2. ���̵带 �پ��ϰ� ������Ʈ �� �����Դϴ�.(�ݿ�������: 2016��-)<br>
	</div>
	
	
	<h2><�ۼ��� ���ǻ���></h2> 
	1. �Ƿ��� ����ο��� �Ƿ������ڹο�â��(<a href="http://emed.kfda.go.kr" target="_blank">http://emed.kfda.go.kr</a>)���� �ۼ� �� �����Ͻñ�
	   �ٶ��ϴ�.<br>
	2. ��û����(��÷)�� ������ �㰡���� �¶������� �߱� �ޱ� ���ؼ��� ��Ÿ ���񼭷� ������ ������
	   ��û���� ���� ���ϵ��� ��ü ����� 10MB �̸����� �ۼ��� �Ǿ�� �մϴ�.<br>
	3. ���� �̹��� ���Խ� "�ػ󵵴� ������ 200dpi ~ 300dpi ���̷�" �۾��� �ֽñ� �ٶ��ϴ�.<br>
	4. ���� �̹��� ���Խ� "BMP ������ ������ JPEG, GIF, PNG ���� ������" ����� �ֽñ� �ٶ��ϴ�.<br>
	5. <font color="red">�̹����� ���ε� �� �� ������ ������ �� �� ������ <b>�̸� ����� �����Ͽ� ���ε�</b> ���ֽñ� �ٶ��ϴ�.</font><br>
	6. ���� ��û���� ���� ��ü ����� 10MB�� ���� ��� �㰡�� �¶��� �߱��� ����� ���� ������ 
	   �㰡�� ���ɹ���� �湮 �Ǵ� �������� ������ �ֽñ� �ٶ��ϴ�. <br>
	7. ���� ������ ���ؼ� ������ �̹����� ���� �� �ݵ�� "��ü�Ӽ�->�⺻->��ġ���� ����ó�� 
	   ����� üũ"�� �ֽñ� �ٶ��ϴ�.<br>
	8. <font color="red">�ѱ۷� ��ȯ�� ������ <b>���� ����</b>�� �ݵ�� �Ʒ� �׸��� ���� �����Ͽ� �ۼ��� �ֽñ� �ٶ��ϴ�.</font><br><br>
	<img src="/resources/img/forms/PageMargin.JPG">
</div>
<div style="height:40px;"></div>
<div style="position:fixed; bottom:0px; background-color:#EAEAEA; width:100%; padding:5px; text-align:right; ">
	<form name="form1" method="post" action="">
	<input type="checkbox" name="pop1" id="pop1"><label for="pop1" style="cursor:hand; cursor:pointer;">������ ��â�� �ٽ� ��������.</label>
	<input type="button" value="Ȯ��" OnClick="notice_closeWin()">&nbsp;&nbsp;&nbsp;&nbsp;
	</form>
</div>
</body>
</html>