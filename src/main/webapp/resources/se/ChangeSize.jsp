<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�̹��� ������ ����</title>
<script type="text/javascript">
function changeImg(filename){
	var imgHeight = document.getElementById("imgHeight").value;
	var imgWeidth = document.getElementById("imgWeidth").value;
	window.opener.document.getElementById(filename).style.width=imgWeidth+"px";
	window.opener.document.getElementById(filename).style.height=imgHeight+"px";
	window.close();
}

function resetSize(filename){
	window.opener.document.getElementById(filename).style.width="";
	window.opener.document.getElementById(filename).style.height="";
}
</script>
</head>
<body style="padding:0px; margin:0px; background-color:#F6F6F6;">
<div style="background-color:#102967; color:#ffffff; padding:5px;">
	�� �̹��� ������ ���� ��
</div><br>
<div style="background-color:grey; width:260px; margin:0 auto; padding:5px 10px 5px 10px; color:#ffffff; margin-top:5px; border:1px solid grey;">
����� �̹��� Ȯ��
</div> 
<div style="background-color:#DDDDDE; width:260px; margin:0 auto; padding:10px;  border:1px solid grey;">
	<center><img src="/resources/upload/<%=request.getParameter("filename")%>" width="200px"></center>
</div><br>
<table>
	<tr>
		<td>���ϸ� :</td>
		<td><%=request.getParameter("filename")%></td>
	</tr>
	<tr>
		<td>�̹��� ���� :</td>
		<td><input type="text" id="imgHeight" style="width:100px;">px</td>
	</tr>
	<tr>
		<td>�̹��� ���� :</td>
		<td><input type="text" id="imgWeidth" style="width:100px;">px</td>
	</tr>
</table>
<br>
<p style="color:red; font-size:10px;">�̹��� ������ ������ ���� ������ ��û���� ������ 10MB �̸��̾�� �ϹǷ� �̹��� ����� �̸� �����Ͽ� 200dpi~300dpi�ػ󵵷� ���ε尡 �����մϴ�.</p>
<div style="position:fixed; bottom:0px; text-align:right; background-color:grey; width:100%; padding:5px;">
	<input type="button" value="������ ����" onclick="changeImg('<%=request.getParameter("filename")%>')">
	<input type="button" value="������ �ʱ�ȭ" onclick="resetSize('<%=request.getParameter("filename")%>')">
	&nbsp;
</div>
</body>
</html>