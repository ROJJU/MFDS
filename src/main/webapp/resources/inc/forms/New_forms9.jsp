<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="9" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=9" name="url" id="p_url">
		  	<input type="hidden" value="ck_form9" name="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents9!=null}">
		    			${forms.contents9}
		    		</c:when>
		    		<c:otherwise>
		    			<c:choose>
		    				<c:when test="${forms.power=='1'}">
		    					<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ모양 및 구조-특성</span></b></p><p><br></p><p><b>1. 작동원리</b></p><p><br></p><div><b>2, 전기적 정격</b></div><div><br></div><div><b>3, 정격에 대한 보호형식 및 보호정도</b></div><div><br></div><div><b>4. 안전장치</b></div><div><br></div><div><b>5. 작동계통도</b></div><div><br></div><div><b>6. 절연부의 전기회로도</b></div><div><br></div><p><b>7. 소프트웨어의 알고리즘 및 기능</b></p><p><br></p>
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