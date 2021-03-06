<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Cookie[] cookie=request.getCookies();
	String id1 = "";
	String id2 = "";
	String id3 = "";
	String email1 = "";
	String email2 = "";
	if(cookie !=null){
		for(int i=0; i<cookie.length; i++){
			if(cookie[i].getName().trim().equals("id1")){
				System.out.println(cookie[i].getValue());
				id1=cookie[i].getValue();
			}else if(cookie[i].getName().trim().equals("id2")){
				System.out.println(cookie[i].getValue());
				id2=cookie[i].getValue();
			}else if(cookie[i].getName().trim().equals("id3")){
				System.out.println(cookie[i].getValue());
				id3=cookie[i].getValue();
			}else if(cookie[i].getName().trim().equals("email1")){
				System.out.println(cookie[i].getValue());
				email1=cookie[i].getValue();
			}else if(cookie[i].getName().trim().equals("email2")){
				System.out.println(cookie[i].getValue());
				email2=cookie[i].getValue();
			}
		}
	}
	
	String condition =request.getParameter("msg");
	if(condition==null){
		condition ="STED에 방문해 주셔서 감사합니다.";
	}else{
		condition =request.getParameter("msg");
	}
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="icon" href="http://k-gmp.com/water/favicon_16px.png" sizes="16x16"/>
	<link rel="icon" href="/resources/img/ico/STED-Favicon(144px)_v7.png" sizes="144x144">
	<link rel="icon" href="/resources/img/ico/STED-Favicon(114px)_v7.png" sizes="114x114">
	<link rel="icon" href="/resources/img/ico/STED-Favicon(72px)_v7.png" sizes="72x72">
	<link rel="apple-touch-icon-precomposed" href="/resources/img/ico/STED-Favicon(57px)_v7.png">
	<link rel="icon" href="/resources/img/ico/STED-Favicon(57px)_v7.png" sizes="57x57">
	<title>STED</title>
	
	<link rel="stylesheet" href="/resources/css/member/Login.css"/>
	<link rel="stylesheet" href="/resources/css/member/styles.css"/>
	<link rel="stylesheet" href="/resources/css/member/iview.css"/>
	<link rel="stylesheet" href="/resources/css/member/skin 1/style.css"/>
	</head>
