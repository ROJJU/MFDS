<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="37" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=37&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form37" name="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents37!=null}">
		    			${forms.contents37}
		    		</c:when>
		    		<c:otherwise>
						<b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ동물시험 자료 요약</span></b><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><p align="center" style="text-align: center;"><span style="font-size: 24px; line-height: 36px;"><b>동물시험</b></span></p><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="test" style="padding-top: 3px; padding-right: 4px; padding-bottom: 2px; padding-left: 4px; background-color: rgb(246, 248, 250); width: 210px; height: 15px; "><p style="text-align: center;">품목류명</p></td><td class="test2" style="padding-top: 3px; padding-right: 4px; padding-bottom: 2px; padding-left: 4px; color: rgb(255, 255, 255); background-color: rgb(255, 255, 255); width: 638px; height: 15px; "><p><span style="color: rgb(61, 118, 171); line-height: 1.5;">&nbsp;</span></p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="padding-top: 3px; padding-right: 4px; padding-bottom: 2px; padding-left: 4px; background-color: rgb(246, 248, 250); width: 210px; height: 18px; "><p style="text-align: center;">모델명</p></td><td class="test2" style="padding-top: 3px; padding-right: 4px; padding-bottom: 2px; padding-left: 4px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255); width: 638px; height: 18px; "><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="padding-top: 3px; padding-right: 4px; padding-bottom: 2px; padding-left: 4px; background-color: rgb(246, 248, 250); width: 210px; height: 18px; "><p style="text-align: center;">제조번호</p></td><td class="test2" style="padding-top: 3px; padding-right: 4px; padding-bottom: 2px; padding-left: 4px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255); width: 638px; height: 18px; "><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="padding-top: 3px; padding-right: 4px; padding-bottom: 2px; padding-left: 4px; background-color: rgb(246, 248, 250); width: 210px; height: 18px; "><p align="center" style="text-align: center;">제조일자</p></td><td class="test2" style="padding-top: 3px; padding-right: 4px; padding-bottom: 2px; padding-left: 4px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255); width: 638px; height: 18px; "><p>&nbsp;</p></td></tr></tbody></table><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 제조원</span></b></p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[업체명]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 296px; height: 17px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[제조국]</span></b></p></td><td class="test2" style="width: 925px; height: 17px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[주소]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 신청인</span></b></p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[업체명]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[대표자명]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[주소]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p><span id="husky_bookmark_end_1425626047387"></span></p><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 자료구분</span></b></p></td></tr><tr><td class="test" style="width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><span style="font-size: 13.3333330154419px; line-height: 20px;">1) 식약처장이 지정한 시험검사기관에서 발급한 시험성적서</span></td></tr><tr><td class="test" style="width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 10pt;">&nbsp;</span><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px;">2) 대학 또는 연구기관 등 국내&nbsp;· 외의 전문기관에서 시험한 것으로서 해당 전문기관의 장이 발급하고 그 내용(기관의 시험시설 개요, 주요설비, 연구인력 구성, 시험자의 연구경력 등을 포함한다)을 검토하여 타당하다고 인정할 수 있는 시험성적서 또는 자료</span></p></td></tr><tr><td class="test" style="width: 300px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;"><span style="font-size: 10pt;">&nbsp;</span><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 921px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px;">3) [의료기기 제조 및 품질관리 기준] 또는 이와 동등 이상의 규격에 따른 제조사의 품질관리시스템 하에서 실시한 물리&nbsp;· 화학적 특성에 관한 시험 성적서 또는 자료</span></p></td></tr></tbody></table><table class="__se_tbl" _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험기관 및 책임자</p></td><td class="test2" style="width: 638px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; background-color: rgb(255, 255, 255);"><p>시험기관: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/책임자:</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험제목</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">시험목적</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험기간</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 5px; height: 5px; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">사용동물 정보</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 5px; height: 5px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험방법</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">측정항목</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험결과</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">결론</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">비고</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p align="center" style="text-align: center;"><span style="font-size: 24px; line-height: 36px;"><b></b></span></p><p>&nbsp;</p>				    			
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>