<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String list_seq="1";
if(request.getParameter("list_seq")!=null)
list_seq=request.getParameter("list_seq");
int currentPage=1;
String search="all";
String find="";
if(request.getParameter("currentPage")!=null){
	currentPage=Integer.parseInt(request.getParameter("currentPage"));
}
if(request.getParameter("search")!=null){
	search=request.getParameter("search");
}
if(request.getParameter("find")!=null){
	find=request.getParameter("find");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Basic Info</title>
<link rel="stylesheet" href="/resources/css/forms/search.css"/>
<script type="text/javascript">
	function getBasicInfo(){
		window.open('/resources/popup/BasicInfo_popup.jsp','getInfo','width=755 height=526');
	}
</script>
</head>
<body>
<table style="width:100%;">
	<tr>
		<td id="title"><h1>품목 검사</h1></td>
	</tr>
	<tr>
		<td style="padding-top:5px;">
			<input type="image" src="/resources/img/forms/item1.png" onclick="javaScript:location.href='/fileList.do?list_seq=1&currentPage=<%=currentPage%>&search=<%=search%>&find=<%=find%>'">&nbsp;
			<input type="image" src="/resources/img/forms/item2.png" onclick="javaScript:location.href='/fileList.do?list_seq=2&currentPage=<%=currentPage%>&search=<%=search%>&find=<%=find%>'">&nbsp;
			<input type="image" src="/resources/img/forms/item3.png" onclick="javaScript:location.href='/fileList.do?list_seq=3&currentPage=<%=currentPage%>&search=<%=search%>&find=<%=find%>'">&nbsp;
			<input type="image" src="/resources/img/forms/item4.png" onclick="javaScript:location.href='/fileList.do?list_seq=4&currentPage=<%=currentPage%>&search=<%=search%>&find=<%=find%>'">&nbsp;
			<input type="image" src="/resources/img/forms/item5.png" onclick="javaScript:location.href='/fileList.do?list_seq=5&currentPage=<%=currentPage%>&search=<%=search%>&find=<%=find%>'">&nbsp;
			<br><br>
		</td>
	</tr>
	<tr>
		<td align="center" id="search_box">
			<table>
				<tr>
					<td style="font-weight:bolder;">SEARCH&nbsp;</td>
					<td>
						<form action="/fileList.do" method="get" name="product">
							<div id ="serch">
								<select name="search">
									<option value="all">ALL</option>
									<option value="kor_name">품목명</option>
									<option value="eng_name">영문명</option>
								</select>
								<input type="text" name="find">  <input type="image" src="/resources/img/forms/small_search_button.png" onclick="javaScript:document.product.submit();">
								<input type="hidden" name="currentPage" value="1">
							</div>
						</form>
					</td>
				</tr>
				<tr><td height="20px;"></td></tr>
			</table>
			<table>
				<tr>
					<td>
					<%if(list_seq.equals("1")){ %>
						<iframe src="/resources/inc/forms/SearchList.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}else if(list_seq.equals("2")){%>
						<iframe src="/resources/inc/forms/SearchList2.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}else if(list_seq.equals("3")){%>
						<iframe src="/resources/inc/forms/SearchList3.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}else if(list_seq.equals("4")){%>
						<iframe src="/resources/inc/forms/SearchList4.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}else if(list_seq.equals("5")){%>
						<iframe src="/resources/inc/forms/SearchList5.jsp" width="630px" height="100px" marginwidth="0px" marginheight="0" scrolling="yes" frameborder="0"></iframe>
					<%}%>
					</td>	
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td><br><br>
			<table id="list_table">
				<tr>
					<td class="list_table_th" width="30px;">번호</td>
					<td class="list_table_th" width="70px">등급</td>
					<td class="list_table_th" width="80px">분류코드</td>
					<td class="list_table_th" width="90px">소분류</td>
					<td class="list_table_th" width="200px">품목명</td>
					<td class="list_table_th" width="200px">영문명</td>
					<td class="list_table_th">신고허가<br>여부</td>
				</tr>
			<c:if test="${list=='[]'}">
				<tr>
					<td colspan="7" align="center" style="border-bottom:1px solid grey; color:red; height:30px;">등록된 데이터가 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="a" items="${list}">
				<tr id="click" onclick="javaScript:location.href='/BasicInfo.do?kor_name=${a.kor_name}&p_class=${a.p_class}&div_sub=${a.div_sub}&div_mid=${a.div_mid}&eng_name=${a.eng_name}&code=${a.code}&purpose=${a.purpose}'">
					<td class="list_table_td" style="text-align:center;">${a.product_seq}</td>
					<td class="list_table_td" style="text-align:center;">${a.p_class}</td>
					<td class="list_table_td" style="text-align:center;">${a.code}</td>
					<td class="list_table_td">${a.div_sub}</td>
					<td class="list_table_td">${a.kor_name}</td>
					<td class="list_table_td">${a.eng_name}</td>
					<td class="list_table_td" style="text-align:center;">${a.commit}</td>
				</tr>
			</c:forEach>
			</table><br>
			<center>${pageList}</center>
		</td>
	</tr>
</table>
</body>
</html>
