<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<!--[if gte IE 9 ]><link rel="stylesheet" type="text/css" href="_styles.css" media="screen"><![endif]-->
	<!--[if !IE]>--><link rel="stylesheet" type="text/css" href="/resources/css/forms/_styles.css" media="screen"><!--<![endif]-->
	<style type="text/css">
	.__se_tbl{
	width:100%;
	border-collapse:separate;
	}
	.hong{
	width:100%;
	border-collapse:separate;
	}	
	</style>
	<script type="text/javascript">
	//접속 확인
	var xhr = null;
	var data = null;
	function getXMLHttpRequest(){
	    if (window.ActiveXObject) {
	        try {
	            return new ActiveXObject("Msxml2.XMLHTTP");//IE 상위 버젼
	        } catch (e1) {
	            try {
	                return new ActiveXObject("Microsoft.XMLHTTP");//IE 하위 버젼
	            } catch (e2) {
	                return null;
	            }
	        }
	    } else if (window.XMLHttpRequest) {
	        return new XMLHttpRequest();//IE 이외의 브라우저(FireFox 등)
	    } else {
	        return null;
	    }
	}// XMLHttpRequest 객체 얻기
	
	//print form
	var win=null;
	  function printIt(printThis){
	    win = window.open('','offprint','width=755 height=526');
	    self.focus();
	    win.document.open();
	    win.document.write('<'+'html'+'><'+'head'+'><'+'style'+'>');
	    win.document.write('body{font-size:10px;}p{font-size:10px;}');
	    win.document.write('<'+'/'+'style'+'><'+'/'+'head'+'><'+'body'+'>');
	    win.document.write('<hr style="border: solid 1px grey;"/><br/>');
	    win.document.write(printThis);
	    win.document.write('<br/><hr style="border: solid 1px grey;"/>');
	    win.document.write('<'+'/'+'body'+'><'+'/'+'html'+'>');
	    win.document.close();
	    win.print();
	    win.close();
	  }
	//hwp > form
	
		  function HwpIt(forms_seq){
			  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
			  <%for(int i=1;i<=39;i++){%>
			  window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+<%=i%>,'<%=i%>','width=755 height=526 scrollbars=yes');
			  <%}%>
			  }
		  
		  function save_hwp(){
			  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
			  $(".__se_tbl").attr("width","640px");
			  $(".__se_tbl").attr("border","1");
			  $(".__se_tbl").attr("cellspacing","0");
			  $(".__se_tbl").attr("bordercolor","black");
			  $(".__se_tbl td").attr("width","");
			  $(".hong td").attr("width","");
			  $(".test td").attr("width","");
			  $(".hong").attr("width","640px");
			  $(".hong").attr("border","1");
			  $(".hong").attr("cellspacing","0");
			  $(".hong").attr("bordercolor","black");
			  $(".test").attr("width","200px");
			  $(".test2").attr("width","440px");
			  $(".rule1").attr("width","240px");
			  $(".rule2").attr("width","100px");
			  $(".rule3").attr("width","100px");
			  $(".rule4").attr("width","100px");
			  $(".rule5").attr("width","100px");
			  $(".__se_tbl td").attr("bordercolor","black");
			  $(".__se_tbl td").attr("height","25px");
			  
			  $(".hong td").attr("height","25px");
			  $(".hong td").attr("bordercolor","black");
			  
			  $(".test td").attr("height","25px");
			  $(".test td").attr("bordercolor","black");
			  
			  document.hwp.action="/download_hwpProc.do";
			  document.hwp.method="post";
			  document.hwp.contents.value=document.getElementById("form").innerHTML;
			  document.hwp.submit();
		  }
	  //change form
	  function selChange(){
		  var test = $("#check1").val();
			if(test=="hi"){
				if(confirm('조합용 의료기기 서류를 삭제 하시겠습니까?')){
				$("#check1").val("ture");
				$( "#find" ).hide();
				}
			}else{
				if(confirm('조합용 의료기기 서류를 추가 하시겠습니까?')){
				$("#check1").val("hi");
				$( "#find" ).show();
				}
			}	
	    }
	  //select all forms
	  function selectAll(){
		  if(confirm('모든 서류 보기를 선택하시겠습니까? 모든 서류 보기(모두선택)에서는 모든 서류 저장 모든 서류 인쇄를 하실 수 있습니다.')){
			  requestHello(3);
		  }
	  }

	 function help(forms_seq, help_state, otp){
		 window.open('/resources/inc/Help_phpup.jsp?forms_seq='+forms_seq+'&help_state='+help_state+'&otp='+otp,'help','width=600 height=580 scrollbars=yes');		 
	 }
	 
	 function HwpItPart1(forms_seq){
		  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
		  <%for(int i=1;i<=10;i++){%>
		  window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+<%=i%>,'<%=i%>','width=755 height=526 scrollbars=yes');
		  <%}%>
	  }
	 
	 function HwpItPart2(forms_seq){
		  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
		  <%for(int i=11;i<=34;i++){%>
		  window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+<%=i%>,'<%=i%>','width=755 height=526 scrollbars=yes');
		  <%}%>
	  }
	 
	 function HwpItPart3(forms_seq){
		  alert('변환 되는 한글 파일은 기본 스타일만 적용 됩니다.');
		  <%for(int i=35;i<=39;i++){%>
		  window.open('/change_hwpProc.do?forms_seq='+forms_seq+'&num='+<%=i%>,'<%=i%>','width=755 height=526 scrollbars=yes');
		  <%}%>
	  }
	 
	</script>
