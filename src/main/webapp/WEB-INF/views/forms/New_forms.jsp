<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
int list_seq=0;
if(request.getParameter("list_seq")!=null){
	list_seq=Integer.parseInt(request.getParameter("list_seq"));
}
int back =list_seq-1;
int next =list_seq+1;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	.firstForm{
	 width:100%;
	 border: 1px solid black;
	}
</style>
<link rel="stylesheet" href="/resources/daumeditor-7.4.1/css/editor.css" type="text/css" charset="utf-8"/>
<script src="/resources/daumeditor-7.4.1/js/editor_loader.js?environment=development" type="text/javascript" charset="utf-8"></script>
		<!--[if gte IE 9]>
		  <style type="text/css">
			.gradient {
			   filter: none !important;
			}

			.tool-container.tool-top{
				border-bottom: none;
			}

		  </style>
		<![endif]-->
<link rel="stylesheet" href="/resources/css/forms/arcodion.css"><!--arcodioEn css-->
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<!--text edieter s-->
<script type="text/javascript" src="/resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
<!--text edieter e-->
	<meta name="robots" content="all">
	<script type="text/javascript">
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
	if ( notice_getCookie( "pop1" ) != "done" ) {
	//팝업창 경로,위치,크기
		window.open('/resources/inc/forms_popup/forms_notice.jsp','formInfo','width=755 height=526 scrollbars=yes');
	}
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
	  function guide(num){
		  window.open('/resources/inc/forms_popup/Forms_guide.jsp?num='+num,'formGuide','width=755 height=526 scrollbars=yes');
	  }
	  
	  function mixCheck(forms_seq, mix){
		  if(confirm('1번 신청서 양식이 초기화 됩니다. 진행 하시겠습니까 ? 진행하시기 전에 1번 신청서 양식을 복사 하시기 바랍니다.')){
			  location.href='/update_mixProc.do?forms_seq='+forms_seq+'&mix='+mix;
		  }
	  }
	</script>
	<style type="text/css">
	a{
	color:grey;
	text-decoration:none;
	}
	a:hover{
	color:#369;
	}
	/* ======================== 신청서 style!! */
	.first_form{
	width:100%;
	border:1px solid black;
	border-collapse:collapse;
	}
	.first_title{
	background:             #666;
    background:             #666 -webkit-gradient(linear, left top, left bottom, from(#999), to(#666)) no-repeat;
    background:             #666 -moz-linear-gradient(top,  #999,  #666) no-repeat;
	color:#ffffff;
	padding:5px;
	font-weight:bolder;
	}
	.first_th{
	border:1px solid black;
	width:150px;
	background-color:#DDDDDE;
	padding:5px;
	}
	.first_td{
	border:1px solid black;
	padding:5px;
	}
	.test1{
	display:none;
	}
	.test2{
	display:block;
	}
	.change{
	cursor:hand;
	cursor:pointer;
	display:none;
	}
	</style>
