<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="<c:url value="/resources/css/member/Login.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/member/styles.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/member/iview.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resources/css/member/skin 1/style.css"/>" />
	<script src="<c:url value="/resources/js/member/jquery-1.7.1.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/member/raphael-min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/member/jquery.easing.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/member/Login.js"/>"></script>
	<script src="<c:url value="/resources/js/member/iview.js"/>"></script>
</head>
<body>
	<div id="cont">
		<div class="container">
			<div id="iview">
				<div data-iview:image="<c:url value="/resources/img/member/main1.jpg"/>" data-iview:transition="slice-top-fade,slice-right-fade">
					<div class="iview-caption caption1" data-x="90" data-y="240">STED</div>
					<div class="iview-caption" data-x="90" data-y="315" data-transition="wipeRight" style="width:200px">Standard Technical Documentation System</div>
					<div class="iview-caption" data-x="90" data-y="360" data-transition="wipeLeft" style="width:350px">본 사이트를 통해 의료기기 기술문서 작성이 용이해집니다.</div>
				</div>
	
				<div data-iview:image="<c:url value="/resources/img/member/main2.jpg"/>" data-iview:transition="zigzag-drop-top,zigzag-drop-bottom" data-iview:pausetime="3000">
					<div class="iview-caption caption5" data-x="60" data-y="280" data-transition="wipeDown" style="width:400px;">STED에 관한 소식을 쉽게 얻을 수 있습니다.</div>
					<div class="iview-caption caption6" data-x="300" data-y="350" data-transition="wipeUp"><a href="http://blog.naver.com/kgmpcom">K-GMP URL</a></div>
				</div>
	
				<div data-iview:image="" data-iview:type="video" data-iview:transition="strip-right-fade,strip-left-fade">
					<video src="/resources/img/common/Dream.mp4" controls width="100%"></video>
					<div class="iview-caption caption2" data-x="450" data-y="340" data-transition="wipeRight">Video</div>
					<div class="iview-caption caption3" data-x="600" data-y="345" data-transition="wipeLeft">Support</div>
				</div>
	
				<div data-iview:image="<c:url value="/resources/img/member/main4.jpg"/>">
					<div class="iview-caption blackcaption" data-x="50" data-y="135" data-transition="wipeLeft" data-easing="easeInOutElastic"style="width:220px;">▶ 웹페이지의 상호 호환성 가능</div>
					<div class="iview-caption blackcaption" data-x="50" data-y="172" data-transition="wipeLeft" data-easing="easeInOutElastic"style="width:280px;">▶ 암호화 방식으로 믿을 수 있는 보안 체계</div>
					<div class="iview-caption blackcaption" data-x="50" data-y="209" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:100px;">▶ 문서 복구 가능</div>
					<div class="iview-caption blackcaption" data-x="50" data-y="246" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:100px;">▶ 시간 단축</div>
					<div class="iview-caption blackcaption" data-x="50" data-y="283" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:100px;">▶ 비용 절감</div>
				</div>
	
				<div data-iview:image="<c:url value="/resources/img/member/main5.jpg"/>">
					<div class="iview-caption caption7" data-x="0" data-y="0" data-width="180" data-height="480" data-transition="wipeRight"><h3>Our System</h3>본 사이트를 통한 서식 작성으로 <b>원활한 컨설팅 서비스를 제공해 드립니다</b>!<br><br>시,공간의 제약없이 서비스를 이용 할 수 있으며 의료기기 산업 활성화를 위해 고객사의 이익창출 및 매출증가에 힘쓸 것 입니다.
  <br><br> 고객맞춤 서비스를 제공해 드릴 것을 약속드립니다!</div>
				</div>
	
				<div data-iview:image="<c:url value="/resources/img/member/main6.jpg"/>">
					<div class="iview-caption caption5" data-x="60" data-y="150" data-transition="wipeLeft">K-GMP STED</div>
					<div class="iview-caption caption6" data-x="160" data-y="230" data-transition="wipeRight">Get it Now!</div>
				</div>
			</div>
			
			
		</div>
<!--login btn-->
	    <div class="btn-sign">
			<a href="#login-box" class="login-window">Login / Sign In</a>
	    </div><br><br><br>
	    <center>
			<font size="1.5px"><a href="#" class="text">이용약관 | </a><a href="#" class="text">개인정보취급방침 | </a><a href="#" class="text">책임의 한계와 법적고지 | </a><a href="#" class="text">회원정보 고객센터</a></font><br><br>
			<img src="<c:url value="/resources/img/common/kgmp_logo.gif"/>" width="50px">&nbsp;<font size="1px" color="grey">Copyright © <b>K-GMP Corp.</b> All Rights Reserved.</font>
		</center><br><br>
	</div>
<!--pop up box!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->        
     <div id="login-box" class="login-popup">
       <a class="close"><img src="<c:url value="/resources/img/member/close_pop.png"/>" class="btn_close" title="Close Window" alt="Close" /></a>
         <form method="post" class="signin" action="/Main">
               <fieldset class="textbox">
               	<img src="<c:url value="/resources/img/common/sted_logo.png"/>" width="330px"><br><br>
               	<div id="login_info">
	            	<label class="username">
	                <span>ID(사업자 등록 번호)</span>
	                <input id="username" name="username" value="" type="text" autocomplete="on" placeholder="ID">
	                </label>
	                
	                <label class="email">
	                <span>Password</span>
	                <input id="email" name="email" value="" type="text" placeholder="E-MAIL">
	                </label>
	                
	                <label class="password">
	                <span>Password</span>
	                <input id="password" name="password" value="" type="password" placeholder="Password">
	                </label>
	                <img src="/resources/img/member/Login_button_big.png" id="login_btn" onclick= "javaScript:location.href='/Main'">
	                
	                <p>
	                <a class="forgot" href="/Find_pw_step1">Forgot your password?</a> | <a class="forgot" href="/Join_step1">Sign up</a>
	                </p><br>
               	</div>
               </fieldset>
         </form>
	</div>
	</body>
</html>