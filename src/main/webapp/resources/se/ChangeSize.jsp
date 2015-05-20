<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>이미지 사이즈 변경</title>
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
	▶ 이미지 사이즈 변경 툴
</div><br>
<div style="background-color:grey; width:260px; margin:0 auto; padding:5px 10px 5px 10px; color:#ffffff; margin-top:5px; border:1px solid grey;">
변경될 이미지 확인
</div> 
<div style="background-color:#DDDDDE; width:260px; margin:0 auto; padding:10px;  border:1px solid grey;">
	<center><img src="/resources/upload/<%=request.getParameter("filename")%>" width="200px"></center>
</div><br>
<table>
	<tr>
		<td>파일명 :</td>
		<td><%=request.getParameter("filename")%></td>
	</tr>
	<tr>
		<td>이미지 높이 :</td>
		<td><input type="text" id="imgHeight" style="width:100px;">px</td>
	</tr>
	<tr>
		<td>이미지 넓이 :</td>
		<td><input type="text" id="imgWeidth" style="width:100px;">px</td>
	</tr>
</table>
<br>
<p style="color:red; font-size:10px;">이미지 사이즈 조절은 가능 하지만 신청내용 폴더가 10MB 미만이어야 하므로 이미지 사이즈를 미리 조정하여 200dpi~300dpi해상도로 업로드가 적합합니다.</p>
<div style="position:fixed; bottom:0px; text-align:right; background-color:grey; width:100%; padding:5px;">
	<input type="button" value="사이즈 변경" onclick="changeImg('<%=request.getParameter("filename")%>')">
	<input type="button" value="사이즈 초기화" onclick="resetSize('<%=request.getParameter("filename")%>')">
	&nbsp;
</div>
</body>
</html>