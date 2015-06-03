<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="38" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=38&contents_name=<%=request.getParameter("contents_name")%>" name="url" id="p_url">
		  	<input type="hidden" value="ck_form38" name="ck_form" id="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents38!=null}">
		    			${forms.contents38}
		    		</c:when>
		    		<c:otherwise>
		    		<b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ임상시험 자료 요약</span></b>
		    		<p><b style="line-height: 1.5;"><span style="font-size: 12pt;"><br></span></b></p>
		    		<p align="center" style="text-align: center;"><b style="line-height: 1.5;"><span style="font-size: 18pt;">임상시험</span></b></p>
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
					<table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 제조원</span></b></p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[업체명]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 296px; height: 16px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[제조국]</span></b></p></td><td class="test2" style="width: 925px; height: 16px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 296px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[주소]</span></b></p></td><td class="test2" style="width: 925px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><table class="__se_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 신청인</span></b></p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[업체명]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[대표자명]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" style="width: 294px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[주소]</span></b></p></td><td class="test2" style="width: 927px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p><span id="husky_bookmark_end_1425626047387"></span></p><table class="__se_tbl" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);" border="0" cellpadding="0" cellspacing="1"><tbody><tr><td bgcolor="#EAEAEA" class="" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 자료구분</span></b></p></td></tr><tr><td class="test" style="width: 306px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 915px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><span style="font-size: 13.3333330154419px; line-height: 20px;">1) 식약처장이 지정한 시험검사기관에서 발급한 시험성적서</span></td></tr><tr><td class="test" style="width: 306px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;"><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 915px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px;">2) 외국 자료로서 실시기관의 신뢰성이 인정되고 [의료기기 임상시험 관리 기준]에 의하여 실시한 것으로 판단되는 자료</span></p></td></tr><tr><td class="test" style="width: 306px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;"><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" style="width: 915px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p><span style="color: rgb(0, 0, 0); font-size: 13.3333330154419px; line-height: 20px;"><font color="#3d76ab">3)&nbsp;</font></span><span style="font-size: 13.3333330154419px; line-height: 20px;">해당 의료기기에 대하여 경제협력개발기구(OECE) 회원국에 허가 당시 제출되어 평가된 시험성적서로 해당 정부 또는 정부가 허가 업무를 위임한 등록기관이 제출받아 승인하였음을 확인한 자료 또는 이를 공증한 자료</span></p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 6px; height: 5px; background-color: rgb(246, 248, 250);"><p style="text-align: center;" align="center"><span style="font-size: 13.3333330154419px; line-height: 20px;">O</span></p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 5px; height: 5px; background-color: rgb(255, 255, 255);"><p><span style="font-size: 13.3333330154419px; line-height: 20px;">4) 과학논문인용색인(Science Citation Index)에 등재된 전문학회지에 기재된 자료</span></p></td></tr></tbody></table><table class="__se_tbl" _se2_tbl_template="15" style="background-color: rgb(166, 188, 209);" border="0" cellpadding="0" cellspacing="1"><tbody><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">임상시험 의뢰자</p></td><td class="test2" style="width: 638px; height: 18px; color: rgb(61, 118, 171); padding: 3px 4px 2px; text-align: left; font-weight: normal; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">임상시험 실시기관 명칭</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" style="width: 210px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">임상시험 책임자</p></td><td class="test2" style="width: 638px; height: 18px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">임상시험 명칭</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">임상시험 목적</p></td><td class="test2" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">임상시험방법</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">피험자 수</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; width: 5px; height: 5px; background-color: rgb(246, 248, 250);"><p style="text-align: center;">피험자 선정기준 및 제외기준</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); width: 5px; height: 5px; background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">임상시험 기간</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p align="center" style="text-align: center;">일차 유효성 평가기준, 평가방법 및 해석방법</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">이차 유효성 평가기준, 평가방법 및 해석 방법</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">안전성 평가기준</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">이상반응</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">결과</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td bgcolor="#EAEAEA" class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); text-align: left; font-weight: normal; background-color: rgb(246, 248, 250);"><p style="text-align: center;">결론</p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p align="center" style="text-align: center;"><span style="font-size: 24px; line-height: 36px;"><b></b></span></p><p align="center" style="text-align: center;">&nbsp;</p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>