<body>
	<div id="cont">
		<div id="hiddenLogo"><br><br><br><br><br><br><br><br><br><br><center><img src="/resources/img/common/sted_logo.png" width="330px"><br><br><br><br><br><br><br><br></center></div>
		<div class="container">
			<div id="iview">
				<div data-iview:image="<c:url value="/resources/img/member/main1.jpg"/>" data-iview:transition="slice-top-fade,slice-right-fade">
					<div class="iview-caption blackcaption" data-x="90" data-y="240" style="background-color:#c4302b; font-size:40px;">STED</div>
					<div class="iview-caption" data-x="90" data-y="315" data-transition="wipeRight" style="width:200px">Standard Technical Documentation System</div>
					<div class="iview-caption" data-x="90" data-y="360" data-transition="wipeLeft" style="width:350px">본 사이트를 통해 의료기기 기술문서 작성이 용이해집니다.</div>
				</div>
	
				<div data-iview:image="<c:url value="/resources/img/member/main2.jpg"/>" data-iview:transition="zigzag-drop-top,zigzag-drop-bottom" data-iview:pausetime="3000">
					<div class="iview-caption caption5" data-x="60" data-y="280" data-transition="wipeDown" style="width:400px;">STED에 관한 소식을 쉽게 얻을 수 있습니다.</div>
					<div class="iview-caption caption6" data-x="362" data-y="350" data-transition="wipeUp"><a href="http://blog.naver.com/kgmpcom">K-GMP URL</a></div>
				</div>
	
				<div data-iview:image="/resources/img/member/main3.jpg" data-iview:type="video" data-iview:transition="strip-right-fade,strip-left-fade">
					<iframe width="100%" height="100%" src="https://www.youtube.com/embed/iF5TJEKdHIA" frameborder="0" allowfullscreen></iframe>
					<!--  <video src="https://www.youtube.com/watch?v=xq72hc4va9w&feature=youtu.be" controls width="100%" poster="/resources/img/member/main3.jpg"></video>-->
					<div class="iview-caption caption2" data-x="450" data-y="340" data-transition="wipeRight">Video</div>
					<div class="iview-caption caption3" data-x="600" data-y="345" data-transition="wipeLeft">Click!!</div>
				</div>
				<div data-iview:image="<c:url value="/resources/img/member/main4.jpg"/>">
					<div class="iview-caption blackcaption" data-x="15" data-y="65" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:280px; font-size:40px; background-color:#c4302b;">STED</div>
					<div class="iview-caption blackcaption" data-x="15" data-y="135" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:280px;">▶ 웹페이지의 상호 호환성 가능</div>
					<div class="iview-caption blackcaption" data-x="15" data-y="172" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:280px;">▶ 암호화 방식으로 믿을 수 있는 보안 체계</div>
					<div class="iview-caption blackcaption" data-x="15" data-y="209" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:280px;">▶ 문서 복구 가능</div>
					<div class="iview-caption blackcaption" data-x="15" data-y="246" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:280px;">▶ 시간 단축</div>
					<div class="iview-caption blackcaption" data-x="15" data-y="283" data-transition="wipeLeft" data-easing="easeInOutElastic" style="width:280px;">▶ 비용 절감</div>
				</div>
	
				<div data-iview:image="<c:url value="/resources/img/member/main5.jpg"/>">
					<div class="iview-caption caption7" data-x="0" data-y="0" data-width="180" data-height="480" data-transition="wipeRight"><b style="font-size:30px; color:#ffffff;">Our System</b><br><br>본 사이트를 통한 서식 작성으로 <b>원활한 컨설팅 서비스를 제공해 드립니다</b>!<br><br>시,공간의 제약없이 서비스를 이용 할 수 있으며 의료기기 산업 활성화를 위해 고객사의 이익창출 및 매출증가에 힘쓸 것 입니다.
  <br><br> 고객맞춤 서비스를 제공해 드릴 것을 약속드립니다!</div>
				</div>
	
				<div data-iview:image="<c:url value="/resources/img/member/main6.jpg"/>">
					<div class="iview-caption caption5" data-x="60" data-y="150" data-transition="wipeLeft">K-GMP STED</div>
					<div class="iview-caption caption6" data-x="160" data-y="230" data-transition="wipeRight">Get it Now!</div>
				</div>
			</div>
		</div>
<!--login btn-->
		<div style="width:100%; text-align:center; color:red; height:40px; ">
		<%=condition%>
		</div>
	    <div class="btn-sign" id="login-btn">
			<a href="#login-box" class="login-window">Log in / Sign In</a>
	    </div><br><br>
	    <br>
	     <!--LOGIN FOR PHONE  -->
		<div id="loginBoxPhone">
			<form method="post" class="signin" action="/LoginProc.do" name="loginPhone">
              	<div id="login_info2">
	              	<table style="color:grey; width:100%; border:1px solid #BDBDBD; padding:20px;  ">
               			<tr>
               				<td>
               					<h3 class="phoneLogin">ID(사업자 등록 번호)</h3>
               					<input type="number" style="width:60px;" maxlength="3" name="id1" placeholder="ID" id="username2" value="<%=id1%>" class="phoneText">
								 <b style="color:black;">-</b> <input type="number" style="width:50px;" maxlength="2" name="id2" placeholder="ID" id="username" value="<%=id2%>" class="phoneText">
								 <b style="color:black;">-</b> <input type="number" style="width:80px;" maxlength="5" name="id3" placeholder="ID" id="username" value="<%=id3%>" class="phoneText">
								 <br><br>
               				</td>
               			</tr>
               			<tr>
               				<td >
               					<h3 class="phoneLogin">E-MAIL</h3>
               					<input type="text" id="email" style="width:60px;" name="email1"  placeholder="E-MAIL" value="<%=email1%>" class="phoneText">
				  				<b style="color:black;">@</b>
				  				<input type="text" id="email" style="width:105px;" name="email2"  placeholder="E-MAIL" value="<%=email2%>" class="phoneText">
				  				<br><br>
               				</td>
               			</tr>
               			<tr>
               				<td>
               				<h3 class="phoneLogin">PASSWORD2</h3>
							<input id="password" name="pw_1" type="password" placeholder="PASSWORD" style="width:200px;" onKeyDown="inputSendit('2');" class="phoneText">
							<br>
							</td>	               			
               			</tr>
               		</table><br>
	                <table>
	                	<tr>
	                		<td style="vertical-align:top;"><input type="checkbox" name="id_rem" id="id_rem" <%if(id1.length() >1) out.println("checked"); %>></td>
	                		<td style="vertical-align:top;"><label for="id_rem"><b style="color:grey; padding-top:3px;">&nbsp;REMEMBER <font color="red">ID</font>/<font color="red">E-MAIL</font></b> </label></td>
	               		</tr>
	                </table><br>
	                <img src="/resources/img/member/login_btn.png" onclick= "formCheck('2');" width="100%">
	                <p style="font-size:16px;">
	                <a class="forgot" href="/Find_pw_step1.do">Forgot your password?</a> | <a class="forgot" href="/Join_step1.do">Sign up</a>
	                </p><br><br><br>
              	</div>
	       </form>
		</div>
	   <jsp:include page="/resources/inc/Member_footer.jsp"/>
	</div>
