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
							<li><a href="#">��꼭 ����</a></li>
							<li><a href="#">�� ����</a></li>
							<li><a href="#">��������</a></li>
						</ul>
					</li>
					<li><a href="#">File</a>
						<ul>
							<li><a href="#">�� ����</a></li>
							<li><a href="#">�� ���� �ۼ�</a></li>
						</ul>			
					</li>
					<li><a href="#">Edit</a>
						<ul>
							<li><a href="#">�����ܰ�</a></li>
							<li><a href="#">�߶󳻱�</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">�ٿ��ֱ�</a></li>
						</ul>
					</li>
					<li><a href="#">Web Tools</a>
						<ul>
							<li><a href="#">���ã��</a></li>
							<li><a href="#">�ٲٱ�</a></li>
						</ul>
					</li>
					<li><a href="#">Help</a>
						<ul>
							<li><a href="#">FAQ</a></li>
							<li><a href="#">STED �Ұ�</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div id="icon">
			<table id="top_icons_table">
				<tr>
					<td><input type="image" src="/resources/img/common/Top_new file.png" title="������" width="30px"  class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_import.png" title="�ҷ�����" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_save.png" title="�����ϱ�" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_previous.png" title="����" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_home.png" title="����" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_next.png" title="����" width="25px" class="top_icons"></td>
					<td><input type="image" src="/resources/img/common/Top_mypage.png" title="����������" width="25px" class="top_icons"></td>
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