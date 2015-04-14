<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<title>STED</title>
	<style type="text/css">
	.my_font{
		font-size:10px;
		height:10px;
	}
	.table_margin{
	margin-bottom:10px;
	}
	.container{
		border:1px solid grey;
		box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		-webkit-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		-moz-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		 width:98%;
		 padding:20px 0px 20px 0px;
	}
	</style>
	<script type="text/javascript">
		var win=null;
		  function printIt(printThis){
		    win = window.open('','offprint','width=700 height=450');
		    self.focus();
		    win.document.open();
		    win.document.write('<'+'html'+'><'+'head'+'><'+'style'+'>');
		    win.document.write('.my_font{font-size:9px;} #my_info{width:600px;height:10px;}');
		    win.document.write('<'+'/'+'style'+'><'+'/'+'head'+'><'+'body'+'>');
		    win.document.write(printThis);
		    win.document.write('<'+'/'+'body'+'><'+'/'+'html'+'>');
		    win.document.close();
		    win.print();
		    win.close();
		  }
	</script>
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
							<td id="content_place" align="center">
								<jsp:include page="/resources/inc/my_tab/My_tab_01.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<br>
								<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;My Info</div><br>
								<table style="border:none; width:98%;">
									<tr>
										<td style="border:none; border-bottom:2px solid grey; height:30px; padding-top:8px;" align="left">
											<a href="javaScript:goUrl('/MyPage.do?page_seq=1');" class="sub_tab">인증서 보기</a>
									  &nbsp;<a href="javaScript:goUrl('/MyPage.do?page_seq=10');" class="sub_tab_action">사업자 등록증 보기</a></td>
									</tr>
								</table>
								<div class="container">
									<div style="height:40px;"></div>
									<div id="certificate">
										<div>
										<form action="/resources/inc/Download.jsp" method="post" name="down">
											<input type="hidden" name="file_path" value="www/save/member">
											<input type="hidden" name="n_file" value="${memberInfo.company_file}">
											<img src="/resources/img/upload/member/${memberInfo.company_file}" width="660px;" style="">
										</form>
										</div>
									</div>
								</div>
								<table id="button" width="1064px">
									<tr height=100px;>
										<td align="center"><br>
										<input type="image" src="/resources/img/member/print_btn.png" onClick="javascript:printIt(document.getElementById('certificate').innerHTML)" width="60px">&nbsp;
										<input type="image" src="/resources/img/btn/down_button.png"  width="60px"  onclick="javaScript:document.down.submit();">
										<br><br>
										</td>
									</tr>
								</table>
							<hr><br><br><br><br>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
	</body>
</html>