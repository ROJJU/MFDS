<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv" id="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="2" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=2&contents_name=<%=request.getParameter("contents_name")%>" name="url"  id="p_url">
		  	<input type="hidden" value="ck_form2" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:700px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents2!=null}">
		    			${forms.contents2}
		    		</c:when>
		    		<c:otherwise>
		    		<p>&nbsp;<b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ 원재료</span></b></p>
		    		<p>&nbsp;</p>
		    		<table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="text-align: center; background-color: rgb(166, 188, 209);">
		    					<tbody>
		    						<tr>
		    							<td bgcolor="#EAEAEA" class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; background-color: rgb(98, 132, 171);"><p style="text-align: center;"><span style="font-size: 10pt;">일련번호</span></p></td>
		    							<td bgcolor="#EAEAEA" class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; background-color: rgb(98, 132, 171);"><p style="text-align: center;"><span style="font-size: 10pt;">명칭</span></p></td>
		    							<td bgcolor="#EAEAEA" class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; background-color: rgb(98, 132, 171);"><p style="text-align: center;">원재료 또는 성분 및 분량 규격</p></td>
		    							<td bgcolor="#EAEAEA" class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; background-color: rgb(98, 132, 171);"><p style="text-align: center;">분량</p></td>
		    							<td bgcolor="#EAEAEA" class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; background-color: rgb(98, 132, 171);"><p style="text-align: center;">규격</p></td>
		    							<td bgcolor="#EAEAEA" class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; background-color: rgb(98, 132, 171);"><p align="center" style="text-align: center;">인체접촉</p></td>
		    							<td bgcolor="#EAEAEA" class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; background-color: rgb(98, 132, 171);"><p style="text-align: center;">비고</p></td>
	    							</tr>
	    							<tr><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 10pt;">1</span></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="color: rgb(0, 0, 0);"></span><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p align="center"><br></p></td></tr><tr><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 10pt;">2</span></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td></tr><tr><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 10pt;">3</span></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><br></p></td><td class="" style="width: 166px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p align="center"><br></p></td></tr></tbody></table>
		    		
					<p>&nbsp;</p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>