<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="contents5" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=5" name="url">
		  	<input type="hidden" value="ck_form5" name="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents5!=null}">
		    			${forms.contents5}
		    		</c:when>
		    		<c:otherwise>
		    			<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ사용시 주의사항</span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 10pt;">1.다음환자에게는 사용하지 말것.</span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 10pt;">2.다음의 부작용/사고발생이 일어날 수 있다.</span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 10pt;">3. 일반적 주의 사항</span></b></p><p>&nbsp;
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>