</head>
	<body>
	<jsp:include page="/resources/inc/Main_header.jsp"/>
		<div class="total_container" id="total_container">
			<div class="space"></div>
			<div id="total_content">
				<jsp:include page="/resources/inc/Sub_header.jsp"/>
				<div>
					<table id="container">
						<tr>
							<td id="side_menu_place2" rowspan="1">
								<table id="side_menu" style="border-collapse:collapse;">
									<tr><td id="side_down_icon"><b class="side_img">▼</b><b>STED Forms</b></td></tr>
									<tr>
										<td>
											<c:choose>
												<c:when test="${list_seq=='1'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='2'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='3'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='4'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='5'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='6'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='7'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='8'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='9'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='10'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='11'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='12'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='13'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='14'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='15'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='16'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='17'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='18'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='19'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='20'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='21'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='22'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='23'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='24'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='25'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='26'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='27'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='28'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='29'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='30'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='31'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='32'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='33'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='34'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='35'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='36'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='37'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='38'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='39'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:otherwise>
													<jsp:include page="/resources/inc/forms_side/New_list1.jsp"/>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</table>
							</td>
							<td id="content_place">
								<jsp:include page="/resources/inc/forms_tab/forms_tab.jsp"/>
								<br>
								<table style="width:962px; margin:0 auto; border:1px solid black; background-color:#102967;" cellpadding="0" cellspacing="1">
									<tr>
										<td style="color:#ffffff;">
											<jsp:include page="/resources/inc/forms_tab/forms_tab_under.jsp"/>
										</td>
										<td style="border:1px solid black; padding:3px; background-color:#EAEAEA; " align="right">
											<img src="/resources/img/forms/guide_text.gif" width="500px">&nbsp;&nbsp;&nbsp;
											<input type="image" src="/resources/img/btn/guide.png" width="40px" title="가이드 라인" onclick="guide(<%=request.getParameter("list_seq")%>)"/>
										</td>
									</tr>
								</table>
									<c:choose>
										<c:when test="${list_seq=='1'}"><jsp:include page="/resources/inc/forms/New_forms1.jsp"/></c:when>
										<c:when test="${list_seq=='2'}"><jsp:include page="/resources/inc/forms/New_forms2.jsp"/></c:when>
										<c:when test="${list_seq=='3'}"><jsp:include page="/resources/inc/forms/New_forms3.jsp"/></c:when>
										<c:when test="${list_seq=='4'}"><jsp:include page="/resources/inc/forms/New_forms4.jsp"/></c:when>
										<c:when test="${list_seq=='5'}"><jsp:include page="/resources/inc/forms/New_forms5.jsp"/></c:when>
										<c:when test="${list_seq=='6'}"><jsp:include page="/resources/inc/forms/New_forms6.jsp"/></c:when>
										<c:when test="${list_seq=='7'}"><jsp:include page="/resources/inc/forms/New_forms7.jsp"/></c:when>
										<c:when test="${list_seq=='8'}"><jsp:include page="/resources/inc/forms/New_forms8.jsp"/></c:when>
										<c:when test="${list_seq=='9'}"><jsp:include page="/resources/inc/forms/New_forms9.jsp"/></c:when>
										<c:when test="${list_seq=='10'}"><jsp:include page="/resources/inc/forms/New_forms10.jsp"/></c:when>
										<c:when test="${list_seq=='11'}"><jsp:include page="/resources/inc/forms/New_forms11.jsp"/></c:when>
										<c:when test="${list_seq=='12'}"><jsp:include page="/resources/inc/forms/New_forms12.jsp"/></c:when>
										<c:when test="${list_seq=='13'}"><jsp:include page="/resources/inc/forms/New_forms13.jsp"/></c:when>
										<c:when test="${list_seq=='14'}"><jsp:include page="/resources/inc/forms/New_forms14.jsp"/></c:when>
										<c:when test="${list_seq=='15'}"><jsp:include page="/resources/inc/forms/New_forms15.jsp"/></c:when>
										<c:when test="${list_seq=='16'}"><jsp:include page="/resources/inc/forms/New_forms16.jsp"/></c:when>
										<c:when test="${list_seq=='17'}"><jsp:include page="/resources/inc/forms/New_forms17.jsp"/></c:when>
										<c:when test="${list_seq=='18'}"><jsp:include page="/resources/inc/forms/New_forms18.jsp"/></c:when>
										<c:when test="${list_seq=='19'}"><jsp:include page="/resources/inc/forms/New_forms19.jsp"/></c:when>
										<c:when test="${list_seq=='20'}"><jsp:include page="/resources/inc/forms/New_forms20.jsp"/></c:when>
										<c:when test="${list_seq=='21'}"><jsp:include page="/resources/inc/forms/New_forms21.jsp"/></c:when>
										<c:when test="${list_seq=='22'}"><jsp:include page="/resources/inc/forms/New_forms22.jsp"/></c:when>
										<c:when test="${list_seq=='23'}"><jsp:include page="/resources/inc/forms/New_forms23.jsp"/></c:when>
										<c:when test="${list_seq=='24'}"><jsp:include page="/resources/inc/forms/New_forms24.jsp"/></c:when>
										<c:when test="${list_seq=='25'}"><jsp:include page="/resources/inc/forms/New_forms25.jsp"/></c:when>
										<c:when test="${list_seq=='26'}"><jsp:include page="/resources/inc/forms/New_forms26.jsp"/></c:when>
										<c:when test="${list_seq=='27'}"><jsp:include page="/resources/inc/forms/New_forms27.jsp"/></c:when>
										<c:when test="${list_seq=='28'}"><jsp:include page="/resources/inc/forms/New_forms28.jsp"/></c:when>
										<c:when test="${list_seq=='29'}"><jsp:include page="/resources/inc/forms/New_forms29.jsp"/></c:when>
										<c:when test="${list_seq=='30'}"><jsp:include page="/resources/inc/forms/New_forms30.jsp"/></c:when>
										<c:when test="${list_seq=='31'}"><jsp:include page="/resources/inc/forms/New_forms31.jsp"/></c:when>
										<c:when test="${list_seq=='32'}"><jsp:include page="/resources/inc/forms/New_forms32.jsp"/></c:when>
										<c:when test="${list_seq=='33'}"><jsp:include page="/resources/inc/forms/New_forms33.jsp"/></c:when>
										<c:when test="${list_seq=='34'}"><jsp:include page="/resources/inc/forms/New_forms34.jsp"/></c:when>
										<c:when test="${list_seq=='35'}"><jsp:include page="/resources/inc/forms/New_forms35.jsp"/></c:when>
										<c:when test="${list_seq=='36'}"><jsp:include page="/resources/inc/forms/New_forms36.jsp"/></c:when>
										<c:when test="${list_seq=='37'}"><jsp:include page="/resources/inc/forms/New_forms37.jsp"/></c:when>
										<c:when test="${list_seq=='38'}"><jsp:include page="/resources/inc/forms/New_forms38.jsp"/></c:when>
										<c:when test="${list_seq=='39'}"><jsp:include page="/resources/inc/forms/New_forms39.jsp"/></c:when>
										<c:otherwise>
											<jsp:include page="/resources/inc/forms/New_forms1.jsp"/>
										</c:otherwise>
									</c:choose>
								<br>
								<div>
									<input type="hidden" value="${forms.forms_seq}" id="forms_seq" name="forms_seq">
									<input type="image" src="/resources/img/btn/kr_back_btn.png" width="60px;" onclick="goUrl('/NewForms.do?forms_seq=<%=request.getParameter("forms_seq") %>&list_seq=<%=back%>')">
									<input type="image" src="/resources/img/btn/kr_next_btn.png" width="60px;" onclick="goUrl('/NewForms.do?forms_seq=<%=request.getParameter("forms_seq") %>&list_seq=<%=next%>')">
									<input type="image" src="/resources/img/btn/yetSave_button.png" width="60px;" onclick="onWrite('<%=request.getParameter("list_seq")%>')">
								    <input type="image" src="/resources/img/btn/list_btn.png" width="60px;" onclick="goUrl('/MyPage.do?page_seq=6')">
									<input type="image" src="/resources/img/btn/final_button.png" width="71px" onclick="finalSave(${forms.forms_seq})">
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
			var oEditors = [];
			 nhn.husky.EZCreator.createInIFrame({
			 oAppRef: oEditors,
			 elPlaceHolder: document.getElementById('txtContent'), // html editor가 들어갈 textarea id 입니다.
			 sSkinURI: "/resources/se/SmartEditor2Skin.html"  // html editor가 skin url 입니다.
			 });
			 
			var onWrite = function(list_seq){
			 oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용합니다.
			 
			 var boardWriteForm = document.getElementById("boardWriteForm");
				 if(list_seq==1){
					boardWriteForm.action ="/FirstFormsProc.do";  //저장할 페이지로 쏩니다.
				 }else{
				 	boardWriteForm.action ="/FormsProc.do";  //저장할 페이지로 쏩니다.
				 }
			 boardWriteForm.submit();  
			};
			 
			var pasteHTML = function(filename){                     //업로드한 사진을 화면에 보여주게 만드는 스크립트입니다.
			    var sHTML = '<img src="http://sted.kr/resources/upload/'+filename+'">'; //사진이 저장된 경로입니다.
			    oEditors.getById["txtContent"].exec("PASTE_HTML", [sHTML]);
			};
			
			function exit(){
				localStorage.clear();
				history.go(-1);
			}
			
			function finalSave(forms_seq){
				if(confirm('최종 저장 하시겠습니까 ?')){
					location.href="/updateStateProc.do?forms_seq="+forms_seq;
				}
			}
			
			var forms_seq2=document.getElementById("forms_seq").value;
			window.onload=function check(){
				if(forms_seq2==null||forms_seq2==""){
				location.href="/resources/inc/Form_check.jsp";
				}
			 }
		</script>
</div>
		<!--arcodion s-->
        <script type="text/javascript" src="/resources/js/account/jquery.accordion.2.0.js" ></script>
        <script type="text/javascript">
            $('#example2').accordion({
                //canToggle: true
            });
            $(".loading").removeClass("loading");
        </script>
		<!--arcodion e-->
		<a style="color:#ffffff" href="#">
			<div style="padding:10px; vertical-align:middle; width:30px; height:30px; background-color:#102967; color:#ffffff; position:fixed; bottom:100px; right:2px; border-top:3px solid grey;">
			TOP
			</div>
		</a>
	</body>
</html>