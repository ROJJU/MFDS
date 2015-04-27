<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String page_seq="0";
String side_seq="0";
if(request.getParameter("page_seq")!=null){
	page_seq=request.getParameter("page_seq");
}
if(request.getParameter("side_seq")!=null){
	side_seq=request.getParameter("side_seq");
}
%>
<%if(session.getAttribute("id")==null||session.getAttribute("id").equals(" ")){%>
<script>
alert('잘못된 경로로 접근하였습니다.');
location.href="/Admin.do";
</script>
<%}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/resources/css/admin/style_admin.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/resources/css/common/Sub_table.css"/>
<link rel="shortcut icon" href="http://sted.kr/resources/img/favicon.ico"/>
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/img/ico/STED-Favicon(144px)_v7.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/img/ico/STED-Favicon(144px)_v7.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/img/ico/STED-Favicon(72px)_v7.png">
<link rel="apple-touch-icon-precomposed" href="/resources/img/ico/STED-Favicon(57px)_v7.png">
<script type="text/javascript" src="/resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<title>STED 관리자</title>
<meta name="robots" content="all">
	<!--[if gte IE 9 ]><link rel="stylesheet" type="text/css" href="_styles.css" media="screen"><![endif]-->
	<!--[if !IE]>--><link rel="stylesheet" type="text/css" href="/resources/css/forms/_styles.css" media="screen"><!--<![endif]-->
<script type="text/javascript">
function goUrl(url){
	location.href=url;
}
</script>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="190" height="81" valign="bottom"></td>
        <td align="right" valign="bottom"><table width="211" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="65" height="47"><a href="/AdminLogOut.do"><img src="/resources/img/admin/btn_logout.gif" border="0"></a></td>
            <td width="77"><a href="/Basic.do?page_seq=0"><img src="/resources/img/admin/btn_adminmain.gif" border="0"></a></td>
            <td><a href="/Login.do" target="_blank" ><img src="/resources/img/admin/btn_usermain.gif" border="0"></a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="49" valign="top" background="/resources/img/admin/menu_line.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
          <td height="49" align="center"><a href="/Basic.do?page_seq=0">기본설정관리</a></td>
          <td align="center"><a href="/AdminNews.do?page_seq=1">News Room</a></td>
          <td align="center"><a href="/AdminPayment.do?page_seq=11">Payment(결제관리)</a></td>
          <td align="center"><a href="/AdminMember.do?page_seq=14">고객/문서관리</a></td>
          <td align="center"><a href="/AdminHelp.do?page_seq=18">문서보완관리</a></td>
      </tr>
    </table></td>
  </tr>
