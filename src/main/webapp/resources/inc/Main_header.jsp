<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
int list_seq=1;
if(request.getParameter("list_seq")!=null){
	list_seq=Integer.parseInt(request.getParameter("list_seq"));
}
int back =list_seq-1;
int next =list_seq+1;
%>
<%if(session.getAttribute("id1")==null||session.getAttribute("id1").equals("")){%>
<script>
alert('잘못된 경로로 접근하였습니다.');
location.href="/";
</script>
<%}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>STED</title>
	<!--drop down menu s-->
	<script type="text/javascript" src="/resources/js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.google_menu.js"></script>
	<link rel="stylesheet" type="text/css" href="/resources/css/google_menu.css"/>
	<link rel="stylesheet" type="text/css" href="/resources/css/common/Header.css" media="all" /><!--drop down menu e-->
<script type="text/javascript">
		function goUrl(url){
			location.href=url;
		}
		function bookmark(title, url){
			 if(window.external && ('AddFavorite' in window.external))
			   {
			       window.external.AddFavorite(url, title); 
			   }
			   // Google Chrome
			   else if(window.chrome){
			      alert("Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
			   }
			   // Firefox
			   else if (window.sidebar) // firefox 
			   {
			       window.sidebar.addPanel(title, url, ""); 
			   }
			   // Opera
			   else if(window.opera && window.print)
			   { 
			      var elem = document.createElement('a'); 
			      elem.setAttribute('href',url); 
			      elem.setAttribute('title',title); 
			      elem.setAttribute('rel','sidebar'); 
			      elem.click(); 
			   } 
	}
	function getSearch(){
		window.open('/Search.do','getInfo','width=755 height=526');
	}
	document.onmousedown = function (){// 우클릭 방지
		 if(event.button == 2 || event.button == 3){
		  document.oncontextmenu = function() {return false;};
		  return;
		 }else{ // 드래그 방지
		  document.ondragstart = function() {return false;};
		  document.onselectstart = function() {return false;};
		 }
		}
	//f1~f12 막기 // 새창열기, 새로고침 막기 ctrl+n, ctrl+d
	function KeyEventHandle(){
		if( 
		( event.ctrlKey == true && ( event.keyCode == 78 || event.keyCode == 82 ) ) ||
		( event.keyCode >= 112 && event.keyCode <= 123 )){
		event.keyCode = 0;
		event.cancelBubble = true;
		event.returnValue = false; 
		}
	}
	document.onkeydown=KeyEventHandle;
	document.onkeyup=KeyEventHandle;
	
	$('document').ready(function(){
        $('.wrap').fixedMenu();
    });
</script>
<link rel="shortcut icon" href="/resources/favicon.ico"/>
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/img/ico/STED-Favicon(144px)_v7.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/img/ico/STED-Favicon(144px)_v7.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/img/ico/STED-Favicon(72px)_v7.png">
<link rel="apple-touch-icon-precomposed" href="/resources/img/ico/STED-Favicon(57px)_v7.png">
</head>
<body>
	<div id="total_header">
		<div id="drop_menu" class="font">
			<div class="wrap">
				<ul id="nav">
					<li><a href="/Main.do">Homepage</a></li>
					<li><a href="#">My page</a>
						<ul>
							<li><a href="/MyPage.do?page_seq=3">Payment</a></li>
							<li><a href="/MyPage.do">My Info</a></li>
							<li><a href="/MyPage.do?page_seq=7">Schedule</a></li>
						</ul>
					</li>
					<li><a href="#">File</a>
						<ul>
							<li><a href="/MyPage.do?page_seq=6">My Form</a></li>
							<li><a href="javaScript:getSearch();">New Form</a></li>
						</ul>			
					</li>
					<li><a href="#">Web Tools</a>
						<ul>
							<li><a href="javaScript:bookmark('K-GMP[STED]', 'http://kgmp.iptime.org/')">즐겨찾기</a></li>
						</ul>
					</li>
					<li><a href="#">Help</a>
						<ul>
							<li><a href="/Support.do?page_seq=2">FAQ</a></li>
							<li><a href="/About.do">About STED</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div id="icon">
			<table id="top_icons_table">
				<tr>
					<td><input type="image" src="/resources/img/common/Top_new file.png" title="새문서" width="30px"  class="top_icons" onclick="getSearch();"></td>
					<td><input type="image" src="/resources/img/common/Top_import.png" title="폴더보기" width="25px" class="top_icons" onclick="goUrl('MyPage.do?page_seq=6');"></td>
					<td>
						<c:choose>
							<c:when test="${list_seq!=null}">
								<input type="image" src="/resources/img/common/Top_save.png" title="저장하기" width="25px" class="top_icons" onclick="onWrite()">
							</c:when>
							<c:otherwise>
								<input type="image" src="/resources/img/common/Top_save_x.png" title="저장하기" width="25px" class="top_icons" onclick="formsCoution()">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<c:choose>
							<c:when test="${list_seq!=null}">
								<c:choose>
									<c:when test="${list_seq==1}">
										<input type="image" src="/resources/img/common/Top_previous_x.png" title="이전" width="25px" class="top_icons">
									</c:when>
									<c:otherwise>
										<input type="image" src="/resources/img/common/Top_previous.png" title="이전" width="25px" class="top_icons" onclick="goUrl('/NewForms.do?forms_seq=<%=request.getParameter("forms_seq") %>&list_seq=<%=back%>')">
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<input type="image" src="/resources/img/common/Top_previous_x.png" title="이전" width="25px" class="top_icons" onclick="formsCoution()">
							</c:otherwise>
						</c:choose>
					</td>
					<td><input type="image" src="/resources/img/common/Top_home.png" title="메인" width="25px" class="top_icons" onclick="goUrl('/Main.do');"></td>
					<td>
						<c:choose>
							<c:when test="${list_seq!=null}">
								<c:choose>
									<c:when test="${list_seq==39}">
										<input type="image" src="/resources/img/common/Top_next_x.png" title="다음" width="25px" class="top_icons">
									</c:when>
									<c:otherwise>
										<input type="image" src="/resources/img/common/Top_next.png" title="다음" width="25px" class="top_icons" onclick="goUrl('/NewForms.do?forms_seq=<%=request.getParameter("forms_seq") %>&list_seq=<%=next%>')">
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<input type="image" src="/resources/img/common/Top_next_x.png" title="다음" width="25px" class="top_icons" onclick="formsCoution()">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<c:choose>
							<c:when test="${forms.state==2}">
								<input type="image" src="/resources/img/common/all_icon.png" title="모두 선택" width="25px" class="top_icons" onclick="requestHello('40')">
							</c:when>
							<c:otherwise>
								<input type="image" src="/resources/img/common/all_icon_x.png" title="모두 선택" width="25px" class="top_icons" onclick="formsCoution2()">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<c:choose>
							<c:when test="${forms.state==2}">
								<input type="image" src="/resources/img/common/print_icon.png" title="인쇄" width="25px" class="top_icons" onclick="javascript:printIt(document.getElementById('form').innerHTML)">
							</c:when>
							<c:otherwise>
								<input type="image" src="/resources/img/common/print_icon_x.png" title="인쇄" width="25px" class="top_icons" onclick="formsCoution2()">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<c:choose>
							<c:when test="${forms.state==2}">
								<input type="image" src="/resources/img/common/kor_icon.png" title="모든 서류 한글파일다운" width="25px" class="top_icons" onclick="javascript:HwpIt(<%=request.getParameter("forms_seq")%>)">
							</c:when>
							<c:otherwise>
								<input type="image" src="/resources/img/common/kor_icon_x.png" title="모든 서류 한글파일다운" width="25px" class="top_icons" onclick="formsCoution2()">
							</c:otherwise>
						</c:choose>
					</td>
					<td><input type="image" src="/resources/img/common/Top_mypage.png" title="마이페이지" width="25px" class="top_icons" onclick="goUrl('/MyPage.do');"></td>
					<td><input type="image" src="/resources/img/common/Top_help.png" title="Help" width="25px" class="top_icons" onclick="goUrl('/Support.do?page_seq=2');"></td>
				</tr>
			</table>
		</div>
	</div>
<script type="text/javascript">
function getSearch(){
	window.open('/fileList.do','getInfo','width=755 height=526 scrollbars=yes');
}

function formsCoution(){
	alert('해당 버튼은 서류작성시만 사용 가능합니다.');
}

function formsCoution2(){
	alert('해당 버튼은 서류열람시만 사용 가능합니다.');
}
</script>
</body>
</html>