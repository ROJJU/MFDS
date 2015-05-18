<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="25" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=25" name="url" id="p_url">
		  	<input type="hidden" value="ck_form25" name="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents25!=null}">
		    			${forms.contents25}
		    		</c:when>
		    		<c:otherwise>
		    		<b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ방사선에 관한 안전성 시험 요약</span></b><p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p><p align="center" style="text-align: center;"><b><span style="font-size: 12pt;"></span></b><b style="line-height: 1.5;"><span style="font-size: 18pt;">방사선 안전성</span></b></p><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 15px; padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p style="text-align: center;">품목류명</p></td><td class="test2" style="width: 638px; height: 15px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(255, 255, 255);"><p><span style="color: rgb(0, 117, 200);">&nbsp;</span></p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p style="text-align: center;">모델명</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p style="text-align: center;">제조번호</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">제조일자</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 제조원</span></b></p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[업체명]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[제조국]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[주소]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 신청인</span></b></p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[업체명]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[대표자명]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[주소]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><table class="__se_tbl" _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 자료구분</span></b></p></td></tr><tr><td class="test" style="width: 305px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;"><span style="line-height: 1.5; color: rgb(0, 0, 0);">O</span></p></td><td class="test2" style="width: 916px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px; color: rgb(0, 0, 0);">1) 식약처장이 지정한 시험검사기관에서 발급한 시험성적서</span></p></td></tr><tr><td class="test" style="width: 305px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="line-height: 1.5; color: rgb(0, 0, 0);">O</span></p></td><td class="test2" style="width: 916px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px; color: rgb(0, 0, 0);">2) 국제전기기술위원회(IEC)가 운영하는 국제전기기기인증제도(IECEE CB-Scheme)에 따라 국제공인시험기관(NCB)에서 발금한 시험성적서</span></p></td></tr><tr><td class="test" style="width: 305px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="line-height: 1.5; color: rgb(0, 0, 0);">O</span></p></td><td class="test2" style="width: 916px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px; color: rgb(0, 0, 0);">3) 한국인정기구(KOLAS)에서 인정한 의료기기 분야의 시험검사기관에서 인정된 규격코드로 적합하게 발급한 시험성적서</span></p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 6px; height: 5px; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;"><span style="line-height: 1.5; color: rgb(0, 0, 0);">O</span></p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 5px; height: 5px; background-color: rgb(255, 255, 255);"><p><span style="color: rgb(0, 0, 0);">&nbsp;</span><font color="#3d76ab" style="line-height: 1.5;"><span style="font-size: 13.3333330154419px; line-height: 20px; color: rgb(0, 0, 0);">4) 해당 의료기기에 대하여 경제협력개발기구(OECE) 회원국에 허가 당시 제출되어 평가된 시험성적서로 해당 정부 또는 정부가 허가 업무를 위임한 등록기관이 제출받아 승인하였음을 확인한 자료 또는 이를 공증한 자료</span></font></p></td></tr></tbody></table><table class="__se_tbl" _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험기관</p></td><td class="test2" style="width: 638px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험기간</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">성적서발급일</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험규격</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p style="text-align: center;">시험결과</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">&nbsp;비고</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>