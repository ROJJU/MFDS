<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<input type="hidden" value="<%=request.getParameter("num")%>" id="num">
<%if(request.getParameter("num").equals("1")){ %>
<input type="hidden" value="1.신청서" id="title" name="title">
	<div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="1" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=1&contents_name=<%=request.getParameter("contents_name")%>" name="p_url" id="p_url">
		  	<input type="hidden" value="ck_form1" name="ck_form">
		  	<p><b><span style="font-size: 12pt;">ㅣ 의료기기 기술문서 등 심사의뢰서</span></b></p><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="4">▶ 의뢰인</td></tr>
		  		<tr>
		  			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;"  width="160px">[성명(대표자)]</td>
		  			<td style="border:1px solid black; "  width="160px">${memberInfo.kor_name}</td>
		  			<td style="border:1px solid black; background-color:#DDDDDE;" width="160px">[생년월일]</td>
		  			<td style="border:1px solid black; ">${firstForm.birthDay}</td>
	  			</tr>
		  		<tr><td style="border:1px solid black; padding:5px; background-color:#DDDDDE;">[주소]</td><td class="first_td" colspan="3">${memberInfo.address}</td></tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="4">▶ 제조(수입)업소</td></tr>
		  		<tr>
		  			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="160px" >[명칭(상호)]</td>
		  			<td style="border:1px solid black; " colspan="3">${firstForm.makeCompanyName}</td>
	  			</tr>
		  		<tr>
		  			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="160px">[주소]</td>
		  			<td style="border:1px solid black; " colspan="3">${firstForm.makeAddr}</td>
	  			</tr>
		  		<tr>
		  			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="160px" >[사업자등록번호]</td>
		  			<td style="border:1px solid black; " width="160px">${firstForm.makeCompanyNo}</td>
		  			<td style="border:1px solid black; background-color:#DDDDDE;" width="160px">[입허가번호]</td>
		  			<td style="border:1px solid black; " width="160px">${firstForm.makeLicenseNo}</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 심사의뢰의 구분</td></tr>
		  		<tr><td class="first_th" width="160px" >[심사의 종류]</td><td class="first_td" >기술문서 심사</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px">[제조/수입 구분]</td>
		  			<td class="first_td">
		  			<c:choose>
		  				<c:when test="${firstForm.makingOrImport==1}">
		  					제조
		  				</c:when>
		  				<c:otherwise>
		  					수입
		  				</c:otherwise>
		  			</c:choose>
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[제품의 구분]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.divisionOfProduct==1}">
		  						새로운제품
		  					</c:when>
		  					<c:when test="${firstForm.divisionOfProduct==2}">
		  						개량제품
		  					</c:when>
		  					<c:when test="${firstForm.divisionOfProduct==3}">
		  						동등제품
		  					</c:when>
		  					<c:when test="${firstForm.divisionOfProduct==4}">
		  						해당없음
		  					</c:when>
		  				</c:choose>
		  			</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 상세내용</td></tr>
		  		<tr><td class="first_th" width="160px" >[제품명]</td><td class="first_td" >${forms.kor_name}, ${forms.code}</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px">[상품명]</td>
		  			<td class="first_td">${firstForm.nameOfProduct}</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[업소명 표기 여부]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.checkForBrandName==1}">
		  						예
		  					</c:when>
		  					<c:otherwise>
		  						아니요
		  					</c:otherwise>
		  				</c:choose>
		  			</td>
	  			</tr>
		  		<tr><td class="first_th" width="160px" >[품목명]</td><td class="first_td" >${forms.kor_name}</td></tr>
		  		<tr><td class="first_th" width="160px" >[품목분류번호]</td><td class="first_td" >${forms.code}</td></tr>
		  		<tr><td class="first_th" width="160px" >[등급]</td><td class="first_td" >${forms.p_class}</td></tr>
		  	</table>
	  		<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 사용목적</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[사용목적]</td>
		  			<td class="first_td" >${firstForm.purpose}</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="170px">[성능]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.performance_text==''||firstForm.performance_text==null}">
	  						<td class="first_td">
					  				별첨
			  				</td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				${firstForm.performance_text}
			  				</td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 신청항목</td></tr>
		  		<tr><td class="first_th" width="160px" >[원재료]</td><td class="first_td" >별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[제조방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[사용방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[사용 시 주의사항]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[저장방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[사용기한]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[시험규격]</td><td class="first_td">별첨</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px">[허가조건]</td>
		  			<td class="first_td">${firstForm.permission}</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 제조원</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[제조의뢰자]</td>
		  			<td class="first_td" >
		  				${firstForm.requestName}
		  				(${firstForm.country1},${firstForm.requestPlace})
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[제조자]</td>
		  			<td class="first_td" >
		  				${firstForm.makingName}
		  				(${firstForm.country2},${firstForm.makingPlace})
		  			</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 비고</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[일회용의료기기 여부]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.disposableness==1}">
		  						예
		  					</c:when>
		  					<c:otherwise>
		  						아니요
		  					</c:otherwise>
		  				</c:choose>
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[추적관리대상의료기기]</td>
		  			<td class="first_td">
		  				<c:choose>
		  					<c:when test="${firstForm.chase==1}">
		  						예
		  					</c:when>
		  					<c:otherwise>
		  						아니요
		  					</c:otherwise>
		  				</c:choose>
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[비고(신청근거)]</td>
		  			<td class="first_td">${firstForm.etc}</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" >▶ 조합의료기기</td></tr>
		  		<tr>
		  			<td class="first_td" style="height:30px;">
		  				<c:choose>
		  					<c:when test="${forms.mix=='2'}">
		  						해당없음
		  					</c:when>
		  					<c:otherwise>
		  						${firstForm.etc}
		  					</c:otherwise>
		  				</c:choose>
		  			</td>
	  			</tr>
		  	</table><br>
		    <c:choose>
		    	<c:when test="${firstForm.model!=null}">
		    		${firstForm.model}
		    	</c:when>
		    	<c:otherwise>
		    		▶ 모델명
			    	<c:choose>
			    		<c:when test="${firstForm.modelFileName!=null}">
			    			<table class="first_form">
					    		<tr>
									<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="100"><p>&nbsp;[일렬번호]</p></td>
									<td style="border:1px solid black; background-color:#DDDDDE;" width="430"><p>&nbsp;[모델명]</p></td>
									<td style="border:1px solid black; background-color:#DDDDDE;" width="110"><p>&nbsp;[수출용여부]</p></td>
								</tr>
					    		${modelFileName}
			    			</table>
			    		</c:when>
			    		<c:otherwise>
			    			<table class="first_form">
					    		<tbody>
									<tr>
										<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="100"><p>&nbsp;[일렬번호]</p></td>
										<td style="border:1px solid black; background-color:#DDDDDE;" width="430"><p>&nbsp;[모델명]</p></td>
										<td style="border:1px solid black; background-color:#DDDDDE;" width="110"><p>&nbsp;[수출용여부]</p></td>
									</tr>
									<tr>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black;" ><p>&nbsp;</p></td>
									</tr>
									<tr>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black;" ><p>&nbsp;</p></td>
									</tr>
								</tbody>
							</table>
			    		</c:otherwise>
			    	</c:choose><br>
					▶ 포장단위
					<c:choose>
						<c:when test="${firstForm.pakingFileNmae!=null}">
							<table class="first_form">
					    		<tr>
					    			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="100"><p>&nbsp;[일렬번호]</p></td>
									<td style="border:1px solid black; background-color:#DDDDDE;" width="430"><p>&nbsp;[포장단위]</p></td>
									<td style="border:1px solid black; background-color:#DDDDDE;" width="110"><p>&nbsp;[수출용여부]</p></td>
								</tr>
					    		${pakingFileNmae}
			    			</table>
						</c:when>
						<c:otherwise>
							<table class="first_form">
								<tbody>
									<tr>
										<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;"  width="100"><p>&nbsp;[일렬번호]</p></td>
										<td style="border:1px solid black; background-color:#DDDDDE;" width="540"><p>&nbsp;[포장단위]</p></td>
									</tr>
									<tr>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
									</tr>
									<tr>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
									</tr>
								</tbody>
							</table>
						</c:otherwise>
					</c:choose>
		    	</c:otherwise>
		    </c:choose>
		    <table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 모양 및 구조</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[작용원리]</td>
		  				<c:choose>
		  					<c:when test="${firstForm.logic_text==''||firstForm.logic_text==null}">
		  						<td class="first_td">
						  				별첨
				  				</td>
	  						</c:when>
		  					<c:otherwise>
		  						<td class="first_td">
			  						${firstForm.logic_text}
		  						</td>
	  						</c:otherwise>
		  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[외형]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.shape_text==''||firstForm.shape_text==null}">
	  						<td class="first_td">
					  				별첨
			  				</td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				${firstForm.shape_text}
			  				</td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[치수]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.size_text==''||firstForm.size_text==null}">
	  						<td class="first_td">
					  				별첨
			  				</td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				${firstForm.size_text}
			  				</td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[특성]</td>
		  			<td class="first_td" >별첨</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 담당자</td></tr>
		  		<tr><td class="first_th" width="160px" >[성명]</td><td class="first_td">${memberInfo.kor_name}</td></tr>
		  		<tr><td class="first_th" width="160px">[전화번호]</td><td class="first_td">${memberInfo.phone1}-${memberInfo.phone2}-${memberInfo.phone3}</td></tr>
		  		<tr><td class="first_th" width="160px">[이메일]</td><td class="first_td">${memberInfo.email1}@${memberInfo.email2}</td></tr>
		  		<tr><td class="first_th" width="160px">[휴대폰]</td><td class="first_td">${memberInfo.cell_phone1}-${memberInfo.cell_phone2}-${memberInfo.cell_phone3}</td></tr>
		  	</table><br>
		  </div>