</head>
	<body>
	<jsp:include page="/resources/inc/Main_header.jsp"/>
		<div class="total_container" id="total_container">
			<div class="space"></div>
			<div id="total_content">
				<jsp:include page="/resources/inc/Sub_header.jsp"/>
				<div>
				<input type="hidden" value="${forms.otp}" name="otp1" id="otp1">
				<input type="hidden" value="<%=request.getParameter("otp")%>" name="otp2" id="otp2">
					<table id="container">
						<tr>
							<td id="side_menu_place2" rowspan="1">
								<table id="side_menu" style="border-collapse:collapse;">
									<tr><td id="side_down_icon"><b class="side_img">▼</b><b>STED Forms</b></td></tr>
									<tr>
										<td>
											<jsp:include page="/resources/inc/forms_side/List_forms.jsp"/>
										</td>
									</tr>
								</table>
							</td>
							<td id="content_place">
								<jsp:include page="/resources/inc/forms_tab/forms_tab.jsp"/>
								<br>
								<div style="width:920px; margin:0 auto; text-align:left; border:1px solid black; padding:8px 10px 8px 30px; background-color:#102967;">
									<table>
										<tr>
											<td width="590px" style="color:#ffffff;">
												<jsp:include page="/resources/inc/forms_tab/forms_tab_under.jsp"/>
											</td>
											<td align="right">
												<img src="/resources/img/forms/Firewall.png" width="20px"><b style="color:#ffffff;">보안 기능 작동 중</b><img src="/resources/img/progress_bar.gif" width="170px">
											</td>
										</tr>
									</table>
								</div>
								<div class="__se_tbl" style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
								<form name="hwp">
									<input type="hidden" value="${forms.forms_seq}" id="forms_seq" name="forms_seq">
									<input type="hidden" id="contents" name="contents">
									<input type="hidden" name="add_date" value="${forms.add_date}">
									<b id="form"><center><img src="/resources/img/loading1.gif"></center></b>
								</form>
								</div>
								<br>
								<div>
									<input type="image" src="/resources/img/btn/list_btn.png" width="60px;" onclick="goUrl('/MyPage.do?page_seq=6')">&nbsp;
									<input type="image" src="/resources/img/member/print_btn.png" onClick="javascript:printIt(document.getElementById('form').innerHTML)" title="my form" width="60xp;">&nbsp;
								</div><br><br><br><br>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
		<script type="text/javascript">
		function CheckOtp(){
				var otp1=document.getElementById("otp1").value;
				var otp2=document.getElementById("otp2").value;
				if(otp1==otp2){
					//..ok
				}else{
					alert('OTP가 잘못되었습니다.. 메인페이지로 돌아갑니다.');
					location.href='/Main.do';
				}
			}CheckOtp();
		var forms_seq2=document.getElementById("forms_seq").value;
		requestHello('1');
		 
		window.onload=function check(){
			if(forms_seq2==null||forms_seq2==""){
			location.href="/resources/inc/Form_check.jsp";
			}
		 }
		function requestHello(num) {
		    URL = "/LoadContent.do?forms_seq="+forms_seq2+"&num="+num;
		    xhr = getXMLHttpRequest();//XMLHttpRequest 객체 얻기
		    xhr.open("GET", URL, true);//연결
		    xhr.onreadystatechange = function () {//콜백 함수  등록
		        if (xhr.readyState == 4) {//완료
		            if (xhr.status == 200) {//오류없이 OK
		                var str = xhr.responseText;//서버에서 보낸 내용 받기
		                document.getElementById("form").innerHTML = str;//보여주기    
		            } else {
		               // alert("Fail : " + xhr.status);알수 없는 오류로 주석 처리
		            }
		        }
		    }// 응답
		    xhr.send(null);//전송
		}// 서버에 요청
		
		function modifyForms(forms_seq, otp){
			if(confirm('[작성 중] 서류로 변환됩니다. 계속 진행하시겠습니까?')){
				goUrl('/updateStateProc2.do?forms_seq='+forms_seq+'&otp='+otp);
			}
		}
		</script>
		<a style="color:#ffffff" href="#">
			<div style="padding:10px; vertical-align:middle; width:30px; height:30px; background-color:#102967; color:#ffffff; position:fixed; bottom:100px; right:2px; border-top:3px solid grey;">
			TOP
			</div>
		</a>
	</body>
</html>
