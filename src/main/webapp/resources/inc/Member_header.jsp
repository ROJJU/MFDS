<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link rel="shortcut icon" href="/resources/favicon.ico"/>
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/img/ico/STED-Favicon(144px)_v7.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/img/ico/STED-Favicon(144px)_v7.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/img/ico/STED-Favicon(72px)_v7.png">
	<link rel="apple-touch-icon-precomposed" href="/resources/img/ico/STED-Favicon(57px)_v7.png">
	<title>K-GMP_STED</title>
		<style type="text/css">
			#m_header_wrap{
			position:relative;
			width:100%;
			height:62px;
			background-color:#ffffff;
			border-top:3px solid grey;
			border-bottom:3px solid grey;
			}
			#m_header_contents{
			position:relative;
			width:1064px;
			height:100%;	
			margin:0 auto;	
			}
			#login_btn{
			position:relative;
			text-align:right;
			top:10px;
			}
			#logo{
			position:absolute;
			top:4px;
			}
		</style>
	</head>
	<body>
		<div id="m_header_wrap">
			<div id="m_header_contents">
				<div id="login_btn">
					<input type="image" src='<c:url value="/resources/img/member/Login_button_small.png"/>' onclick="javaScript:location.href='/Login.do'">
				</div>
				<div id="logo">
					<input type="image" src='<c:url value="/resources/img/common/sted_logo.png"/>' width="210px" onclick="javaScript:location.href='/Login.do'">
				</div>
			</div>
		</div>
	</body>
</html>