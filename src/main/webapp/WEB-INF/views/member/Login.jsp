<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Login_header.jsp"/>
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
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/img/ico/STED-Favicon(144px)_v7.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/img/ico/STED-Favicon(144px)_v7.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/img/ico/STED-Favicon(72px)_v7.png">
	<link rel="apple-touch-icon-precomposed" href="/resources/img/ico/STED-Favicon(57px)_v7.png">
	<title>STED</title>
	
	<link rel="stylesheet" href="/resources/css/member/Login.css"/>
	<link rel="stylesheet" href="/resources/css/member/styles.css"/>
	<link rel="stylesheet" href="/resources/css/member/iview.css"/>
	<link rel="stylesheet" href="/resources/css/member/skin 1/style.css"/>
	<style type="text/css">
		@media (max-width: 768px) {
			  #iview{
			    display:none;
			    }
		      .btn-sign{
		      	width:260px;
		      	font-size:20px;
		      }
		    }
	    @media (min-width: 768px) {
		  #hiddenLogo{
		    display:none;
		    }
	    }
	</style>
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
					<iframe width="100%" height="100%" src="https://www.youtube.com/embed/xq72hc4va9w" frameborder="0" allowfullscreen></iframe>
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
	    <div class="btn-sign">
			<a href="#login-box" class="login-window">Log in / Sign In</a>
	    </div><br><br><br>
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
			                <span>ID(사업자 등록 번호)</span>
			                <input type="text" style="width:30px;" maxlength="3" name="id1" placeholder="ID" id="username" value="<%=id1%>">
							 <b style="color:black;">-</b> <input type="text" style="width:20px;" maxlength="2" name="id2" placeholder="ID" id="username" value="<%=id2%>">
							 <b style="color:black;">-</b> <input type="text" style="width:50px;" maxlength="5" name="id3" placeholder="ID" id="username" value="<%=id3%>">
		                </label>
		                
		                <label class="email">
		                <span>E-MAIL</span>
		                	<input type="text" id="email" style="width:60px;" name="email1"  placeholder="E-MAIL" value="<%=email1%>">
						  	<b style="color:black;">@</b> <input type="text" id="email" style="width:105px;" name="email2"  placeholder="E-MAIL" value="<%=email2%>">
		                </label>
		                
		                <label class="password">
		                <span>PASSWORD</span>
		                <input id="password" name="pw_1" type="password" placeholder="PASSWORD" style="width:200px;" onKeyDown="inputSendit();"><br>
		                </label>
		                <table>
		                	<tr>
		                		<td style="vertical-align:top;"><input type="checkbox" name="id_rem" id="id_rem" <%if(id1.length() >1) out.println("checked"); %>></td>
		                		<td style="vertical-align:top;"><label for="id_rem"><b style="color:grey; padding-top:3px;">&nbsp;REMEMBER <font color="red">ID</font>/<font color="red">EMAIL</font></b> </label></td>
	                		</tr>
		                </table>
		                <img src="/resources/img/member/Login_button_big.png" id="login_btn" onclick= "formCheck();">
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
	<script type="text/javascript">
		function formCheck(){
			document.login.submit();
		}
		
		function inputSendit(){
			if(event.keyCode==13) { 
				document.login.submit();
			}
		}

		function popup(){
    		window.open("/resources/inc/popup/popup.html","scheRead","width=560px, height=560px, left=700px, top=10px, location=no, toolbar=no, realzable=no scrollbars =no");
    	}
		
		popup();
	</script>
	</body>
</html>