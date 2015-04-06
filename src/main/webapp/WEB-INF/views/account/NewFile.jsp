<%@ page language='java' contentType='text/html; charset=utf-8'  pageEncoding='utf-8'%>
<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
<title>Basic Info</title>
<link rel='stylesheet' href='http://localhost:90/resources/css/forms/search.css'/>
</head>
<body style='padding:0px;'>
<table style='border-collapse:collapse; width:100%; margin-bottom:2px;'>
	<tr>
		<td id='title'><h1>K-GMP</h1></td>
	</tr>
</table>
<div style='padding:10px;'>
	<table id='list_table'>
		<tr>
			<td class='list_table_th'>목차</td>
			<td class='list_table_th'>입력값</td>
		</tr>
		<tr>
			<td class='list_table_td' style='padding-left:10px'>파일명</td>
			<td class='list_table_td' style='padding-left:10px'>${forms.title}</td>
		</tr>
		<tr>
			<td class='list_table_td' style='padding-left:10px'>ID(e-mail)</td>
			<td class='list_table_td' style='padding-left:10px'>${forms.id1}-${forms.id2}-${forms.id3}[${forms.email1}@${forms.email2}]</td>
		</tr>
		<tr>
			<td class='list_table_td' style='padding-left:10px'>품목명</td>
			<td class='list_table_td' style='padding-left:10px'>${forms.kor_name}[${forms.eng_name}]</td>
		</tr>
		<tr>
			<td class='list_table_td' style='padding-left:10px'>품목 등급</td>
			<td class='list_table_td' style='padding-left:10px'>${forms.p_class}</td>
		</tr>
		<tr>
			<td class='list_table_td' style='padding-left:10px'>작성일</td>
			<td class='list_table_td' style='padding-left:10px'>${forms.add_date}</td>
		</tr>
	</table><br>
</div>
</body>
</html>