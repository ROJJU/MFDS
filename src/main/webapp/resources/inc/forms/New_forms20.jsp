<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="contents20" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=20" name="url">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents20!=null}">
		    			${forms.contents20}
		    		</c:when>
		    		<c:otherwise>
		    		<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ위험분석과 관리요약</span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><p><b>1. 위험관리의 조직체계에 관한 사항</b></p><p><br></p><p><b>2. 위험분석의 실시 상황</b></p><p><br></p><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody>
<tr><td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; width: 222px; height: 18px; background-color: rgb(98, 132, 171);"><p>&nbsp;판단기준의 항목</p></td>
<td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; width: 627px; height: 18px; background-color: rgb(98, 132, 171);"><p>&nbsp;실시 상황 요약</p></td>
</tr>
<tr><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 222px; height: 18px; background-color: rgb(246, 248, 250);"><p>1.</p></td>
<td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 627px; height: 18px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
</tr>
<tr><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 222px; height: 18px; background-color: rgb(246, 248, 250);"><p>2.</p></td>
<td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 627px; height: 18px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
</tr>
</tbody>
</table><p><span style="color: rgb(58, 50, 195);"><i><br></i></span></p><p><b>3. 안전대책 대응이 요구되는 위험요소</b></p><p><b><br></b></p><p><b>4. 중대한 위험요소에 대한 위험분석 및 위험경감 조치의 결과</b></p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>