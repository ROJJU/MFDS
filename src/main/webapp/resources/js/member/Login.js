$(document).ready(function(){
	$('#iview').iView({
		pauseTime: 7000,
		directionNav: false,
		controlNav: true,
		tooltipY: -15
	});
});
			
$(document).ready(function() {
	$('a.login-window').click(function() {
		
		// Getting the variable's value from a link 
		var loginBox = $(this).attr('href');

		//Fade in the Popup and add close button
		$(loginBox).fadeIn(300);
		
		//Set the center alignment padding + border
		var popMargTop = ($(loginBox).height() + 24) / 2; 
		var popMargLeft = ($(loginBox).width() + 24) / 2; 
		
		$(loginBox).css({ 
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});
		
		// Add the mask to body
		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn(300);
		
		return false;
	});
	
	// When clicking on the button close or the mask layer the popup closed
	$('a.close, #mask').live('click', function() { 
	  $('#mask , .login-popup').fadeOut(300 , function() {
		$('#mask').remove();  
	}); 
	return false;
	});
});

//submit
function formCheck(num){
	if(num==1){
		document.login.submit();				
	}else{
		document.loginPhone.submit();
	}
}

function inputSendit(){
	if(event.keyCode==13) { 
		document.login.submit();
	}
}

//쿠키값 가져오는 함수
function notice_getCookie( name ) {
 var nameOfCookie = name + "=";
 var x = 0;
 while ( x <= document.cookie.length ) {
  var y = (x+nameOfCookie.length);
   if (document.cookie.substring( x, y ) == nameOfCookie ) {
    if ((endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
     endOfCookie = document.cookie.length;
     return unescape( document.cookie.substring( y, endOfCookie ) );
    }
    x = document.cookie.indexOf( " ", x ) + 1;
    if ( x == 0 )
    break;
   }
   return "";
  }
//쿠키 체크로 팝업여부 결정
if (notice_getCookie( "pop2" ) != "done" ) {
//팝업창 경로,위치,크기
	window.open("/resources/inc/popup/popup.html","scheRead","width=560px, height=590px, left=700px, top=10px, location=no, toolbar=no, realzable=no scrollbars =no");
}

//경로 확인
window.onload=function checkuAgent(){
	var uAgent = navigator.userAgent.toLowerCase();
	var mobilePhones = new Array('iphone','ipod','android','blackberry','windows ce','nokia','webos','opera mini','sonyericsson','opera mobi','iemobile','mobile', 'safari');
	for(var i=0;i<mobilePhones.length;i++)
	if(uAgent.indexOf(mobilePhones[i]) != -1){
	var mobile_chk = '1';
	}
	if( mobile_chk != '1' ){
		//alert("PC");
	}else{
		//alert("phone");
		document.getElementById("login-btn").innerHTML = "<a href='javaScript:login()' class='login-window'>Log in / Sign In</a>";
	}
}

//폰 로그인 심플
function login(){
	$('#loginBoxPhone').fadeIn(500);
	$('#login-btn').css("display","none");
}