<%}else if(request.getParameter("num").equals("2")){%>
<c:if test="${forms.contents2==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="2.원재료" id="title" name="title">
${forms.contents2}
<%}else if(request.getParameter("num").equals("3")){%>
<c:if test="${forms.contents3==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="3.제조방법" id="title" name="title">
${forms.contents3}
<%}else if(request.getParameter("num").equals("4")){%>
<c:if test="${forms.contents4==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="4.사용방법" id="title" name="title">
${forms.contents4}
<%}else if(request.getParameter("num").equals("5")){%>
<c:if test="${forms.contents5==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="5.사용시주의사항" id="title" name="title">
${forms.contents5}
<%}else if(request.getParameter("num").equals("6")){%>
<c:if test="${forms.contents6==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="6.저장방법" id="title" name="title">
${forms.contents6}
<%}else if(request.getParameter("num").equals("7")){%>
<c:if test="${forms.contents7==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="7.사용기한" id="title" name="title">
${forms.contents7}
<%}else if(request.getParameter("num").equals("8")){%>
<c:if test="${forms.contents8==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="8.시험규격" id="title" name="title">
${forms.contents8}
<%}else if(request.getParameter("num").equals("9")){%>
<c:if test="${forms.contents9==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="9.모양 및 구조_특성" id="title" name="title">
${forms.contents9}
<%}else if(request.getParameter("num").equals("10")){%>
<c:if test="${forms.contents10==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="10.모양 및 구조_작용원리" id="title" name="title">
${forms.contents10}
<%}else if(request.getParameter("num").equals("11")){%>
<c:if test="${forms.contents11==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="11.모양 및 구조_외형" id="title" name="title">
${forms.contents11}
<%}else if(request.getParameter("num").equals("12")){%>
<c:if test="${forms.contents12==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="12.모양 및 구조_치수" id="title" name="title">
${forms.contents12}
<%}else if(request.getParameter("num").equals("13")){%>
<c:if test="${forms.contents13==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="13.성능" id="title" name="title">
${forms.contents13}
<%}else if(request.getParameter("num").equals("14")){%>
<c:if test="${forms.contents14==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="14.기타" id="title" name="title">
${forms.contents14}
<%}else if(request.getParameter("num").equals("15")){%>
<c:if test="${forms.contents15==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="15.목차" id="title" name="title">
${forms.contents15}
<%}else if(request.getParameter("num").equals("16")){%>
<c:if test="${forms.contents16==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="16.기기설명" id="title" name="title">
${forms.contents16}
<%}else if(request.getParameter("num").equals("17")){%>
<c:if test="${forms.contents17==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="17.제품사양" id="title" name="title">
${forms.contents17}
<%}else if(request.getParameter("num").equals("18")){%>
<c:if test="${forms.contents18==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="18.유사기기 및 기 허가된 제품에 대한 자료" id="title" name="title">
${forms.contents18}
<%}else if(request.getParameter("num").equals("19")){%>
<c:if test="${forms.contents19==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="19.표시기재안" id="title" name="title">
${forms.contents19}
<%}else if(request.getParameter("num").equals("20")){%>
<c:if test="${forms.contents20==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="20.기기설계 계요" id="title" name="title">
${forms.contents20}
<%}else if(request.getParameter("num").equals("21")){%>
<c:if test="${forms.contents21==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="21.제조공정 요약" id="title" name="title">
${forms.contents21}
<%}else if(request.getParameter("num").equals("22")){%>
<c:if test="${forms.contents22==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="22.설계 및 제조장소 요약" id="title" name="title">
${forms.contents22}
<%}else if(request.getParameter("num").equals("23")){%>
<c:if test="${forms.contents23==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="23.필수원칙 체크리스트" id="title" name="title">
${forms.contents23}
<%}else if(request.getParameter("num").equals("24")){%>
<c:if test="${forms.contents24==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="24.위험분석과 관리요약" id="title" name="title">
${forms.contents24}
<%}else if(request.getParameter("num").equals("25")){%>
<c:if test="${forms.contents25==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="25.규격에 대한 적합선언" id="title" name="title">
${forms.contents25}
<%}else if(request.getParameter("num").equals("26")){%>
<c:if test="${forms.contents26==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="26.기기설계의 유효성 확인 개요" id="title" name="title">
${forms.contents26}
<%}else if(request.getParameter("num").equals("27")){%>
<c:if test="${forms.contents27==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="27.전기 및 기계적 안전성 시험 요약" id="title" name="title">
${forms.contents27}
<%}else if(request.getParameter("num").equals("28")){%>
<c:if test="${forms.contents28==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="28.생물학적 안전성 시험 요약" id="title" name="title">
${forms.contents28}
<%}else if(request.getParameter("num").equals("29")){%>
<c:if test="${forms.contents29==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="29.방사선에 관한 안전성 시험 요약" id="title" name="title">
${forms.contents29}
<%}else if(request.getParameter("num").equals("30")){%>
<c:if test="${forms.contents30==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="30.전자파 안전성 시험 요약" id="title" name="title">
${forms.contents30}
<%}else if(request.getParameter("num").equals("31")){%>
<c:if test="${forms.contents31==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="31.성능에 관한 자료 요약" id="title" name="title">
${forms.contents31}
<%}else if(request.getParameter("num").equals("32")){%>
<c:if test="${forms.contents32==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="32.소프트웨어 검증 및 유효성 확인자료 요약" id="title" name="title">
${forms.contents32}
<%}else if(request.getParameter("num").equals("33")){%>
<c:if test="${forms.contents33==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="33.물리 및 화학적 특성 자료 요약" id="title" name="title">
${forms.contents33}
<%}else if(request.getParameter("num").equals("34")){%>
<c:if test="${forms.contents34==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="34.동물 유래 물질에 대한 안전성 자료 요약" id="title" name="title">
${forms.contents34}
<%}else if(request.getParameter("num").equals("35")){%>
<c:if test="${forms.contents35==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="35.안전성 시험 요약" id="title" name="title">
${forms.contents35}
<%}else if(request.getParameter("num").equals("36")){%>
<c:if test="${forms.contents36==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="36.복합 및 조합된 의약품에 대한 정보 요약" id="title" name="title">
${forms.contents36}
<%}else if(request.getParameter("num").equals("37")){%>
<c:if test="${forms.contents37==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="37.동물시험 자료 요약" id="title" name="title">
${forms.contents37}
<%}else if(request.getParameter("num").equals("38")){%>
<c:if test="${forms.contents38==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="38.임상시험 자료 요약" id="title" name="title">
${forms.contents38}
<%}else if(request.getParameter("num").equals("39")){%>
<c:if test="${forms.contents39==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="39.목차" id="title" name="title">
${forms.contents39}
<%}else if(request.getParameter("num").equals("40")){%>
<c:if test="${forms.contents40==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="40.제조공정에 관한 자료" id="title" name="title">
${forms.contents40}
<%}else if(request.getParameter("num").equals("41")){%>
<c:if test="${forms.contents41==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="41.위험분석 보고서" id="title" name="title">
${forms.contents41}
<%}else if(request.getParameter("num").equals("42")){%>
<c:if test="${forms.contents42==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="42.제품검증 및 유효성 확인 자료" id="title" name="title">
${forms.contents42}
<%}else if(request.getParameter("num").equals("43")){%>
<c:if test="${forms.contents43==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="43.참고문헌" id="title" name="title">
${forms.contents43}
<%}else if(request.getParameter("num").equals("44")){%>
<input type="hidden" value="44.All" id="title" name="title">
<div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="1" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=1&contents_name=<%=request.getParameter("contents_name")%>" name="p_url" id="p_url">
		  	<input type="hidden" value="ck_form1" name="ck_form">
		  	<p><b><span style="font-size: 12pt;">ㅣ 의료기기 기술문서 등 심사의뢰서</span></b></p><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="4">▶ 의뢰인</td></tr>
		  		<tr>
		  			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;"  width="160px">[성명(대표자)]</td>
		  			<td style="border:1px solid black; "  width="160px">${memberInfo.kor_name}</td>
		  			<td style="border:1px solid black; background-color:#DDDDDE;" width="160px">[생년월일]</td>
		  			<td style="border:1px solid black; ">${firstForm.birthDay}</td>
	  			</tr>
		  		<tr><td style="border:1px solid black; padding:5px; background-color:#DDDDDE;">[주소]</td><td class="first_td" colspan="3">${memberInfo.address}</td></tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="4">▶ 제조(수입)업소</td></tr>
		  		<tr>
		  			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="160px" >[명칭(상호)]</td>
		  			<td style="border:1px solid black; " colspan="3">${firstForm.makeCompanyName}</td>
	  			</tr>
		  		<tr>
		  			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="160px">[주소]</td>
		  			<td style="border:1px solid black; " colspan="3">${firstForm.makeAddr}</td>
	  			</tr>
		  		<tr>
		  			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="160px" >[사업자등록번호]</td>
		  			<td style="border:1px solid black; " width="160px">${firstForm.makeCompanyNo}</td>
		  			<td style="border:1px solid black; background-color:#DDDDDE;" width="160px">[입허가번호]</td>
		  			<td style="border:1px solid black; " width="160px">${firstForm.makeLicenseNo}</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 심사의뢰의 구분</td></tr>
		  		<tr><td class="first_th" width="160px" >[심사의 종류]</td><td class="first_td" >기술문서 심사</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px">[제조/수입 구분]</td>
		  			<td class="first_td">
		  			<c:choose>
		  				<c:when test="${firstForm.makingOrImport==1}">
		  					제조
		  				</c:when>
		  				<c:otherwise>
		  					수입
		  				</c:otherwise>
		  			</c:choose>
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[제품의 구분]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.divisionOfProduct==1}">
		  						새로운제품
		  					</c:when>
		  					<c:when test="${firstForm.divisionOfProduct==2}">
		  						개량제품
		  					</c:when>
		  					<c:when test="${firstForm.divisionOfProduct==3}">
		  						동등제품
		  					</c:when>
		  					<c:when test="${firstForm.divisionOfProduct==4}">
		  						해당없음
		  					</c:when>
		  				</c:choose>
		  			</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 상세내용</td></tr>
		  		<tr><td class="first_th" width="160px" >[제품명]</td><td class="first_td" >${forms.kor_name}, ${forms.code}</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px">[상품명]</td>
		  			<td class="first_td">${firstForm.nameOfProduct}</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[업소명 표기 여부]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.checkForBrandName==1}">
		  						예
		  					</c:when>
		  					<c:otherwise>
		  						아니요
		  					</c:otherwise>
		  				</c:choose>
		  			</td>
	  			</tr>
		  		<tr><td class="first_th" width="160px" >[품목명]</td><td class="first_td" >${forms.kor_name}</td></tr>
		  		<tr><td class="first_th" width="160px" >[품목분류번호]</td><td class="first_td" >${forms.code}</td></tr>
		  		<tr><td class="first_th" width="160px" >[등급]</td><td class="first_td" >${forms.p_class}</td></tr>
		  	</table>
	  		<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 사용목적</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[사용목적]</td>
		  			<td class="first_td" >${firstForm.purpose}</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="170px">[성능]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.performance_text==''||firstForm.performance_text==null}">
	  						<td class="first_td">
					  				별첨
			  				</td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				${firstForm.performance_text}
			  				</td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 신청항목</td></tr>
		  		<tr><td class="first_th" width="160px" >[원재료]</td><td class="first_td" >별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[제조방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[사용방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[사용 시 주의사항]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[저장방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[사용기한]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th" width="160px">[시험규격]</td><td class="first_td">별첨</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px">[허가조건]</td>
		  			<td class="first_td">${firstForm.permission}</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 제조원</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[제조의뢰자]</td>
		  			<td class="first_td" >
		  				${firstForm.requestName}
		  				(${firstForm.country1},${firstForm.requestPlace})
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[제조자]</td>
		  			<td class="first_td" >
		  				${firstForm.makingName}
		  				(${firstForm.country2},${firstForm.makingPlace})
		  			</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 비고</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[일회용의료기기 여부]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.disposableness==1}">
		  						예
		  					</c:when>
		  					<c:otherwise>
		  						아니요
		  					</c:otherwise>
		  				</c:choose>
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[추적관리대상의료기기]</td>
		  			<td class="first_td">
		  				<c:choose>
		  					<c:when test="${firstForm.chase==1}">
		  						예
		  					</c:when>
		  					<c:otherwise>
		  						아니요
		  					</c:otherwise>
		  				</c:choose>
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[비고(신청근거)]</td>
		  			<td class="first_td">${firstForm.etc}</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" >▶ 조합의료기기</td></tr>
		  		<tr>
		  			<td class="first_td" style="height:30px;">${firstForm.etc}</td>
	  			</tr>
		  	</table><br>
		    <c:choose>
		    	<c:when test="${firstForm.model!=null}">
		    		${firstForm.model}
		    	</c:when>
		    	<c:otherwise>
		    		▶ 모델명
			    	<c:choose>
			    		<c:when test="${firstForm.modelFileName!=null}">
			    			<table class="first_form">
					    		<tr>
									<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="100"><p>&nbsp;[일렬번호]</p></td>
									<td style="border:1px solid black; background-color:#DDDDDE;" width="430"><p>&nbsp;[모델명]</p></td>
									<td style="border:1px solid black; background-color:#DDDDDE;" width="110"><p>&nbsp;[수출용여부]</p></td>
								</tr>
					    		${modelFileName}
			    			</table>
			    		</c:when>
			    		<c:otherwise>
			    			<table class="first_form">
					    		<tbody>
									<tr>
										<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="100"><p>&nbsp;[일렬번호]</p></td>
										<td style="border:1px solid black; background-color:#DDDDDE;" width="430"><p>&nbsp;[모델명]</p></td>
										<td style="border:1px solid black; background-color:#DDDDDE;" width="110"><p>&nbsp;[수출용여부]</p></td>
									</tr>
									<tr>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black;" ><p>&nbsp;</p></td>
									</tr>
									<tr>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black;" ><p>&nbsp;</p></td>
									</tr>
								</tbody>
							</table>
			    		</c:otherwise>
			    	</c:choose><br>
					▶ 포장단위
					<c:choose>
						<c:when test="${firstForm.pakingFileNmae!=null}">
							<table class="first_form">
					    		<tr>
					    			<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;" width="100"><p>&nbsp;[일렬번호]</p></td>
									<td style="border:1px solid black; background-color:#DDDDDE;" width="430"><p>&nbsp;[포장단위]</p></td>
									<td style="border:1px solid black; background-color:#DDDDDE;" width="110"><p>&nbsp;[수출용여부]</p></td>
								</tr>
					    		${pakingFileNmae}
			    			</table>
						</c:when>
						<c:otherwise>
							<table class="first_form">
								<tbody>
									<tr>
										<td style="border:1px solid black; padding:5px; background-color:#DDDDDE;"  width="100"><p>&nbsp;[일렬번호]</p></td>
										<td style="border:1px solid black; background-color:#DDDDDE;" width="540"><p>&nbsp;[포장단위]</p></td>
									</tr>
									<tr>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
									</tr>
									<tr>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
										<td style="border:1px solid black; padding:5px;" ><p>&nbsp;</p></td>
									</tr>
								</tbody>
							</table>
						</c:otherwise>
					</c:choose>
		    	</c:otherwise>
		    </c:choose>
		    <table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 모양 및 구조</td></tr>
		  		<tr>
		  			<td class="first_th" width="160px" >[작용원리]</td>
		  				<c:choose>
		  					<c:when test="${firstForm.logic_text==''||firstForm.logic_text==null}">
		  						<td class="first_td">
						  				별첨
				  				</td>
	  						</c:when>
		  					<c:otherwise>
		  						<td class="first_td">
			  						${firstForm.logic_text}
		  						</td>
	  						</c:otherwise>
		  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[외형]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.shape_text==''||firstForm.shape_text==null}">
	  						<td class="first_td">
					  				별첨
			  				</td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				${firstForm.shape_text}
			  				</td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[치수]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.size_text==''||firstForm.size_text==null}">
	  						<td class="first_td">
					  				별첨
			  				</td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				${firstForm.size_text}
			  				</td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th" width="160px">[특성]</td>
		  			<td class="first_td" >별첨</td>
	  			</tr>
		  	</table>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2">▶ 담당자</td></tr>
		  		<tr><td class="first_th" width="160px" >[성명]</td><td class="first_td">${memberInfo.kor_name}</td></tr>
		  		<tr><td class="first_th" width="160px">[전화번호]</td><td class="first_td">${memberInfo.phone1}-${memberInfo.phone2}-${memberInfo.phone3}</td></tr>
		  		<tr><td class="first_th" width="160px">[이메일]</td><td class="first_td">${memberInfo.email1}@${memberInfo.email2}</td></tr>
		  		<tr><td class="first_th" width="160px">[휴대폰]</td><td class="first_td">${memberInfo.cell_phone1}-${memberInfo.cell_phone2}-${memberInfo.cell_phone3}</td></tr>
		  	</table><br>
		  </div><hr>
