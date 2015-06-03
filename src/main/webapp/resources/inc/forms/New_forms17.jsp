<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="17" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=17&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form17" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents17!=null}">
		    			${forms.contents17}
		    		</c:when>
		    		<c:otherwise>
		    		<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ제품사양</span></b></p>
		    		<p>&nbsp;</p>
		    		<p><b>1.제품의 특성(성능)</b></p>
		    		<p><br></p>
		    		<p><b>2.외형(모양)및 구조</b></p>
		    		<p><b>&nbsp; 가. 외형사진</b></p>
		    		<p style="margin-left: 40px;"><br></p>
		    		<p style="margin-left: 0px;"><b>&nbsp; 나. 구성품</b></p>
		    		<p style="margin-left: 40px;"><br></p>
		    		<p style="margin-left: 0px;"><b>3.상세 설명</b></p>
		    		<table style="background-color: rgb(166, 188, 209); margin-left: 0px;" class="__se_tbl" _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1">
			    		<tbody>
			    			<tr>
			    				<td bgcolor="#EAEAEA" style="width: 86px; height: 18px; text-align: left; font-weight: normal; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);" class="num"><p style="text-align: center; margin-left: 0px;">&nbsp;일련번호</p></td>
			    				<td bgcolor="#EAEAEA" style="width: 232px; height: 18px; text-align: left; font-weight: normal; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);" class=""><p style="text-align: center; ">부분품의명칭</p></td>
			    				<td bgcolor="#EAEAEA" style="width: 546px; height: 18px; text-align: left; font-weight: normal; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;" align="center">기능&nbsp;</p></td>
		    				</tr><tr><td style="width: 86px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center; ">&nbsp;1</p></td>
						<td style="width: 232px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;"><br></p></td>
						<td style="width: 546px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);" class=""><p>&nbsp;</p></td>
						</tr>
						<tr><td style="width: 86px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center; ">&nbsp;2</p></td>
						<td style="width: 232px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;"><br></p></td>
						<td style="width: 546px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);" class=""><p>&nbsp;</p></td>
						</tr>
						<tr><td style="width: 86px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center; ">&nbsp;3</p></td>
						<td style="width: 232px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;" align="center"><br></p></td>
						<td style="width: 546px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);" class=""><p>&nbsp;</p></td>
						</tr>
						</tbody>
					</table>
					<p></p>
					<p><br></p>
					<p style="margin-left: 0px;"><b>4. 치수 및 중량</b></p>
					<p><br></p>
					<p></p>
					<p></p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>