</table>
<!--side !!!!!!  -->
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="180" align="center" valign="top" bgcolor="ff8400" style="padding-top:18px">
		<%if(page_seq.equals("0")){%>
			<table width="160" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="9"><img src="/resources/img/admin/title_box_left.gif"></td>
					<td align="center" background="/resources/img/admin/title_box_center.gif" class="s_txt3">기본설정관리</td>
					<td width="9"><img src="/resources/img/admin/title_box_right.gif"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:11px">
				<tr>
					<td height="26"  background="/resources/img/admin/left_<%="0".equals(side_seq)?"over":"off"%>.gif"><a href="../basic/basic_setup.php" class="left">관리자정보</a></td>
				</tr>
			</table>
			<%}else if(page_seq.equals("1")||page_seq.equals("5")||page_seq.equals("3")||page_seq.equals("9")||page_seq.equals("8")||page_seq.equals("4")||page_seq.equals("6")||page_seq.equals("7")){%>
			<table width="160" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="9"><img src="/resources/img/admin/title_box_left.gif"></td>
					<td align="center" background="/resources/img/admin/title_box_center.gif" class="s_txt3">News Room</td>
					<td width="9"><img src="/resources/img/admin/title_box_right.gif"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:11px">
				<tr>
					<td height="26"  background="/resources/img/admin/left_<%="0".equals(side_seq)?"over":"off"%>.gif"><a href="/AdminNews.do?page_seq=1&side_seq=0" class="left">News</a></td>
				</tr>
				<tr>
					<td height="26"  background="/resources/img/admin/left_<%="1".equals(side_seq)?"over":"off"%>.gif"><a href="/AdminNews.do?page_seq=8&side_seq=1" class="left">Notice</a></td>
				</tr>
			</table>
			<%}else if(page_seq.equals("11")||page_seq.equals("12")||page_seq.equals("13")){%>
			<table width="160" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="9"><img src="/resources/img/admin/title_box_left.gif"></td>
					<td align="center" background="/resources/img/admin/title_box_center.gif" class="s_txt3">Payment</td>
					<td width="9"><img src="/resources/img/admin/title_box_right.gif"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:11px">
				<tr>
					<td height="26"  background="/resources/img/admin/left_<%="0".equals(side_seq)?"over":"off"%>.gif"><a href="/AdminPayment.do?page_seq=11&side_seq=0" class="left">결제대기</a></td>
				</tr>
				<tr>
					<td height="26"  background="/resources/img/admin/left_<%="1".equals(side_seq)?"over":"off"%>.gif"><a href="/AdminPayment.do?page_seq=11&side_seq=1&search=payment&find=3" class="left">결제완료</a></td>
				</tr>
			</table>
			<%}else if(page_seq.equals("14")||page_seq.equals("15")||page_seq.equals("16")){%>
			<table width="160" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="9"><img src="/resources/img/admin/title_box_left.gif"></td>
					<td align="center" background="/resources/img/admin/title_box_center.gif" class="s_txt3">고객/문서 관리</td>
					<td width="9"><img src="/resources/img/admin/title_box_right.gif"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:11px">
				<tr>
					<td height="26"  background="/resources/img/admin/left_<%="0".equals(side_seq)?"over":"off"%>.gif"><a href="/AdminMember.do?page_seq=14" class="left">고객/문서관리</a></td>
				</tr>
			</table>
			<%}else if(page_seq.equals("17")){%>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:11px">
				<tr>
					<td><jsp:include page="/resources/inc/forms_side/List_forms.jsp"/></td>
				</tr>
			</table>
			<%}else if(page_seq.equals("18")||page_seq.equals("19")){%>
			<table width="160" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="9"><img src="/resources/img/admin/title_box_left.gif"></td>
					<td align="center" background="/resources/img/admin/title_box_center.gif" class="s_txt3">문서 보완 관리</td>
					<td width="9"><img src="/resources/img/admin/title_box_right.gif"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:11px">
				<tr>
					<td height="26"  background="/resources/img/admin/left_<%="0".equals(side_seq)?"over":"off"%>.gif"><a href="/AdminHelp.do?page_seq=18" class="left">문서 보완 관리</a></td>
				</tr>
			</table>
			<%}else if(page_seq.equals("20")){%>
			<table id="side_menu" style="border-collapse:collapse;" width="350px">
				<tr><td id="side_down_icon"><b class="side_img">▼</b><b>STED Forms</b></td></tr>
				<tr>
					<td>
						<c:choose>
							<c:when test="${list_seq=='1'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='2'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='3'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='4'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='5'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='6'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='7'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='8'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='9'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='10'}"><jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/></c:when>
							<c:when test="${list_seq=='11'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='12'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='13'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='14'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='15'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='16'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='17'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='18'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='19'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='20'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='21'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='22'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='23'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='24'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='25'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='26'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='27'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='28'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='29'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='30'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='31'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='32'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='33'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='34'}"><jsp:include page="/resources/inc/forms_side/New_admin_list2.jsp"/></c:when>
							<c:when test="${list_seq=='35'}"><jsp:include page="/resources/inc/forms_side/New_admin_list3.jsp"/></c:when>
							<c:when test="${list_seq=='36'}"><jsp:include page="/resources/inc/forms_side/New_admin_list3.jsp"/></c:when>
							<c:when test="${list_seq=='37'}"><jsp:include page="/resources/inc/forms_side/New_admin_list3.jsp"/></c:when>
							<c:when test="${list_seq=='38'}"><jsp:include page="/resources/inc/forms_side/New_admin_list3.jsp"/></c:when>
							<c:otherwise>
								<jsp:include page="/resources/inc/forms_side/New_admin_list1.jsp"/>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</table>
			<%}%>
		</td>
		<td width="50">&nbsp;</td>
		<td valign="top" style="padding-top:17px">