<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<table id="side_menu" class="font" style="border-collapse:collapse;">
		<tr><td id="side_down_icon"><b class="side_img">▼</b><b>Menu Options</b></td></tr>
		<tr><td class="side_menu" onclick="getSearch()"><b><img src="/resources/img/common/new_file.png" class="side_img"/>NEW FORM</b></td></tr>
		<tr><td class="side_menu" onclick="goUrl('/MyPage.do?page_seq=1')"><b><img src="/resources/img/common/my_page.png" class="side_mypage_img"/>MY PAGE</b></td></tr>
		<tr><td class="side_menu" onclick="goUrl('/Support.do?page_seq=2')"><b><img src="/resources/img/common/help.png" class="side_img"/>HELP</b></td></tr>
		<tr><td class="side_menu" onclick="goUrl('/LogOut.do')"><b><img src="/resources/img/common/exit.png" class="side_img"/>EXIT</b></td></tr>
	</table><br><br><br>
	<table style="font-size:11px; width:100%;">
		<tr><td style="background-color:grey; color:#ffffff; padding-left:35px;" colspan="2" height="30px;" align="left"><b class="side_img">▼</b><b>사용자 정보</b></td></tr>
		<tr><td height="30px;" align="left" style="padding-left:6px;"><b>ID</b></td><td align="left">${id1}-${id2}-${id3}</td></tr>
		<tr><td height="30px;" align="left" style="padding-left:6px;"><b>E-MAIL</b></td><td align="left">${email1}@${email2}</td></tr>
		<tr><td height="30px;" align="left" style="padding-left:6px;"><b>NAME</b></td><td align="left">${kor_name}</td></tr>
	</table>
	<script type="text/javascript">
	function getSearch(){
		window.open('/fileList.do','getInfo','width=755 height=526 scrollbars=yes');
	}
	</script>
</body>
</html>