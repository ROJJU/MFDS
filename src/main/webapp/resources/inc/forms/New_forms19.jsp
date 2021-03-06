<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="19" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=19&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form19" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents19!=null}">
		    			${forms.contents19}
		    		</c:when>
		    		<c:otherwise>
		    			<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ표시기재(안)</span></b></p>
		    			<p><br></p>
		    			<table style="background-color: rgb(166, 188, 209);" class="__se_tbl" _se2_tbl_template="13" border="0" cellpadding="0" cellspacing="1">
			    			<tbody>
								<tr>
									<td bgcolor="#EAEAEA" class="write1" style="width: 255px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(98, 132, 171);"><p>&nbsp;목차</p></td>
									<td bgcolor="#EAEAEA" class="write2" style="width: 594px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(98, 132, 171);"><p>&nbsp;내용</p></td>
								</tr>
								<tr>
									<td class="write1" style="width: 255px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);" ><p>1.첨부문서(안) 작성연월</p></td>
									<td class="write2" style="width: 594px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);" ><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>2.품목류명</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>3.형명(모델명)</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 5px; height: 5px; background-color: rgb(246, 248, 250);"><p>4.허가(신고)번호</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 5px; height: 5px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 5px; height: 5px; background-color: rgb(246, 248, 250);"><p>5.제조업자상호</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 5px; height: 5px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 5px; height: 5px; background-color: rgb(246, 248, 250);"><p>6.제조업자주소</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 5px; height: 5px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>7.중량 또는 포장단위</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>8.사용 목적</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>9.의료기기, 일회용, 재사용 금지</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>10.사용방법</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>11.사용시 주의사항</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>가. 사용시 준비사항</p><p style="margin-left: 40px;"><br></p></td>
								</tr>
								<tr>
									<td class="write1"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p>12.저장방법 및 사용기한</p></td>
									<td class="write2"  rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>가. 저장방법1</p><p style="margin-left: 40px;"><br></p><p>나.사용기한</p><p style="margin-left: 40px;"><br></p></td>
								</tr>
							</tbody>
						</table>
						<p></p>
						<p></p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>