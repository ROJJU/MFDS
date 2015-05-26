<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
int list_seq=0;
if(request.getParameter("list_seq")!=null){
	list_seq=Integer.parseInt(request.getParameter("list_seq"));
}
int back =list_seq-1;
int next =list_seq+1;
%>
<jsp:include page="/resources/inc/admin/Header.jsp"/>
<head>
<link rel="stylesheet" href="/resources/daumeditor-7.4.1/css/editor.css" type="text/css" charset="utf-8"/>
<script src="/resources/daumeditor-7.4.1/js/editor_loader.js?environment=development" type="text/javascript" charset="utf-8"></script>
		<!--[if gte IE 9]>
		  <style type="text/css">
			.gradient {
			   filter: none !important;
			}

			.tool-container.tool-top {
				border-bottom: none;
			}

		  </style>
		<![endif]-->
<link rel="stylesheet" href="/resources/css/forms/arcodion.css"><!--arcodioEn css-->
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<!--text edieter s-->
<script type="text/javascript" src="/resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<!--text edieter e-->
	<meta name="robots" content="all">
	<script type="text/javascript">
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
<!--CONTAINER  -->
<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0" >
	<tr> 
		<td height="100" bgcolor="#FFFFFF" class="menu">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2">보완관리</span></td>
					</tr>
					<tr>
					  <td height="5" background="/resources/img/admin/admin_title_bar_p.gif"></td>
					</tr>
				</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td>
		파일명 : ${forms.title} / ID : ${forms.id1}-${forms.id2}-${forms.id3}(${forms.email1}@${forms.email2}) / 제품명 : ${forms.kor_name}(${forms.eng_name})
		<c:if test="${forms.help_state=='1'}"><b style="color:red;">[1차 보완]</b></c:if>
		<c:if test="${forms.help_state=='3'}"><b style="color:red;">[2차 보완]</b></c:if>
		<br><br></td>
	</tr>
	<tr>
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content" style="vertical-align:top;">
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
				<c:when test="${list_seq=='39'}"><jsp:include page="/resources/inc/forms/New_forms_all.jsp"/></c:when>
				<c:otherwise>
					<jsp:include page="/resources/inc/forms/New_forms1.jsp"/>
				</c:otherwise>
			</c:choose>
			<br><br>
			<div>
				<input type="hidden" value="${forms.forms_seq}" id="forms_seq" name="forms_seq">
				<input type="image" src="/resources/img/btn/kr_back_btn.png" width="60px;" onclick="goUrl('/AdminHelp.do?page_seq=20&forms_seq=<%=request.getParameter("forms_seq") %>&list_seq=<%=back%>')">
				<input type="image" src="/resources/img/btn/kr_next_btn.png" width="60px;" onclick="goUrl('/AdminHelp.do?page_seq=20&forms_seq=<%=request.getParameter("forms_seq") %>&list_seq=<%=next%>')">
				<input type="image" src="/resources/img/btn/yetSave_button.png" width="60px;" onclick="onWrite(<%=request.getParameter("list_seq")%>)">
			    <input type="image" src="/resources/img/btn/list_btn.png" width="60px;" onclick="goUrl('/AdminHelp.do?page_seq=18')">
				<input type="image" src="/resources/img/btn/final_button.png" width="71px" onclick="finalSave(${forms.forms_seq}, ${forms.help_state})">
			</div><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
<script type="text/javascript">
	var oEditors = [];
	 nhn.husky.EZCreator.createInIFrame({
	 oAppRef: oEditors,
	 elPlaceHolder: document.getElementById('txtContent'), // html editor가 들어갈 textarea id 입니다.
	 sSkinURI: "resources/se/SmartEditor2Skin.html",  // html editor가 skin url 입니다.
	 });
	 
	var onWrite = function(list_seq){
	 oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용합니다.
	 
	 var boardWriteForm = document.getElementById("boardWriteForm"); 
	 if(list_seq==1){
		 boardWriteForm.action="/FirstFormsAdminProc.do";
	 }else{
		 boardWriteForm.action ="/FormsAdminProc.do";  //저장할 페이지로 쏩니다. db를 쓰지 않으니 사용하지 않았습니다.
	 }
	 boardWriteForm.submit();  
	};
	 
	var pasteHTML = function(filename){                     //업로드한 사진을 화면에 보여주게 만드는 스크립트입니다.
	    var sHTML = '<img src="http://kgmp.iptime.org/resources/upload/'+filename+'">'; //사진이 저장된 경로입니다.
	    oEditors.getById["txtContent"].exec("PASTE_HTML", [sHTML]);
	};
	
	function exit(){
		localStorage.clear();
		history.go(-1);
	}
	
	function finalSave(forms_seq, help_state){
		if(confirm('최종 저장 하시겠습니까 ?')){
			location.href="/updateAdminStateProc.do?forms_seq="+forms_seq+"&help_state="+help_state;
		}
	}
	
	var forms_seq2=document.getElementById("forms_seq").value;
	window.onload=function check(){
		if(forms_seq2==null||forms_seq2==""){
		location.href="/resources/inc/Form_check.jsp";
		}
	 }
</script>
<!--arcodion s-->
<script type="text/javascript" src="/resources/js/account/jquery-1.4.2.min.js" ></script><!--this is for time and arcodion  -->
<script type="text/javascript" src="/resources/js/account/jquery.accordion.2.0.js" ></script>
<script type="text/javascript">
    $('#example2').accordion({
        //canToggle: true
    });
    $(".loading").removeClass("loading");
</script>
<!--arcodion e-->
</body>
</html>