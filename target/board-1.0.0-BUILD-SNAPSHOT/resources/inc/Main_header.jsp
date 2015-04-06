<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>STED</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/common/Header.css" media="all" />
<script type="text/javascript">
		function goUrl(url){
			location.href=url;
		}
</script>
</head>
<body>
	<div id="total_header">
		<div id="drop_menu" class="font">
			<div class="wrap">
				<ul id="nav">
					<li><a href="/Main">Homepage</a></li>
					<li><a href="#">My page</a>
						<ul>
							<li><a href="#">계산서 발행</a></li>
							<li><a href="#">내 정보</a></li>
							<li><a href="#">일정관리</a></li>
						</ul>
					</li>
					<li><a href="#">File</a>
						<ul>
							<li><a href="#">내 문서</a></li>
							<li><a href="#">새 문서 작성</a></li>
						</ul>			
					</li>
					<li><a href="#">Edit</a>
						<ul>
							<li><a href="#">다음단계</a></li>
							<li><a href="#">잘라내기</a></li>
							<li><a href="#">복사</a></li>
							<li><a href="#">붙여넣기</a></li>
						</ul>
					</li>
					<li><a href="#">Web Tools</a>
						<ul>
							<li><a href="#">즐겨찾기</a></li>
							<li><a href="#">바꾸기</a></li>
						</ul>
					</li>
					<li><a href="#">Help</a>
						<ul>
							<li><a href="#">FAQ</a></li>
							<li><a href="#">STED 소개</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div id="icon">
			<table id="top_icons_table">
				<tr>
					<td><input type="image" src="/resources/img/common/Top_new file.png" title="새문서" width="30px"  class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_import.png" title="불러오기" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_save.png" title="저장하기" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_previous.png" title="이전" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_home.png" title="메인" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_next.png" title="다음" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_mypage.png" title="마이페이지" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_help.png" title="Help" width="25px" class="top_icons"></td>
				</tr>
			</table>
		</div>
	</div>
<script type="text/javascript">
$(document).ready(function() {	
	$('#nav li').hover(function() {
		$('ul', this).slideDown(200);
		$(this).children('a:first').addClass("hov");
	}, function() {
		$('ul', this).slideUp(100);
		$(this).children('a:first').removeClass("hov");		
	});
});
</script>
</body>
</html>