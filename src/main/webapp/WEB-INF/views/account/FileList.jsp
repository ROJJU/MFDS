<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
String list_seq="1";
if(request.getParameter("list_seq")!=null)
list_seq=request.getParameter("list_seq");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Basic Info</title>
<style type="text/css">
	body{
	font-size:14px;
	padding:10px;
	}
	#search_box{
		border:1px solid grey;
		padding:20px;
		box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		-webkit-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		-moz-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
	}
	#list_table{
		border-top:3px solid #050099;
		width:100%;
		border-collapse:collapse;
	}
	.list_table_th{
	 	background-color:#f2f2f2;
	 	border:1px solid grey;
	 	border-left:none;
	 	border-right:none;
	 	border-bottom:1px botted blue;
	 	text-align:center;
	 	height:20px;
	}
	.list_table_td{
		text-align:center;
		color:#4C4C4C;
		height:30px;
		border-bottom:1px solid #EAEAEA;
	}
	#click:hover{
	background-color:#D9E5FF;
	cursor:hand;
	cursor:pointer;
	}
	#title{
	border-bottom:3px solid grey; background-color:rgb(14,90,146); color:#ffffff; padding:10px;
	}
</style>
<script type="text/javascript">
	function getBasicInfo(){
		window.open('/resources/popup/BasicInfo_popup.jsp','getInfo','width=755 height=526');
	}
</script>
</head>
<body>
<table style="width:100%;">
	<tr>
		<td id="title"><h1>품목 검사</h1></td>
	</tr>
	<tr>
		<td style="padding-top:5px;">
			<input type="image" src="/resources/img/forms/item1.png" onclick="javaScript:location.href='/Search?list_seq=1'">&nbsp;
			<input type="image" src="/resources/img/forms/item2.png" onclick="javaScript:location.href='/Search?list_seq=2'">&nbsp;
			<input type="image" src="/resources/img/forms/item3.png" onclick="javaScript:location.href='/Search?list_seq=3'">&nbsp;
			<input type="image" src="/resources/img/forms/item4.png" onclick="javaScript:location.href='/Search?list_seq=4'">&nbsp;
			<input type="image" src="/resources/img/forms/item5.png" onclick="javaScript:location.href='/Search?list_seq=5'">&nbsp;
			<br><br>
		</td>
	</tr>
	<tr>
		<td align="center" id="search_box">
			<table>
				<tr>
					<td style="font-weight:bolder;">SEARCH&nbsp;</td>
					<td>
						<select>
							<option>품목명</option>
							<option>영문명</option>
						</select>&nbsp;
					</td>
					<td><input type="text">&nbsp;</td>
					<td><input type="image" src="/resources/img/forms/small_search_button.png"></td>
				</tr>
				<tr><td height="20px;"></td></tr>
			</table>
			<table>
				<tr>
					<td>
					<%if(list_seq.equals("1")){ %>
						<iframe src="/resources/inc/forms/SearchList.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}else if(list_seq.equals("2")){%>
						<iframe src="/resources/inc/forms/SearchList2.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}else if(list_seq.equals("3")){%>
						<iframe src="/resources/inc/forms/SearchList3.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}else if(list_seq.equals("4")){%>
						<iframe src="/resources/inc/forms/SearchList4.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}else if(list_seq.equals("5")){%>
						<iframe src="/resources/inc/forms/SearchList5.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}%>
					</td>	
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td><br><br>
			<table id="list_table">
				<tr >
					<td class="list_table_th">번호</td>
					<td class="list_table_th">등급</td>
					<td class="list_table_th">분류코드</td>
					<td class="list_table_th">소분류</td>
					<td class="list_table_th">품목명</td>
					<td class="list_table_th">영문명</td>
					<td class="list_table_th">신고허가여부</td>
				</tr>
				<tr id="click" onclick="javaScript:location.href='/BasicInfo'">
					<td class="list_table_td">2054</td>
					<td class="list_table_td">1등급</td>
					<td class="list_table_td">C11090.01</td>
					<td class="list_table_td">108</td>
					<td class="list_table_td">세라믹프라이머</td>
					<td class="list_table_td">agent, restorative, sealant</td>
					<td class="list_table_td">신고</td>
				</tr>
				<tr id="click">
					<td class="list_table_td">2054</td>
					<td class="list_table_td">1등급</td>
					<td class="list_table_td">C11090.01</td>
					<td class="list_table_td">108</td>
					<td class="list_table_td">세라믹프라이머</td>
					<td class="list_table_td">agent, restorative, sealant</td>
					<td class="list_table_td">신고</td>
				</tr>
			</table><br>
			<center><input type="image" src="/resources/img/forms/back.gif"> [1] [2] [3] <input type="image" src="/resources/img/forms/next.gif"></center>
		</td>
	</tr>
</table>
</body>
</html>