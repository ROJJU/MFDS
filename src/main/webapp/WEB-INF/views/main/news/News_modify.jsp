<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/preloader.jsp"/>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub_table.css"/>"/>
	<script type="text/javascript" src="/resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>
	<title>STED</title>
	</head>
	<body>
		<div class="total_container" id="total_container">
			<div class="space"></div>
			<div id="total_content">
				<jsp:include page="/resources/inc/Sub_header.jsp"/>
				<div>
					<table id="container">
						<tr>
							<td id="side_menu_place" rowspan="1"><jsp:include page="/resources/inc/Side_menu.jsp"/></td>
							<td id="content_place">
								<jsp:include page="/resources/inc/sub_tab/Sub_tab_04.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<jsp:include page="/resources/inc/main_title/News_rooms.jsp"/>
								<div>
									<table id="sub_contents">
										<tr>
											<td id="sub_content" align="center">
												<table style="border:none;">
													<tr>
														<td style="border:none; border-bottom:2px solid grey;">
															<a href="javaScript:goUrl('/News.do?page_seq=1');" class="sub_tab_action">News</a>
													  &nbsp;<a href="javaScript:goUrl('/News.do?page_seq=8');" class="sub_tab">Notice</a></td>
													</tr>
												</table>
												<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;News<br><br></div>
												<form id="boardWriteForm" method="post" enctype="multipart/form-data">
												    <div style="text-align:left;">
												       <input type="hidden" name="news_seq" value="${news.news_seq}">
												       <input type="hidden" name="writer" value="${kor_name}">
													   <input type="text" id="title" name="title" maxlength="100" style="width:100%; border-top:1px solid grey;" placeholder="&nbsp;제목을 입력해 주세요" value="${news.title}"/>
													   <input type="file" style="width:30%; border-top:1px solid grey; border-bottom:1px solid grey;" name="n_file">
													   <input type="hidden" value="${news.n_file}" name="n_file_old">
													       &nbsp; * 현재 첨부 파일 : ${news.n_file} (첨부파일을 선택하지 않을 경우 현재 첨부된 파일이 그대로 업로드 됩니다.)
													</div>
													<div class="contentDiv">
													    <textarea id="txtContent" name="content" rows="30" style="width:100%;">${news.content}</textarea>
													</div><br>
												</form>
												<div class="buttonDiv">
												  	<input type="image" src="/resources/img/btn/modify_btn.png" onclick="onWrite()" width="50px">
												    <input type="image" src="/resources/img/btn/cancel_button.png" onclick="goUrl('/AdminNews.do?page_seq=1');" width="50px">
											 	</div><br><br><br><br>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<jsp:include page="/resources/inc/Main_footer.jsp"/>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
		<script type="text/javascript">
			var oEditors = [];
			 nhn.husky.EZCreator.createInIFrame({
			 oAppRef: oEditors,
			 elPlaceHolder: document.getElementById('txtContent'), // html editor가 들어갈 textarea id
			 sSkinURI: "resources/se/SmartEditor2Skin.html",  // html editor가 skin url
			 });
			 
			var onWrite = function(){
			 oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); 
			 
			 var boardWriteForm = document.getElementById("boardWriteForm");  
			 boardWriteForm.action ="/NewsModifyProc.do"; 
			 boardWriteForm.submit();  
			};
			 
			var pasteHTML = function(filename){                     //업로드한 사진을 화면에 보여주게 만드는 스크립트입니다.
			    var sHTML = '<img src="${pageContext.request.contextPath}/resources/upload/'+filename+'">'; //사진이 저장된 경로입니다.
			    oEditors.getById["txtContent"].exec("PASTE_HTML", [sHTML]);
			};
		</script>
	</body>
</html>