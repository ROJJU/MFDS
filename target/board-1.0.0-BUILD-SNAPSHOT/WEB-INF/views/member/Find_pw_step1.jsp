<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<style type="text/css">
			body{margin:0 auto; background:#f5f6f7; height:100%;}
			#member_body_container{
			position:relative;
			width:100%;
			height:100%;
			}
			#member_body_contents{
			position:relative;
			width:1064px;
			margin:0 auto;
			}
			table{
			width:1064px;
			border-collapse:collapse;
			font-size:12px;
			}
			#title tr{
			border-bottom:1px solid grey;
			}
			table#body{
			border:1px solid grey;
			height:120px;
			}
		</style>
	</head>
	<body>
		<jsp:include page="/resources/inc/Member_header.jsp"/>
		<div id="member_body_container">
			<div id="member_body_contents"><br><br>
				<table id="title">
					<tr height="30px">
						<th width="120px" style="border-bottom:2px solid grey;"><font size="3px">��й�ȣ ã��</font></th>
						<td align="right"><b style="color:blue">01. ���̵� �Է�</b> > 02. ����Ȯ�� :</td>
					</tr>
				</table>
				<table id="summary">
					<tr height="50px">
						<td>��й�ȣ�� ã���� �ϴ� <b>���̵�(����� ��� ��ȣ)</b>�� �Է��� �ּ���</td>
					</tr>
				</table>
				<table id="body">
					<tr>
						<td align="center">
							<font color="red">*</font>&nbsp;ID(����� ��� ��ȣ) : <input type="text" style="width:30px;" maxlength="3"> - <input type="text" style="width:20px;" maxlength="2"> - <input type="text" style="width:50px;" maxlength="5">
						</td>
					</tr>
				</table>
				<table id="button">
					<tr height=80px;>
						<td align="center"><input type="image" src="/resources/img/member/Submit_button.png" onclick="javaScript:location.href='/Find_pw_step2'"></td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>