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
	var imgWidth = document.getElementById("imgWidth").value;
	window.opener.document.getElementById(filename).style.width=imgWidth+"px";
	window.opener.document.getElementById(filename).style.height=imgHeight+"px";
	window.close();
}

function checkSize(filename){
	var oldWidth =window.opener.document.getElementById(filename).width;
	var oldHeight =window.opener.document.getElementById(filename).height;
	document.getElementById("imgHeight").value=oldHeight;
	document.getElementById("imgWidth").value=oldWidth;
}

function resizeWidth(filename){
	var check = document.getElementById("sizeCheck").value;
	var imgWidth = document.getElementById("imgWidth").value;
	if(check=="off"){
		window.opener.document.getElementById(filename).style.width=imgWidth+"px";
		window.opener.document.getElementById(filename).style.height="";
		var oldHeight =window.opener.document.getElementById(filename).height;
		document.getElementById("imgHeight").value=oldHeight;
	}
	if(imgWidth=="0"||imgWidth==""){
		alert("0 이상의 값을 입력해주세요");
		document.getElementById("imgWidth").value="1";
	}
}

function resizeHeight(filename){
	var check = document.getElementById("sizeCheck").value;
	var imgHeight = document.getElementById("imgHeight").value;
	if(check=="off"){
		window.opener.document.getElementById(filename).style.height=imgHeight+"px";
		window.opener.document.getElementById(filename).style.width="";
		var oldWidth =window.opener.document.getElementById(filename).width;
		document.getElementById("imgWidth").value=oldWidth;
	}
	if(imgHeight=="0"||imgHeight==""){
		alert("0 이상의 값을 입력해주세요");
		document.getElementById("imgHeight").value="1";
	}
}

function resetSize(filename){
	window.opener.document.getElementById(filename).style.width="";
	window.opener.document.getElementById(filename).style.height="";
	var oldWidth =window.opener.document.getElementById(filename).width;
	var oldHeight =window.opener.document.getElementById(filename).height;
	document.getElementById("imgHeight").value=oldHeight;
	document.getElementById("imgWidth").value=oldWidth;
}

function changeCeakValue(){
	var check = document.getElementById("sizeCheck").value;
	if(check=="off"){
		document.getElementById("sizeCheck").value='on';
	}else{
		document.getElementById("sizeCheck").value='off';
	}
}
</script>
</head>
<body style="padding:0px; margin:0px; background-color:#F6F6F6;" onload="checkSize('<%=request.getParameter("filename")%>')">
	<div style="background-color:#102967; color:#ffffff; padding:5px;">
		<b>▶ 이미지 사이즈 변경 툴</b>
	</div>
	<div style="color:grey; font-size:11px; width:260px; margin:0 auto; padding:5px 10px 5px 10px; margin-top:5px; ">
		<table width="100%">
			<tr>
				<td width="100px;" style="vertical-align:top;">선택 이미지 :</td>
				<td><center><img src="/resources/upload/<%=request.getParameter("filename")%>" width="100px" style="border:1px solid black; "></center></td>
			</tr>
		</table>
		파일명:
		<hr>
		<table width="100%">
			<tr>
				<td>가로</td>
				<td><input type="text" id="imgWidth" style="width:50px;" onkeyup="resizeWidth('<%=request.getParameter("filename")%>')">px</td>
				<td>세로</td>
				<td><input type="text" id="imgHeight" style="width:50px;" onkeyup="resizeHeight('<%=request.getParameter("filename")%>')">px</td>
				<td><input type="image" src="/resources/img/btn/reset.png" onclick="resetSize('<%=request.getParameter("filename")%>')"></td>
			</tr>
		</table>
		<input type="checkbox" style="vertical-align:middle;" id="sizeCheck" value="on" onclick="changeCeakValue()"> 가로세로 비율 유지
		<hr>
		<img src="/resources/img/forms/imgNotice.png" width="100%;">
		<hr><br>
		<center><input type="image" src="/resources/img/btn/Submit_button.png" onclick="changeImg('<%=request.getParameter("filename")%>')" width="60px"></center>
	</div> 
</body>
</html>