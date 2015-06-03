<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="8" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=8&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form8" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents8!=null}">
		    			${forms.contents8}
		    		</c:when>
		    		<c:otherwise>
		    			<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ시험규격</span></b></p>
		    			<p>&nbsp;</p>
		    			<p><b>1. 생물학적 안전성에 관한 시험</b></p>
		    			<p><br></p>
		    			<p><b>2. 성능에 관한 시험</b></p>
		    			<p><b></b></p>
		    			<div>
		    				<table class="__se_tbl" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);" border="0" cellpadding="0" cellspacing="1">
		    					<tbody>
		    						<tr>
		    							<td bgcolor="#EAEAEA" class="" colspan="4" rowspan="1" style="width: 1212px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt;성능에 관한 시험</span></b></p></td>
		    							</tr><tr>
	    								<td class="" width="80px" style="width: 297px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 13.3333330154419px; line-height: 20px;">번호</span></p></td>
	    								<td class="" width="120px"style="width: 290px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center; "><b>시험항목</b></p></td>
	    								<td class="" width="220px" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center; "><b>시험기준</b></p></td>
	    								<td class="" width="220px"style="width: 329px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;" align="center"><b>시험방법</b></p></td>
	    								</tr><tr>
	    								<td class="" style="width: 297px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(255, 255, 255);"><p style="text-align: center;" align="center">1</p></td>
	    								<td class="" style="width: 290px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p style="text-align: center; ">&nbsp;</p></td>
	    								<td class="" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p style="text-align: center; ">&nbsp;</p></td>
	    								<td class="" style="width: 329px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p style="text-align: center;">&nbsp;</p></td>
	    								</tr><tr>
	    								<td class="" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(255, 255, 255);"><p style="text-align: center; ">2</p></td>
	    								<td class="" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p style="text-align: center; ">&nbsp;</p></td>
	    								<td class="" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p style="text-align: center;">&nbsp;</p></td>
	    								<td class="" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p style="text-align: center;" align="center">&nbsp;</p></td>
    								</tr>
   								</tbody>
							</table>
		    				<p></p>
		    				<p><br></p>
	    				</div>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>