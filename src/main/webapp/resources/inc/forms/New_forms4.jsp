<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="4" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=4&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form4" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents4!=null}">
		    			${forms.contents4}
		    		</c:when>
		    		<c:otherwise>
		    			<div onclick="javaScript:document.getElementById('guide').innerHTML='';">
		    				<p><span style="font-size: 12pt;"><b>ㅣ 사용방법</b></span></p>
		    				<p>&nbsp;</p>
		    				<p id="guide"><span style="color: rgb(58, 50, 195); font-size: 10pt;"><i>사용법은 다음과 같이 구분하여 작성하며 필요시, 그림등을 포함하여 자세하게 작성</i></span></p>
		    				<p>&nbsp;</p>
		    				<p><b><span style="font-size: 10pt;">1. 사용 전 준비사항</span></b></p>
		    				<p><br></p>
		    				<p><br></p>
		    				<p><br></p>
		    				<div onclick="javaScript:document.getElementById('guide1').innerHTML='';">
			    				<p><span style="font-size: 10pt;"><b>2. 조작순서 및 사용방법</b></span></p>
			    				<p id="guide1"><span style="color: rgb(255, 0, 0);">각각의 기능에 대하여 구분하여 자세하게 작성</span></p>
			    				<p><br></p>
			    				<p><br></p>
		    				</div>
		    				<p><span style="font-size: 10pt;"><b>3. 사용 후 보관 및 관리 방법</b></span></p>
		    				<p><br></p>
	    				</div>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>