<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/admin/Header.jsp"/>
<!--CONTAINER  -->
<table width="98%" border="0" align="left" cellpadding="0" cellspacing="0" >
	<tr> 
		<td height="100" bgcolor="#FFFFFF" class="menu">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
					  <td height="25" class="adst14b"><img src="/resources/img/admin/title_bullet.gif" align="absmiddle"> <span class="s_txt2"> News</span></td>
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
			<form id="boardWriteForm" method="post" enctype="multipart/form-data">
			    <div style="text-align:left;">
			       <input type="hidden" name="notice_seq" value="${notice.notice_seq}">
			       <input type="hidden" name="writer" value="admin">
				   <input type="text" id="title" name="title" maxlength="100" style="width:100%; border-top:1px solid grey;" placeholder="&nbsp;제목을 입력해 주세요" value="${notice.title}"/>
				   <input type="file" style="width:30%; border-top:1px solid grey; border-bottom:1px solid grey;" name="n_file">
				   <input type="hidden" value="${notice.n_file}" name="n_file_old">
				       &nbsp; * 현재 첨부 파일 : ${notice.n_file} (첨부파일을 선택하지 않을 경우 현재 첨부된 파일이 그대로 업로드 됩니다.)
				</div>
				<div class="contentDiv">
				    <textarea id="txtContent" name="content" rows="30" style="width:100%;">${notice.content}</textarea>
				</div><br>
			</form>
			<div class="buttonDiv">
			  	<input type="image" src="/resources/img/btn/write_btn.png" onclick="onWrite()" width="60px">
			    <input type="image" src="/resources/img/btn/cancel_button.png" onclick="goUrl('/AdminNews.do?page_seq=8&side_seq=1');" width="60px">
		 	</div><br><br><br><br>
		</td>
    </tr>
</table>
<jsp:include page="/resources/inc/admin/Footer.jsp"/>
<script type="text/javascript">
	var oEditors = [];
	 nhn.husky.EZCreator.createInIFrame({
	 oAppRef: oEditors,
	 elPlaceHolder: document.getElementById('txtContent'), // html editor가 들어갈 textarea id 입니다.
	 sSkinURI: "resources/se/SmartEditor2Skin.html",  // html editor가 skin url 입니다.
	 });
	 
	var onWrite = function(){
	 oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용합니다.
	 
	 var boardWriteForm = document.getElementById("boardWriteForm");  
	 boardWriteForm.action ="/NoticeModifyProc.do";  //저장할 페이지로 쏩니다. db를 쓰지 않으니 사용하지 않았습니다.
	 boardWriteForm.submit();  
	};
	 
	var pasteHTML = function(filename){                     //업로드한 사진을 화면에 보여주게 만드는 스크립트입니다.
	    var sHTML = '<img src="${pageContext.request.contextPath}/resources/upload/'+filename+'">'; //사진이 저장된 경로입니다.
	    oEditors.getById["txtContent"].exec("PASTE_HTML", [sHTML]);
	};
	
	function exit(){
		localStorage.clear();
		history.go(-1);
	}
</script>
</body>
</html>
</body>
</html>