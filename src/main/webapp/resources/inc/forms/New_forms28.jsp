<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="28" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=28&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form28" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents28!=null}">
		    			${forms.contents28}
		    		</c:when>
		    		<c:otherwise>
		    		<b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ생물학적 안전성 시험 요약</span></b>
		    		<p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p>
		    		<p align="center" style="text-align: center;"><b style="line-height: 1.5;"><span style="font-size: 18pt;">생물학적 안전성</span></b></p>
		    			<table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);">
		    				<tbody>
		    					<tr>
		    						<td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 15px; color: rgb(61, 118, 171); padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p style="text-align: center;">품목류명</p></td>
		    						<td class="test2" style="width: 638px; height: 15px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span>&nbsp;</span></p></td>
	    						</tr>
	    						<tr>
	    							<td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">모델명</p></td>
	    							<td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
    							</tr>
    							<tr>
    								<td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p style="text-align: center;">제조번호</p></td>
    								<td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
   								</tr>
   								<tr>
   									<td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">제조일자</p></td>
   									<td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td>
								</tr>
							</tbody>
						</table>
						<table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 제조원</span></b></p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[업체명]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 296px; height: 17px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[제조국]</span></b></p></td><td class="test2" style="width: 925px; height: 17px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[주소]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 신청인</span></b></p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[업체명]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[대표자명]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[주소]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p><span id="husky_bookmark_end_1425626047387"></span></p><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 자료구분</span></b></p></td></tr><tr><td class="test" style="width: 306px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 915px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px;">1) 식약처장이 지정한 시험검사기관에서 발급한 시험성적서</span></p></td></tr><tr><td class="test" style="width: 306px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 10pt;"></span><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 915px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px;">2) 경제협력개발기구(OECD)의 비임상관리 기준(GLP)에 의하여 공인 받은 GLP 시험기관에서 발급한 GLP 자료</span></p></td></tr><tr><td class="test" style="width: 306px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;" align="center"><span style="font-size: 10pt;"></span><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 915px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px;">3) 또는 2)에 해당하는 자료로서 해당 제품과 원재료가 동일하고 인체접촉시간</span></p></td></tr></tbody></table><table class="__se_tbl" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);" border="0" cellpadding="0" cellspacing="1"><tbody><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험기관</p></td><td class="test2" style="width: 638px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; text-align: left; font-weight: normal; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험기간</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">성적서발급일</p></td><td class="test2" style="width: 638px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center; ">시험규격</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;" align="center">검액제조조건&nbsp;</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p style="text-align: center;" align="center"><span style="line-height: 1.5;">&nbsp;<b>&lt;</b></span><b style="line-height: 1.5;">시험결과&gt;</b></p><p><span style="line-height: 1.5;"></span></p><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody>
<tr><td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; width: 164px; height: 18px; background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;"><b>시험항목</b></p></td>
<td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; width: 164px; height: 18px; background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;"><b>단위</b></p></td><td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; width: 164px; height: 18px; background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;"><b>시료구분</b></p></td><td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; width: 165px; height: 18px; background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;"><b>기준치</b></p></td><td bgcolor="#EAEAEA" style="padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; width: 165px; height: 18px; background-color: rgb(98, 132, 171);" class=""><p style="text-align: center;"><b>결과치</b></p></td>
</tr>
<tr><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 164px; height: 18px; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 164px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 164px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 165px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 165px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td></tr><tr><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 164px; height: 18px; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 164px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 164px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 165px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 165px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td></tr><tr><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 164px; height: 18px; background-color: rgb(246, 248, 250);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 164px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 164px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 165px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;">&nbsp;</p></td><td style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 165px; height: 18px; background-color: rgb(255, 255, 255);" class=""><p style="text-align: center;" align="center">&nbsp;</p></td></tr></tbody></table><p>&nbsp;</p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>