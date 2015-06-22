<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="/resources/js/jquery-1.4.2.min.js"></script>
<style type="text/css">
		#preloader {
			background: #FFF;
			bottom: 0;
			left: 0;
			position: fixed;
			right: 0;
			top: 0;
			z-index: 1500;
		}
		
		#status {
			background-image: url(/resources/img/account/preloader.gif);
			background-position: center;
			background-repeat: no-repeat;
			height: 200px;
			left: 50%;
			margin: -100px 0 0 -100px;
			position: absolute;
			top: 50%;
			width: 200px;
		},,
</style>
<script type="text/javascript">
$(window).load(function() {
	$('#status').fadeOut();
	$('#preloader').delay(100).fadeOut('slow');
});
</script>
</head>
<body>
	<div id="preloader">
		<div id="status"></div>
	</div>
</body>
</html>