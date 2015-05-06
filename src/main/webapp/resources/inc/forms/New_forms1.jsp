<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="contents1" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=1" name="url">
		  	<input type="hidden" value="ck_form1" name="ck_form">
		  	<b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ 의료기기 기술문서 등 심사의뢰서</span></b><br>
		  	<table class="firstForm">
		  		<tr>
		  			<td>의뢰인</td>
		  		</tr>
		  		<tr>
		  			<td>[성명(대표자)]</td><td>${memberInfo.ceo}</td>
		  			<td>[생년월일]</td><td><input type="text"></td>
		  		</tr>
		  		<tr>
		  			<td>주소</td>
		  			<td></td>
		  		</tr>
		  	</table>
		    <textarea id="txtContent" name="contents" style="width:100%; color:#ffffff;"></textarea>
		  </div>
	 </form><br><br><br><br>
</div>