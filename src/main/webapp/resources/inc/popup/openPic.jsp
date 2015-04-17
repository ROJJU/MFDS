<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta charset="EUC-KR">
<title>KGMP</title>
<style type="text/css">
select, input, img, input.type-image{/* border: 0 none; */ vertical-align:middle;}
</style>
</head>
<body bgcolor="#0064A8">
 <table style="border:4px #00397F solid; border-collapse:collapse; margin:0 auto; width:95%; height:840px;">
	<tr><td height="35px" style="border-bottom:1px solid grey; background-color:#FAFAFA; padding-left:30px; font-size:12px; font-weight:bold;">사업자 등록증 보기</td></tr>
	<tr>
		<td style="background-color:#ffffff; padding:15px;">
			<img src="/resources/img/upload/member/<%=request.getParameter("company_file")%>" width="100%">
		</td>
	</tr>
 </table><br>
 <center>
 	<table>
 		<tr>
 			<td><input type="image" src="/resources/img/btn/close_btn.png" width="60px" onclick="javaScript:window.close();"></td>
 			<td>
 				<form action="/resources/inc/Download.jsp" method="post" name="down">
					<a href="javaScript:document.down.submit();">
						<input type="image" src="/resources/img/btn/down_button.png" width="60px">
					</a>
					<input type="hidden" name="n_file" value="<%=request.getParameter("company_file")%>">
					<input type="hidden" name="file_path" value="/usr/local/tomcat/webapps/ROOT/resources/img/upload/member">
				</form>
 			</td>
 		</tr>
 	</table>
 </center>
 <script>
	function getSearch(){
		window.open('popup_img.html','getInfo','width=755 height=526');
	}
 </script>
</body>
</html>