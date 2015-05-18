<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="3" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=3&contents_name=<%=request.getParameter("contents_name")%>" name="url"  id="p_url">
		  	<input type="hidden" value="ck_form3" name="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents3!=null}">
		    			${forms.contents3}
		    		</c:when>
		    		<c:otherwise>
		    	<p><b><span style="font-size: 12pt;">ㅣ 제조방법</span></b></p><p>&nbsp;</p><p><span style="font-size: 10pt;"><b>제조원의 제조방법에 따른다.</b></span></p><p><br></p><p><span style="color: rgb(255, 0, 0); font-size: 10pt;">(설명) 멸균의료기기의 경우 근거자료에 의거하여 멸균방법을 기재</span></p><p><br></p><ul><li><span style="color: rgb(255, 0, 0); font-size: 10pt; line-height: 1.5;">&nbsp;제조방법</span></li><li><span style="color: rgb(255, 0, 0); font-size: 10pt; line-height: 1.5;">&nbsp;멸균방법 및 조건</span></li></ul>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>