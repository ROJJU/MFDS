<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="contents16" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=16" name="url">
		  	<input type="hidden" value="ck_form16" name="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents16!=null}">
		    			${forms.contents16}
		    		</c:when>
		    		<c:otherwise>
		    			<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ기기설계 계요</span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><p><b>1.기원 또는 발견 경위</b></p><p><br></p><p><b>2.개발 경위</b></p><p><br></p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>