<!--pop up box!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->        
     <div id="login-box" class="login-popup">
       <a class="close"><img src="<c:url value="/resources/img/member/close_pop.png"/>" class="btn_close" title="Close Window" alt="Close" /></a>
         <form method="post" class="signin" action="/LoginProc.do" name="login">
               <fieldset class="textbox">
               	<img src="<c:url value="/resources/img/common/sted_logo.png"/>" width="330px"><br><br>
	               	<div id="login_info">
               		<label class="username">
		                <span>ID(사업자 등록 번호)2</span>
		                <input type="text" style="width:40px;" maxlength="3" name="id1" placeholder="ID" id="username" value="<%=id1%>">
						 <b style="color:black;">-</b> <input type="text" style="width:30px;" maxlength="2" name="id2" placeholder="ID" id="username" value="<%=id2%>">
						 <b style="color:black;">-</b> <input type="text" style="width:60px;" maxlength="5" name="id3" placeholder="ID" id="username" value="<%=id3%>">
	                </label>
	                
	                <label class="email">
	                <span>E-MAIL</span>
	                	<input type="text" id="email" style="width:60px;" name="email1"  placeholder="E-MAIL" value="<%=email1%>">
					  	<b style="color:black;">@</b> <input type="text" id="email" style="width:105px;" name="email2"  placeholder="E-MAIL" value="<%=email2%>">
	                </label>
	                
	                <label class="password">
	                <span>PASSWORD</span>
	                <input id="password" name="pw_1" type="password" placeholder="PASSWORD" style="width:200px;" onKeyDown="inputSendit('1');"><br>
	                </label>
		                <table>
		                	<tr>
		                		<td style="vertical-align:top;"><input type="checkbox" name="id_rem" id="id_rem" <%if(id1.length() >1) out.println("checked"); %>></td>
		                		<td style="vertical-align:top;"><label for="id_rem"><b style="color:grey; padding-top:3px;">&nbsp;REMEMBER <font color="red">ID</font>/<font color="red">E-MAIL</font></b> </label></td>
	                		</tr>
		                </table>
		                <img src="/resources/img/member/Login_button_big.png" id="login_btn" onclick= "formCheck('1');">
		                <p>
		                <a class="forgot" href="/Find_pw_step1.do">Forgot your password?</a> | <a class="forgot" href="/Join_step1.do">Sign up</a>
		                </p><br>
	               	</div>
               </fieldset>
         </form>
	</div>
<!--POPUP END  -->
	<script src="/resources/js/member/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/member/raphael-min.js"></script>
	<script type="text/javascript" src="/resources/js/member/jquery.easing.js"></script>
	<script type="text/javascript" src="/resources/js/member/Login.js"></script>
	<script src="/resources/js/member/iview.js"></script>
	</body>
</html>