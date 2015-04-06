<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="contents32" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=32" name="url">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents32!=null}">
		    			${forms.contents32}
		    		</c:when>
		    		<c:otherwise>
		    			<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ복합, 조합된 의약품에 대한 정보 요약</span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><p><b>1.의약품의 식별과 출처</b></p><p><b>&nbsp; 가. 명칭:</b></p><p><b>&nbsp; 나. 제조사 명칭 및 소재지:</b></p><p><b>&nbsp; 다. 유래물질:</b></p><p><b><br></b></p><p><b>2. 의도적으로 포함된 이유</b></p><p><b><br></b></p><p><b>3.의도된 적용에서 안정성 및 성능 등에 대한 상세한 정보</b></p><p><span style="color: rgb(58, 50, 195);"><i><br></i></span></p><p>&nbsp;</p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>