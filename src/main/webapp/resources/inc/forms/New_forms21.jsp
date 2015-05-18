<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="21" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=21" name="url" id="p_url">
		  	<input type="hidden" value="ck_form21" name="ck_form">
		    <textarea id="txtContent" name="contents" rows="30" style="width:100%; height:900px; color:#ffffff;">
		    	<c:choose>
		    		<c:when test="${forms.contents21!=null}">
		    			${forms.contents21}
		    		</c:when>
		    		<c:otherwise>
		    			<p><b style="line-height: 1.5;"><span style="font-size: 12pt;">ㅣ규격에 대한 적합선언</span></b></p><p style="text-align: center;" align="center"><br></p><p align="left" style="text-align: left;"><b style="line-height: 1.5;"><span style="font-size: 12pt;">1.적합성 선언서(제조업체)</span></b></p><p align="center" style="text-align: center;"><span style="font-size: 18pt; line-height: 24px;"><b>적합성 선언서</b></span></p><p><span style="font-size: 10pt;"></span><span style="line-height: 1.5;">&nbsp;</span><span style="line-height: 1.5;">&nbsp;</span></p><table class="hong" "="" _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1" style="background-color: rgb(166, 188, 209);"><tbody><tr><td class="" colspan="2" rowspan="1" bgcolor="#EAEAEA" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 제조업소</span></b></p></td></tr><tr><td class="test" style="width: 203px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><span style="font-size: 10pt;"><b>[명칭(상호명)]</b></span></p></td><td class="test2" style="width: 629px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b>[소재지]</b></p></td><td class="test2" rowspan="1" colspan="1" style="width: 7px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b>[전화/팩스]</b></p></td><td class="test2" rowspan="1" colspan="1" style="width: 7px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b>[입허가번호]</b></p></td><td class="test2" rowspan="1" colspan="1" style="padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p><span style="font-size: 10pt;"></span></p><table class="__se_tbl" _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1" style="background-color: rgb(166, 188, 209);"><tbody><tr><td class="" bgcolor="#EAEAEA" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 제품</span></b></p></td></tr><tr><td class="test" style="width: 203px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><span style="font-size: 10pt;"><b>[제품명]</b></span></p></td><td class="test2" style="width: 629px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b>[품목분류번호]</b></p></td><td class="test2" rowspan="1" colspan="1" style="width: 7px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p><br></p><table border="0" cellpadding="0" cellspacing="0" class="__se_tbl" style="border-width: 1px 1px 0px 0px; border-top-style: solid; border-right-style: solid; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204);"><tbody><tr><td style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); width: 851px; height: 16px; background-color: rgb(255, 255, 255);"><p><span style="font-size: 10pt;"><br></span></p><p><span style="font-size: 10pt;">상기 신청하고자 하는 의료기기는 의료기기법, 같은법 시행규칙, 의료기기 허가&nbsp;</span><span style="font-size: 10pt;">· 신고</span><span style="line-height: 1.5; font-size: 10pt;">&nbsp;</span><span style="line-height: 1.5; font-size: 10pt;">·</span><span style="line-height: 1.5; font-size: 10pt;">&nbsp;</span><span style="line-height: 1.5; font-size: 10pt;">​심사 등에 관한 규정, 의료기기 품목 및 품목별 등급에 관한 규정, 의료기기의 전기</span><span style="line-height: 1.5; font-size: 10pt;">&nbsp;</span><span style="line-height: 1.5; font-size: 10pt;">·</span><span style="line-height: 1.5; font-size: 10pt;">&nbsp;기계적 안전에 관한 공동기준규격, 의료기기의 전자파안전에 관한 공동기준규격, 의료기기의 생물학적 안전에 관한 공동기준규격, 전자의료기기 기준규격, 의료기기 기준규격, 의료기기의 안전성시험 기준, 의료기기 제조 및 품질관리기준을 준수하여 이를 적합하게 제조하였음을 선언합니다.</span><span style="line-height: 1.5; font-size: 10pt;">​</span></p><p><span style="line-height: 1.5; font-size: 10pt;"><br></span></p><p></p></td></tr></tbody></table><p><span style="font-size: 10pt;">&nbsp;</span></p><p>&nbsp;</p><p align="center" style="text-align: center;">YYYY. MM. DD</p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;">직위 : [대표자] &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 성명 : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 서명 :</p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="left" style="text-align: left;"><b style="line-height: 1.5;"><span style="font-size: 12pt;">2.적합성 선언서(수입업체)</span></b></p><p align="center" style="text-align: center;"><span style="font-size: 18pt; line-height: 24px;"><b>적합성 선언서</b></span></p><p><span style="font-size: 10pt;">&nbsp;</span></p><table class="hong " _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1" style="background-color: rgb(166, 188, 209);"><tbody><tr><td class="" bgcolor="#EAEAEA" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 제조업소</span></b></p></td></tr><tr><td class="test" style="width: 203px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[명칭(상호명)]</span></b></p></td><td class="test2" style="width: 629px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b style="line-height: 1.5;"><span style="font-size: 10pt;">[소재지]</span></b><span style="line-height: 1.5;">​</span></p></td><td class="test2" rowspan="1" colspan="1" style="width: 7px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b style="line-height: 1.5;"><span style="font-size: 10pt;">[전화/팩스]</span></b><span style="line-height: 1.5;">​</span></p></td><td class="test2" rowspan="1" colspan="1" style="width: 7px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><table class="hong" _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1" style="background-color: rgb(166, 188, 209);"><tbody><tr><td class="" bgcolor="#EAEAEA" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 수입업소</span></b></p></td></tr><tr><td class="test" style="width: 203px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b><span style="font-size: 10pt;">[명칭(상호명)]</span></b></p></td><td class="test2" style="width: 629px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b style="line-height: 1.5;"><span style="font-size: 10pt;">[소재지]</span></b><span style="line-height: 1.5;">​</span></p></td><td class="test2" rowspan="1" colspan="1" style="width: 7px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b style="line-height: 1.5;"><span style="font-size: 10pt;">[전화/팩스]</span></b><span style="line-height: 1.5;">​</span></p></td><td class="test2" rowspan="1" colspan="1" style="width: 7px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p><span style="font-size: 10pt;"></span></p><table class="__se_tbl" _se2_tbl_template="15" border="0" cellpadding="0" cellspacing="1" style="background-color: rgb(166, 188, 209);"><tbody><tr><td class="" bgcolor="#EAEAEA" colspan="2" rowspan="1" style="width: 1221px; height: 18px; padding: 3px 4px 2px; color: rgb(255, 255, 255); background-color: rgb(98, 132, 171);"><p><b><span style="font-size: 10pt;">&nbsp;&gt; 제품</span></b></p></td></tr><tr><td class="test" style="width: 203px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><span style="font-size: 10pt;"><b>[제품명]</b></span></p></td><td class="test2" style="width: 629px; height: 19px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr><tr><td class="test" rowspan="1" colspan="1" style="width: 5px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(246, 248, 250);"><p><b>[품목분류번호]</b></p></td><td class="test2" rowspan="1" colspan="1" style="width: 7px; height: 5px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);"><p>&nbsp;</p></td></tr></tbody></table><p><br></p><table border="0" cellpadding="0" cellspacing="0" class="__se_tbl" style="border-width: 1px 1px 0px 0px; border-top-style: solid; border-right-style: solid; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204);"><tbody><tr><td style="border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); width: 851px; height: 16px; background-color: rgb(255, 255, 255);"><p><span style="font-size: 10pt;"><br></span></p><p><span style="font-size: 10pt;">상기 신청하고자 하는 의료기기는 의료기기법, 같은법 시행규칙, 의료기기 허가&nbsp;</span><span style="font-size: 10pt;">· 신고</span><span style="line-height: 1.5; font-size: 10pt;">&nbsp;</span><span style="line-height: 1.5; font-size: 10pt;">·</span><span style="line-height: 1.5; font-size: 10pt;">&nbsp;</span><span style="line-height: 1.5; font-size: 10pt;">​심사 등에 관한 규정, 의료기기 품목 및 품목별 등급에 관한 규정, 의료기기의 전기</span><span style="line-height: 1.5; font-size: 10pt;">&nbsp;</span><span style="line-height: 1.5; font-size: 10pt;">·</span><span style="line-height: 1.5; font-size: 10pt;">&nbsp;기계적 안전에 관한 공동기준규격, 의료기기의 전자파안전에 관한 공동기준규격, 의료기기의 생물학적 안전에 관한 공동기준규격, 전자의료기기 기준규격, 의료기기 기준규격, 의료기기의 안전성시험 기준, 의료기기 제조 및 품질관리기준을 준수하여 이를 적합하게 제조하였음을 선언합니다.</span><span style="line-height: 1.5; font-size: 10pt;">​</span></p><p><span style="line-height: 1.5; font-size: 10pt;"><br></span></p><p>&nbsp;</p></td></tr></tbody></table><p><span style="font-size: 10pt;">&nbsp;</span></p><p>&nbsp;</p><p align="center" style="text-align: center;">YYYY. MM. DD</p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;">직위 : [수입업자 대표자] &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 성명 : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 서명 :</p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><span style="line-height: 1.5;">직위 : [수입업자 대표자] &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 성명 : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 서명 :</span><span style="line-height: 1.5;">​</span></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p align="center" style="text-align: center;"><br></p><p style="text-align: center;" align="center"><br></p>
		    		</c:otherwise>
		    	</c:choose>
		    	
		    </textarea>
		  </div>
	 </form><br><br><br><br>
</div>