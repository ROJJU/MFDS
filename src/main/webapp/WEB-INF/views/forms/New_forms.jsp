<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" href="/resources/css/forms/style.css">
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
<link rel="stylesheet" href="/resources/css/forms/firstForm.css"><!--firstForm css-->
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
	  
	  function mixCheck(forms_seq, mix, list_seq, contents_name){
		  location.href='/update_mixProc.do?forms_seq='+forms_seq+'&mix='+mix+'&list_seq='+list_seq+'&contents_name='+contents_name;
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
												<c:when test="${list_seq=='11'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='12'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='13'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='14'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
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
												<c:when test="${list_seq=='35'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='36'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='37'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='38'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='39'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='40'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='41'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='42'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='43'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
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
										<td style="color:#ffffff;" width="210px">
											<jsp:include page="/resources/inc/forms_tab/forms_tab_under.jsp"/>
										</td>
										<td style="color:#ffffff;">
											<div id="percent">
												계산중
											</div>
										</td>
										<td>
											<div class="container">
												<input type="radio" class="radio" name="progress" value="twentyfive" id="twentyfive" checked>
											    <div class="progress">
											      <div class="progress-bar" id="progressResult"></div>
											    </div>
											 </div>
											 <!--ck_check-->
											 <input type="hidden" id="ck_form1" value="${forms.ck_form1}">
											 <input type="hidden" id="ck_form2" value="${forms.ck_form2}">
											 <input type="hidden" id="ck_form3" value="${forms.ck_form3}">
											 <input type="hidden" id="ck_form4" value="${forms.ck_form4}">
											 <input type="hidden" id="ck_form5" value="${forms.ck_form5}">
											 <input type="hidden" id="ck_form6" value="${forms.ck_form6}">
											 <input type="hidden" id="ck_form7" value="${forms.ck_form7}">
											 <input type="hidden" id="ck_form8" value="${forms.ck_form8}">
											 <input type="hidden" id="ck_form9" value="${forms.ck_form9}">
											 <input type="hidden" id="ck_form10" value="${forms.ck_form10}">
											 <input type="hidden" id="ck_form11" value="${forms.ck_form11}">
											 <input type="hidden" id="ck_form12" value="${forms.ck_form12}">
											 <input type="hidden" id="ck_form13" value="${forms.ck_form13}">
											 <input type="hidden" id="ck_form14" value="${forms.ck_form14}">
											 <input type="hidden" id="ck_form15" value="${forms.ck_form15}">
											 <input type="hidden" id="ck_form16" value="${forms.ck_form16}">
											 <input type="hidden" id="ck_form17" value="${forms.ck_form17}">
											 <input type="hidden" id="ck_form18" value="${forms.ck_form18}">
											 <input type="hidden" id="ck_form19" value="${forms.ck_form19}">
											 <input type="hidden" id="ck_form20" value="${forms.ck_form20}">
											 <input type="hidden" id="ck_form21" value="${forms.ck_form21}">
											 <input type="hidden" id="ck_form22" value="${forms.ck_form22}">
											 <input type="hidden" id="ck_form23" value="${forms.ck_form23}">
											 <input type="hidden" id="ck_form24" value="${forms.ck_form24}">
											 <input type="hidden" id="ck_form25" value="${forms.ck_form25}">
											 <input type="hidden" id="ck_form26" value="${forms.ck_form26}">
											 <input type="hidden" id="ck_form27" value="${forms.ck_form27}">
											 <input type="hidden" id="ck_form28" value="${forms.ck_form28}">
											 <input type="hidden" id="ck_form29" value="${forms.ck_form29}">
											 <input type="hidden" id="ck_form30" value="${forms.ck_form30}">
											 <input type="hidden" id="ck_form31" value="${forms.ck_form31}">
											 <input type="hidden" id="ck_form32" value="${forms.ck_form32}">
											 <input type="hidden" id="ck_form33" value="${forms.ck_form33}">
											 <input type="hidden" id="ck_form34" value="${forms.ck_form34}">
											 <input type="hidden" id="ck_form35" value="${forms.ck_form35}">
											 <input type="hidden" id="ck_form36" value="${forms.ck_form36}">
											 <input type="hidden" id="ck_form37" value="${forms.ck_form37}">
											 <input type="hidden" id="ck_form38" value="${forms.ck_form38}">
											 <input type="hidden" id="ck_form39" value="${forms.ck_form39}">
											 <input type="hidden" id="ck_form40" value="${forms.ck_form40}">
											 <input type="hidden" id="ck_form41" value="${forms.ck_form41}">
											 <input type="hidden" id="ck_form42" value="${forms.ck_form42}">
											 <input type="hidden" id="ck_form43" value="${forms.ck_form43}">
										</td>
										<td style="padding-right:8px;">
											<input type="button" value="초기화" title="서식 초기화 가능" onclick="resetForm('<%=request.getParameter("forms_seq")%>', '<%=request.getParameter("list_seq")%>', '<%=request.getParameter("contents_name")%>');">
										</td>
										<td style="border:1px solid black; padding:3px; background-color:#EAEAEA; " align="right" width="510px">
											<img src="/resources/img/forms/guide_text.gif" width="400px">&nbsp;&nbsp;&nbsp;
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
										<c:when test="${list_seq=='40'}"><jsp:include page="/resources/inc/forms/New_forms40.jsp"/></c:when>
										<c:when test="${list_seq=='41'}"><jsp:include page="/resources/inc/forms/New_forms41.jsp"/></c:when>
										<c:when test="${list_seq=='42'}"><jsp:include page="/resources/inc/forms/New_forms42.jsp"/></c:when>
										<c:when test="${list_seq=='43'}"><jsp:include page="/resources/inc/forms/New_forms43.jsp"/></c:when>
										<c:otherwise>
											<jsp:include page="/resources/inc/forms/New_forms1.jsp"/>
										</c:otherwise>
									</c:choose>
								<br>
								<div>
									<input type="hidden" value="${forms.forms_seq}" id="forms_seq" name="forms_seq">
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
			function resetForm(forms_seq, list_seq, contents_name){
				var ck_form = document.getElementById("ck_form").value;
				location.href="/ResetForm.do?forms_seq="+forms_seq+"&list_seq="+list_seq+"&contents_name="+contents_name+"&ck_form="+ck_form;
			}
		
		
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
			
			function loadAndSave(forms_seq, list_seq, contents_name){
				 oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용합니다.
				 var boardWriteForm = document.getElementById("boardWriteForm");
				 //to do -> need change url link
				 var firstFormUrl ='http://192.168.0.31/NewForms.do?forms_seq='+forms_seq+'&list_seq=1&contents_name=1';
				 if(document.URL==firstFormUrl){
					boardWriteForm.action ="/FirstFormsProc.do";  //저장할 페이지로 쏩니다.
				 }else{
				 	boardWriteForm.action ="/FormsProc.do";  //저장할 페이지로 쏩니다.
				 }
			 document.getElementById('p_url').value="/NewForms.do?forms_seq="+forms_seq+"&list_seq="+list_seq+"&contents_name="+contents_name;
			 boardWriteForm.submit(); 
			}
			 
			var pasteHTML = function(filename){                     //업로드한 사진을 화면에 보여주게 만드는 스크립트입니다.
				var url="('ChangeSize.jsp?filename="+filename+"','sizeChange','width=300 height=420 scrollbars=yes')";
			    //var sHTML = '<img src="http://sted.kr/resources/upload/'+filename+'" id="'+filename+'" onclick="javaScript:window.open'+url+';">'; //사진이 저장된 경로입니다.
			    var sHTML = '<img src="http://192.168.0.31/resources/upload/'+filename+'" id="'+filename+'" onclick="javaScript:window.open'+url+';">'; //사진이 저장된 경로입니다.
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
			function checkProcess(){
				if(document.getElementById("ck_form1").value==null||document.getElementById("ck_form1").value==""){
					var ck_form1 =0;
				}else{
					var ck_form1 = document.getElementById("ck_form1").value;
				}
				if(document.getElementById("ck_form2").value==null||document.getElementById("ck_form2").value==""){
					var ck_form2 = 0;	
				}else{
					var ck_form2 = document.getElementById("ck_form2").value;
				}
				if(document.getElementById("ck_form3").value==null||document.getElementById("ck_form3").value==""){
					var ck_form3 =0;
				}else{
					var ck_form3 = document.getElementById("ck_form3").value;
				}
				if(document.getElementById("ck_form4").value==null||document.getElementById("ck_form4").value==""){
					var ck_form4 =0;
				}else{
					var ck_form4 = document.getElementById("ck_form4").value;
				}
				if(document.getElementById("ck_form5").value==null||document.getElementById("ck_form5").value==""){
					var ck_form5 =0;
				}else{
					var ck_form5 = document.getElementById("ck_form5").value;
				}
				if(document.getElementById("ck_form6").value==null||document.getElementById("ck_form6").value==""){
					var ck_form6 =0;
				}else{
					var ck_form6 = document.getElementById("ck_form6").value;
				}
				if(document.getElementById("ck_form7").value==null||document.getElementById("ck_form7").value==""){
					var ck_form7 =0;
				}else{
					var ck_form7 = document.getElementById("ck_form7").value;
				}
				if(document.getElementById("ck_form8").value==null||document.getElementById("ck_form8").value==""){
					var ck_form8 = 0;	
				}else{
					var ck_form8 = document.getElementById("ck_form8").value;
				}
				if(document.getElementById("ck_form9").value==null||document.getElementById("ck_form9").value==""){
					var ck_form9 =0;
				}else{
					var ck_form9 = document.getElementById("ck_form9").value;
				}
				if(document.getElementById("ck_form10").value==null||document.getElementById("ck_form10").value==""){
					var ck_form10 =0;
				}else{
					var ck_form10 = document.getElementById("ck_form10").value;
				}
				if(document.getElementById("ck_form11").value==null||document.getElementById("ck_form11").value==""){
					var ck_form11 =0;
				}else{
					var ck_form11 = document.getElementById("ck_form11").value;
				}
				if(document.getElementById("ck_form12").value==null||document.getElementById("ck_form12").value==""){
					var ck_form12 =0;
				}else{
					var ck_form12 = document.getElementById("ck_form12").value;
				}
				if(document.getElementById("ck_form13").value==null||document.getElementById("ck_form13").value==""){
					var ck_form13 =0;
				}else{
					var ck_form13 = document.getElementById("ck_form13").value;
				}
				if(document.getElementById("ck_form14").value==null||document.getElementById("ck_form14").value==""){
					var ck_form14 = 0;	
				}else{
					var ck_form14 = document.getElementById("ck_form14").value;
				}
				if(document.getElementById("ck_form15").value==null||document.getElementById("ck_form15").value==""){
					var ck_form15 =0;
				}else{
					var ck_form15 = document.getElementById("ck_form15").value;
				}
				if(document.getElementById("ck_form16").value==null||document.getElementById("ck_form16").value==""){
					var ck_form16 =0;
				}else{
					var ck_form16 = document.getElementById("ck_form16").value;
				}
				if(document.getElementById("ck_form17").value==null||document.getElementById("ck_form17").value==""){
					var ck_form17 =0;
				}else{
					var ck_form17 = document.getElementById("ck_form17").value;
				}
				if(document.getElementById("ck_form18").value==null||document.getElementById("ck_form18").value==""){
					var ck_form18 =0;
				}else{
					var ck_form18 = document.getElementById("ck_form18").value;
				}
				if(document.getElementById("ck_form19").value==null||document.getElementById("ck_form19").value==""){
					var ck_form19 =0;
				}else{
					var ck_form19 = document.getElementById("ck_form19").value;
				}
				if(document.getElementById("ck_form20").value==null||document.getElementById("ck_form20").value==""){
					var ck_form20 = 0;	
				}else{
					var ck_form20 = document.getElementById("ck_form20").value;
				}
				if(document.getElementById("ck_form21").value==null||document.getElementById("ck_form21").value==""){
					var ck_form21 =0;
				}else{
					var ck_form21 = document.getElementById("ck_form21").value;
				}
				if(document.getElementById("ck_form22").value==null||document.getElementById("ck_form22").value==""){
					var ck_form22 =0;
				}else{
					var ck_form22 = document.getElementById("ck_form22").value;
				}
				if(document.getElementById("ck_form23").value==null||document.getElementById("ck_form23").value==""){
					var ck_form23 =0;
				}else{
					var ck_form23 = document.getElementById("ck_form23").value;
				}
				if(document.getElementById("ck_form24").value==null||document.getElementById("ck_form24").value==""){
					var ck_form24 =0;
				}else{
					var ck_form24 = document.getElementById("ck_form24").value;
				}
				if(document.getElementById("ck_form25").value==null||document.getElementById("ck_form25").value==""){
					var ck_form25 =0;
				}else{
					var ck_form25 = document.getElementById("ck_form25").value;
				}
				if(document.getElementById("ck_form26").value==null||document.getElementById("ck_form26").value==""){
					var ck_form26 = 0;	
				}else{
					var ck_form26 = document.getElementById("ck_form26").value;
				}
				if(document.getElementById("ck_form27").value==null||document.getElementById("ck_form27").value==""){
					var ck_form27 =0;
				}else{
					var ck_form27 = document.getElementById("ck_form27").value;
				}
				if(document.getElementById("ck_form28").value==null||document.getElementById("ck_form28").value==""){
					var ck_form28 =0;
				}else{
					var ck_form28 = document.getElementById("ck_form28").value;
				}
				if(document.getElementById("ck_form29").value==null||document.getElementById("ck_form29").value==""){
					var ck_form29 =0;
				}else{
					var ck_form29 = document.getElementById("ck_form29").value;
				}
				if(document.getElementById("ck_form30").value==null||document.getElementById("ck_form30").value==""){
					var ck_form30 =0;
				}else{
					var ck_form30 = document.getElementById("ck_form30").value;
				}
				if(document.getElementById("ck_form31").value==null||document.getElementById("ck_form31").value==""){
					var ck_form31 =0;
				}else{
					var ck_form31 = document.getElementById("ck_form31").value;
				}
				if(document.getElementById("ck_form32").value==null||document.getElementById("ck_form32").value==""){
					var ck_form32 =0;
				}else{
					var ck_form32 = document.getElementById("ck_form32").value;
				}
				if(document.getElementById("ck_form33").value==null||document.getElementById("ck_form33").value==""){
					var ck_form33 = 0;
				}else{
					var ck_form33 = document.getElementById("ck_form33").value;
				}
				if(document.getElementById("ck_form34").value==null||document.getElementById("ck_form34").value==""){
					var ck_form34 =0;
				}else{
					var ck_form34 = document.getElementById("ck_form34").value;
				}
				if(document.getElementById("ck_form35").value==null||document.getElementById("ck_form35").value==""){
					var ck_form35 =0;
				}else{
					var ck_form35 = document.getElementById("ck_form35").value;
				}
				if(document.getElementById("ck_form36").value==null||document.getElementById("ck_form36").value==""){
					var ck_form36 =0;
				}else{
					var ck_form36 = document.getElementById("ck_form36").value;
				}
				if(document.getElementById("ck_form37").value==null||document.getElementById("ck_form37").value==""){
					var ck_form37 = 0;
				}else{
					var ck_form37 = document.getElementById("ck_form37").value;
				}
				if(document.getElementById("ck_form38").value==null||document.getElementById("ck_form38").value==""){
					var ck_form38 =0;
				}else{
					var ck_form38 = document.getElementById("ck_form38").value;
				}
				if(document.getElementById("ck_form39").value==null||document.getElementById("ck_form39").value==""){
					var ck_form39 =0;
				}else{
					var ck_form39 = document.getElementById("ck_form39").value;
				}
				if(document.getElementById("ck_form40").value==null||document.getElementById("ck_form40").value==""){
					var ck_form40 = 0;
				}else{
					var ck_form40 = document.getElementById("ck_form40").value;
				}
				if(document.getElementById("ck_form41").value==null||document.getElementById("ck_form41").value==""){
					var ck_form41 =0;
				}else{
					var ck_form41 = document.getElementById("ck_form41").value;
				}
				if(document.getElementById("ck_form42").value==null||document.getElementById("ck_form42").value==""){
					var ck_form42 =0;
				}else{
					var ck_form42 = document.getElementById("ck_form42").value;
				}
				if(document.getElementById("ck_form43").value==null||document.getElementById("ck_form43").value==""){
					var ck_form43 = 0;
				}else{
					var ck_form43 = document.getElementById("ck_form43").value;
				}
				var sum = parseInt(ck_form1)+parseInt(ck_form2)+parseInt(ck_form3)+parseInt(ck_form4)+parseInt(ck_form5)+parseInt(ck_form6)+parseInt(ck_form7)+parseInt(ck_form8)+parseInt(ck_form9)+parseInt(ck_form10)+parseInt(ck_form11)+parseInt(ck_form12)+parseInt(ck_form13)+parseInt(ck_form14)+parseInt(ck_form15)+parseInt(ck_form16)+parseInt(ck_form17)+parseInt(ck_form18)+parseInt(ck_form19)+parseInt(ck_form20)+parseInt(ck_form21)+parseInt(ck_form22)+parseInt(ck_form23)+parseInt(ck_form24)+parseInt(ck_form25)+parseInt(ck_form26)+parseInt(ck_form27)+parseInt(ck_form28)+parseInt(ck_form29)+parseInt(ck_form30)+parseInt(ck_form31)+parseInt(ck_form32)+parseInt(ck_form33)+parseInt(ck_form34)+parseInt(ck_form35)+parseInt(ck_form36)+parseInt(ck_form37)+parseInt(ck_form38)+parseInt(ck_form39)+parseInt(ck_form40)+parseInt(ck_form41)+parseInt(ck_form42)+parseInt(ck_form43);
				var result=sum*2.325581395348837;
				document.getElementById("percent").innerHTML="<a style='color:#ffffff; font-size:8px;''>진행도</a><br><b>"+result.toFixed(0)+"</b>%";
				document.getElementById("progressResult").style.width=result.toFixed(0)+"%";
			}
			checkProcess();
		</script>
		<!--arcodion s-->
        <script type="text/javascript" src="/resources/js/account/jquery.accordion.2.0.js" ></script>
        <script type="text/javascript">
            $('#example2').accordion({
                //canToggle: true
            });
            $(".loading").removeClass("loading");
        </script>
		<!--arcodion e-->
			<div style="padding:10px; vertical-align:middle; width:30px; height:30px; background-color:#102967; color:#ffffff; position:fixed; bottom:100px; right:2px; border-top:3px solid grey;">
			<a href="#" style="color:#ffffff;">TOP</a>
			</div>
	</body>
</html>