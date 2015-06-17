<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/common/process.css" media="all" /><!--process-->
<script type="text/javascript" src="/resources/js/jquery.google_menu.js"></script><!--process-->
</head>
<script type="text/javascript"> 
var message = '${msg}'; 
var returnUrl = '${url}';
if(message=='로그인 되었습니다.'||message=='아이디 혹은 비밀번호가 잘못 되었습니다.'){
	document.location.href = returnUrl+"?msg="+message;
}else{
	document.location.href = returnUrl+"&msg="+message;
}

//document.location.href = returnUrl;
</script>

