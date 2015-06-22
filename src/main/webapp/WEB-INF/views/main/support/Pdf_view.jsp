<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="/resources/inc/preloader.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>PDF_View</title>
</head>
<body marginwidth="0" marginheight="0" style="background-color: rgb(38,38,38); height:100%;" naver_screen_capture_injected="true">
	<embed width="100%" height="100%" name="plugin" src="/resources/inc/pdf/<%=request.getParameter("pdf") %>" type="application/pdf">
	<script type="text/javascript" charset="utf-8" src="chrome-extension://eobejphpabbjeehffmbiecckpkggpbai/js/content-script/page_context.js"></script>
</body>
	<div style="position:fixed; bottom:2px; left:2px; padding:5px; cursor:hand; cursor:pointer;" onclick="javaScript:history.go(-1)">
		<img src="/resources/img/btn/go_back.png">
	</div>
	<audio src="" id="naver_dic_audio_controller" controls="controls" style="width: 0px; height: 0px;"></audio>
</html>