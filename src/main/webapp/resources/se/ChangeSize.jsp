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
</script>
</head>
<body style="padding:0px; margin:0px;">
<div style="background-color:#102967; color:#ffffff; padding:5px;">
	�̹��� ������ ���� ��
</div>
<div style="background-color:#DDDDDE; width:250px; margin:0 auto; padding:5px; margin-top:5px;">
	����� �̹��� Ȯ�� 
	<center><img src="/resources/upload/<%=request.getParameter("filename")%>" width="200px"></center>
</div>
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
<input type="button" value="�ϴ� ������" onclick="changeImg('<%=request.getParameter("filename")%>')"><br>
<p style="color:red; font-size:10px;">�̹��� ������ ������ ���� ������ ��û���� ������ 10MB �̸��̾�� �ϹǷ� �̹��� ����� �̸� �����Ͽ� 200dpi~300dpi�ػ󵵷� ���ε尡 �����մϴ�.</p>
</body>
</html>