${forms.contents2}<hr>
${forms.contents3}<hr>
${forms.contents4}<hr>
${forms.contents5}<hr>
${forms.contents6}<hr>
${forms.contents7}<hr>
${forms.contents8}<hr>
${forms.contents9}<hr>
${forms.contents10}<hr>
${forms.contents11}<hr>
${forms.contents12}<hr>
${forms.contents13}<hr>
${forms.contents14}<hr>
${forms.contents15}<hr>
${forms.contents16}<hr>
${forms.contents17}<hr>
${forms.contents18}<hr>
${forms.contents19}<hr>
${forms.contents20}<hr>
${forms.contents21}<hr>
${forms.contents22}<hr>
${forms.contents23}<hr>
${forms.contents24}<hr>
${forms.contents25}<hr>
${forms.contents26}<hr>
${forms.contents27}<hr>
${forms.contents28}<hr>
${forms.contents29}<hr>
${forms.contents30}<hr>
${forms.contents31}<hr>
${forms.contents32}<hr>
${forms.contents33}<hr>
${forms.contents34}<hr>
${forms.contents35}<hr>
${forms.contents36}<hr>
${forms.contents37}<hr>
${forms.contents38}<hr>
${forms.contents39}<hr>
${forms.contents40}<hr>
${forms.contents41}<hr>
${forms.contents42}<hr>
${forms.contents43}<hr>
<%}else{%>
${forms.contents1}
<%}%>