<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/admin/Header.jsp"/>
<!--CONTAINER  -->
<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0" style="min-width:800px;">
	<tr> 
		<td height="100" bgcolor="#FFFFFF" class="menu">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2"> 고객/문서 관리</span></td>
					</tr>
					<tr>
					  <td height="5" background="/resources/img/admin/admin_title_bar_p.gif"></td>
					</tr>
				</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td height="200" align="center" bgcolor="#FFFFFF" class="menu" id="sub_content">
		<div class="__se_tbl" style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
			<form name="hwp">
				<input type="hidden" value="${forms.forms_seq}" id="forms_seq" name="forms_seq">
				<input type="hidden" id="contents" name="contents">
				<input type="hidden" name="add_date" value="${forms.add_date}">
				<b id="form"></b>
			</form>
		</div><br><br>
			<input type="image" src="/resources/img/btn/kr_back_btn.png" width="60px;" onclick="javaScript:history.go(-1);">
			<input type="image" src="/resources/img/btn/list_btn.png" onclick="goUrl('/AdminMember.do?page_seq=14')" width="60px;"><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
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
			  $(".__se_tbl").attr("border","1");
			  $(".__se_tbl").attr("width","632px");
			  $(".__se_tbl").attr("cellspacing","0");
			  $(".__se_tbl").attr("bordercolor","black");
			  $("td").attr("bordercolor","black");
			  $("td").attr("width","");
			  $("td").css("border-top","1px");
			  $("td").css("border-right","1px");
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

	 function help(forms_seq, help_state){
		 window.open('/resources/inc/Help_phpup.jsp?forms_seq='+forms_seq+'&help_state='+help_state,'help','width=600 height=300 scrollbars=yes');		 
	 }
	
</script>
<script type="text/javascript">
		var forms_seq2=document.getElementById("forms_seq").value;
		requestHello('1', 'contents1');
		 
		window.onload=function check(){
			if(forms_seq2==null||forms_seq2==""){
			location.href="/resources/inc/Form_check.jsp";
			}
		 }
		function requestHello(num, contents) {
		    URL = "/LoadContent.do?forms_seq="+forms_seq2+"&num="+num+"&contents_name="+contents;
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
		</script>
</body>
</html>
</body>
</html>