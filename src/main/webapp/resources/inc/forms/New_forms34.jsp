<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="34" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=34&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form34" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents34!=null}">
		    			${forms.contents34}
		    		</c:when>
		    		<c:otherwise>
		    		<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ동물유래 물질에 대한 안전성 자료 요약</span></b></p><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody>
<tr><td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; width: 93px; height: 18px; background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;"><b>번호</b></p></td>
<td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; width: 225px; height: 18px; background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;"><b>항목</b></p></td><td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; width: 522px; height: 18px; background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;" align="center"><b>내용</b></p></td>
</tr>
<tr><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 93px; height: 18px; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center; ">1</p></td>
<td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 225px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center; "><br></p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 522px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;"><br></p></td></tr><tr><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 93px; height: 18px; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center;">2</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 225px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;"><br></p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 522px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;"><br></p></td></tr><tr><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 93px; height: 18px; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center;">3</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 225px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;"><br></p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 522px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;" align="center"><br></p></td>
</tr>
</tbody>
</table><p><br></p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>