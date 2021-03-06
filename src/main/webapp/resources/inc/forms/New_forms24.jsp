<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="24" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=24&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form24" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents24!=null}">
		    			${forms.contents24}
		    		</c:when>
		    		<c:otherwise>
		    		<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ위험분석과 관리요약</span></b></p>
		    		<p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p>
		    		<p><b>1. 위험관리의 조직체계에 관한 사항</b></p>
		    		<p><br></p>
		    		<p><b>2. 위험분석의 실시 상황</b></p>
		    		<p><br></p>
		    		<table style="background-color: rgb(166, 188, 209);" class="__se_tbl" _se2_tbl_template="13" border="0" cellpadding="0" cellspacing="1">
			    			<tbody>
								<tr>
									<td bgcolor="#EAEAEA" class="write1" style="width: 255px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(98, 132, 171);"><p>&nbsp;판단기준의 항목</p></td>
									<td bgcolor="#EAEAEA" class="write2" style="width: 594px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(98, 132, 171);"><p>&nbsp;실시 상황 요약</p></td>
								</tr>
								<tr>
									<td class="write1" style="width: 255px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);" ><p>1.</p></td>
									<td class="write2" style="width: 594px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);" ><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>2.</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
							</tbody>
						</table>
					<p><br></p>
					<p><b>3. 안전대책 대응이 요구되는 위험요소</b></p>
					<p><br></p>
					<p><b>4. 중대한 위험요소에 대한 위험분석 및 위험경감 조치의 결과</b></p>
					<p><br></p>
		    		</c:otherwise>
		    	</c:choose>
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>