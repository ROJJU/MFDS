<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="contents9" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=9" name="url">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents9!=null}">
		    			${forms.contents9}
		    		</c:when>
		    		<c:otherwise>
		    			<c:choose>
		    				<c:when test="${forms.power=='1'}">
		    					<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ모양 및 구조</span></b></p><p><br></p><p><b>1. 모양 및 구조 - 작용원리</b></p><p><b><br></b></p><p><b>2. 모양 및 구조 - 외형</b></p><p><b>&nbsp; 가. 외관사진</b></p><p><b><br></b></p><p><b>&nbsp; 나. 외관설명</b></p><p><b><br></b></p><p><b>3. 모양 및 구조 - 치수</b></p><p><span style="color: rgb(58, 50, 195);"><i><br></i></span></p><p><span style="color: rgb(58, 50, 195);"><i><br></i></span></p><p>&nbsp;</p>
		    				</c:when>
		    				<c:otherwise>
		    					<h1>해당사항 없음</h1>
		    				</c:otherwise>
	    				</c:choose>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>