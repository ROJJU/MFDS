<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:900px; margin:0 auto; text-align:left; border:1px solid black; padding:30px;">
	<form id="boardWriteForm" method="post" name="firstForm" enctype="multipart/form-data">
		  <div class="contentDiv">
		  	<input type="hidden" value="<%=request.getParameter("forms_seq")%>" name="forms_seq" id="forms_seq">
		  	<input type="hidden" value="<%=request.getParameter("list_seq")%>" name="list_seq">
		  	<input type="hidden" value="1" name="contents_name">
		  	<input type="hidden" value="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=1&contents_name=<%=request.getParameter("contents_name")%>" name="p_url" id="p_url">
		  	<input type="hidden" value="ck_form1" name="ck_form" id="ck_form">
		  	<p><b><span style="font-size: 12pt;">ㅣ 의료기기 기술문서 등 심사의뢰서</span></b></p><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="4" bgcolor="#EAEAEA">▶ 의뢰인</td></tr>
		  		<tr>
		  			<td class="first_th" >[성명(대표자)]</td>
		  			<td class="first_td" width="300px">${memberInfo.kor_name}</td>
		  			<td class="first_th">[생년월일]</td>
		  			<td class="first_td"><input type="date" placeholder="YYYY-MM-DD" style="width:99%;" name="birthDay" value="${firstForm.birthDay}"></td>
	  			</tr>
		  		<tr><td class="first_th">[주소]</td><td class="first_td" colspan="3">${memberInfo.address}</td></tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="4" bgcolor="#EAEAEA">▶ 제조(수입)업소</td></tr>
		  		<tr>
		  			<td class="first_th" >[명칭(상호)]</td>
		  			<td class="first_td" width="300px" colspan="3"><input type="text" placeholder="업소명칭(상호)" style="width:99%;" name="makeCompanyName" value="${firstForm.makeCompanyName}"></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[주소]</td>
		  			<td class="first_td" colspan="3"><input type="text" placeholder="(우편번호)제조소의 소재지" style="width:99%;" onclick="getPost('3')" id="makeAddr" name="makeAddr" value="${firstForm.makeAddr}" readonly></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" >[사업자등록번호]</td>
		  			<td class="first_td" width="300px"><input type="text" placeholder="사업자등록번호" style="width:99%;" name="makeCompanyNo" value="${firstForm.makeCompanyNo}"></td>
		  			<td class="first_th">[입허가번호]</td>
		  			<td class="first_td"><input type="text" placeholder="입허가번호" style="width:98%;" name="makeLicenseNo" value="${firstForm.makeLicenseNo}"></td></tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2" bgcolor="#EAEAEA">▶ 심사의뢰의 구분</td></tr>
		  		<tr><td class="first_th" >[심사의 종류]</td><td class="first_td" >기술문서 심사</td></tr>
		  		<tr>
		  			<td class="first_th">[제조/수입 구분]</td>
		  			<td class="first_td">
		  			<c:choose>
		  				<c:when test="${firstForm.makingOrImport==1}">
		  					<input type="radio" name="makingOrImport" value="1" checked>
		  				</c:when>
		  				<c:otherwise>
		  					<input type="radio" name="makingOrImport" value="1">
		  				</c:otherwise>
		  			</c:choose>
		  				&nbsp; 제조
		  			<c:choose>
		  				<c:when test="${firstForm.makingOrImport==2}">
		  					<input type="radio" name="makingOrImport" value="2" checked>
		  				</c:when>
		  				<c:otherwise>
		  					<input type="radio" name="makingOrImport" value="2">
		  				</c:otherwise>
		  			</c:choose>	
		  				&nbsp; 수입
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" >[제품의 구분]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.divisionOfProduct==1}">
		  						<input type="radio" name="divisionOfProduct" value="1" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="divisionOfProduct" value="1">
		  					</c:otherwise>
		  				</c:choose>
		  				&nbsp; 새로운제품
		  				<c:choose>
		  					<c:when test="${firstForm.divisionOfProduct==2}">
		  						<input type="radio" name="divisionOfProduct" value="2" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="divisionOfProduct" value="2">
		  					</c:otherwise>
		  				</c:choose>
		  				&nbsp; 개량제품
		  				<c:choose>
		  					<c:when test="${firstForm.divisionOfProduct==3}">
		  						<input type="radio" name="divisionOfProduct" value="3" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="divisionOfProduct" value="3">
		  					</c:otherwise>		  					
		  				</c:choose>
		  				&nbsp; 동등제품
		  				<c:choose>
		  					<c:when test="${firstForm.divisionOfProduct==4}">
		  						<input type="radio" name="divisionOfProduct" value="4" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="divisionOfProduct" value="4">
		  					</c:otherwise>		  					
		  				</c:choose>
		  				&nbsp; 해당없음
		  				&nbsp; <font color="red">(3,4등급은 해당없음을 선택)</font>
		  			</td>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2" bgcolor="#EAEAEA">▶ 상세내용</td></tr>
		  		<tr><td class="first_th" >[제품명]</td><td class="first_td" >${forms.kor_name}, ${forms.code}</td></tr>
		  		<tr>
		  			<td class="first_th">[상품명]</td>
		  			<td class="first_td"><input type="text" placeholder="상품명(2개 이상 입력 시, 콤마로 분리하여 입력)" style="width:98%;" name="nameOfProduct" value="${firstForm.nameOfProduct}"></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th" >[업소명 표기 여부]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.checkForBrandName==1}">
		  						<input type="radio" name="checkForBrandName" value="1" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="checkForBrandName" value="1">
		  					</c:otherwise>
		  				</c:choose>
		  				&nbsp; 예
		  				<c:choose>
		  					<c:when test="${firstForm.checkForBrandName==2}">
		  						<input type="radio" name="checkForBrandName" value="2" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="checkForBrandName" value="2">
		  					</c:otherwise>
		  				</c:choose>&nbsp; 아니요<br>
		  				<font color="red">(제품명에 업소명을 출력할 경우 선택해 주세요. 상품명 입력을 안했을 경우 '업소명 표기 여부'가 표기로 전환됩니다.)</font>
		  			</td>
	  			</tr>
		  		<tr><td class="first_th" >[품목명]</td><td class="first_td" >${forms.kor_name}</td></tr>
		  		<tr><td class="first_th" >[품목분류번호]</td><td class="first_td" >${forms.code}</td></tr>
		  		<tr><td class="first_th" >[등급]</td><td class="first_td" >${forms.p_class}</td></tr>
		  	</table><br>
	  		<table class="first_form">
		  		<tr><td class="first_title" colspan="3" bgcolor="#EAEAEA">▶ 사용목적</td></tr>
		  		<tr>
		  			<td class="first_th" >[사용목적]</td>
		  			<td class="first_td" colspan="2"><input type="text" style="width:98%;" placeholder="사용목적" name="purpose" value="${firstForm.purpose}"></td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[성능]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.performance_text==''||firstForm.performance_text==null}">
	  						<td class="first_td">
				  				<div id="performance_tool">
					  				별첨
					  				<input type="button" value="직접입력" onclick="performance_function1()" >
				  				</div>
				  				<textarea style="width:98%; display:none;" id="performance_text" placeholder="성능" name="performance_text">${firstForm.performance_text}</textarea>
			  				</td>
			  				<td align="center"><a class="change" style="display:none;" id="change4" onclick="performance_function2()">x</a></td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				<div id="performance_tool" style="display:none;">
					  				별첨
					  				<input type="button" value="직접입력" onclick="performance_function1()" >
				  				</div>
				  				<textarea style="width:98%; " id="performance_text" placeholder="성능" name="performance_text">${firstForm.performance_text}</textarea>
			  				</td>
			  				<td align="center"><a class="change"  id="change4" onclick="performance_function2()">x</a></td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2" bgcolor="#EAEAEA">▶ 신청항목</td></tr>
		  		<tr><td class="first_th" >[원재료]</td><td class="first_td" >별첨</td></tr>
		  		<tr><td class="first_th">[제조방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[사용방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[사용 시 주의사항]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[저장방법]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[사용기한]</td><td class="first_td">별첨</td></tr>
		  		<tr><td class="first_th">[시험규격]</td><td class="first_td">별첨</td></tr>
		  		<tr>
		  			<td class="first_th">[허가조건]</td>
		  			<td class="first_td"><input type="text" style="width:98%;" placeholder="허가조건" name="permission" value="${firstForm.permission}"></td>
	  			</tr>
		  	</table><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2" bgcolor="#EAEAEA">▶ 제조원</td></tr>
		  		<tr>
		  			<td class="first_th" >[제조의뢰자]</td>
		  			<td class="first_td" >
		  				<input type="text" placeholder="명칭(직접입력)" name="requestName" value="${firstForm.requestName}">
		  				(<input type="text" placeholder="제조국(선택입력)" readonly onclick="popup_country('1')" name="country1" id="country1" value="${firstForm.country1}">,
		  				<input type="text" placeholder="소재지(직접입력)" name="requestPlace" value="${firstForm.requestPlace}">)
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[제조자]</td>
		  			<td class="first_td" >
		  				<input type="text" placeholder="명칭(직접입력)" name="makingName" value="${firstForm.makingName}">
		  				(<input type="text" placeholder="제조국(선택입력)" readonly onclick="popup_country('2')" name="country2" id="country2" value="${firstForm.country2}">,
		  				<input type="text" placeholder="소재지(직접입력)" name="makingPlace" value="${firstForm.makingPlace}">)
		  			</td>
	  			</tr>
		  	</table>
			  	<ul style="color:red;">
			  		<li>제조자 항목은 제조의뢰자와 제조자가 동일할 경우 기재하고, 제조의뢰자와 제조자가 다를 경우에는 제조자 항목에 제품이 실제 조립되거나 생산되는 곳을 기재하고, 제조의뢰자에 법적제조책임자를 기재.</li>
			  	</ul>
		  	<br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2" bgcolor="#EAEAEA">▶ 비고</td></tr>
		  		<tr>
		  			<td class="first_th" >[일회용의료기기 여부]</td>
		  			<td class="first_td" >
		  				<c:choose>
		  					<c:when test="${firstForm.disposableness==1}">
		  						<input type="radio" name="disposableness" value="1" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="disposableness" value="1">
		  					</c:otherwise>
		  				</c:choose>
		  				&nbsp; 예
		  				<c:choose>
		  					<c:when test="${firstForm.disposableness==2}">
		  						<input type="radio" name="disposableness" value="2" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="disposableness" value="2">
		  					</c:otherwise>
		  				</c:choose>
		  				&nbsp; 아니요
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[추적관리대상의료기기]</td>
		  			<td class="first_td">
		  				<c:choose>
		  					<c:when test="${firstForm.chase==1}">
		  						<input type="radio" name="chase" value="1" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="chase" value="1">
		  					</c:otherwise>
		  				</c:choose>
		  				&nbsp; 예
		  				<c:choose>
		  					<c:when test="${firstForm.chase==2}">
		  						<input type="radio" name="chase" value="2" checked>
		  					</c:when>
		  					<c:otherwise>
		  						<input type="radio" name="chase" value="2">
		  					</c:otherwise>
		  				</c:choose>
		  				&nbsp; 아니요
		  			</td>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[비고(신청근거)]</td>
		  			<td class="first_td"><input type="text" style="width:98%;" placeholder="비고(신청근거)" name="etc" value="${firstForm.etc}"></td>
	  			</tr>
		  	</table><br>
		  	<c:if test="${forms.mix=='1'}">
		  		<table class="first_form">
			  		<tr><td class="first_title" bgcolor="#EAEAEA">▶ 조합의료기기</td></tr>
			  		<tr>
			  			<td class="first_td" style="height:30px;"><input type="text" style="width:98%;" placeholder="품목명, 분류번호, 등급" name="mix" value="${firstForm.etc}"></td>
		  			</tr>
			  	</table><br>
		  	</c:if>
		  	<table class="first_form">
		  		<tr><td class="first_title" bgcolor="#EAEAEA">▶ 모델명/포장단위</td></tr>
		  	</table>
		  	<table class="first_form">
		  		<tr>
		  			<td class="file_td">모델명 추가 :</td>
		  			<td class="file_td"><input type="file" name="modelFileName" value="${firstForm.modelFileName}"></td>
		  			<td class="file_td">
		  				${firstForm.modelFileName} |
		  				<input type="hidden" name="file1_old" value="${firstForm.modelFileName}">
	  				</td>
		  			<td rowspan="2" class="file_td">
		  				<input type="button" value="업로드" onclick="onWrite('<%=request.getParameter("list_seq")%>')">
		  				<font color="red">*.txt 파일만 첨부 가능합니다.</font><br>
		  				<c:choose>
		  					<c:when test="${firstForm.model==null}">
		  					<font color="blue">에디터 부분 수정 후 업로드를 한번 더 눌러주세요</font>
		  					</c:when>
		  					<c:otherwise>
		  					<font color="blue">완료 되었습니다.</font>
		  					</c:otherwise>
		  				</c:choose>
	  				</td>
		  		</tr>
		  		<tr>
		  			<td class="file_td">포장단위 :</td>
		  			<td class="file_td"><input type="file" name="pakingFileNmae" ></td>
		  			<td class="file_td">
		  				${firstForm.pakingFileNmae} |
		  				<input type="hidden" name="file2_old" value="${firstForm.pakingFileNmae}">
	  				</td>
		  		</tr>
		  	</table>
		    <textarea id="txtContent" style="width:100%; color:#ffffff;" name="model">
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
									<td style="border:1px solid #000000; background-color:#DDDDDE;" width="100"  border='1' border-color='black'><p>&nbsp;[일렬번호]</p></td>
									<td style="border:1px solid #000000; background-color:#DDDDDE;" width="430"  border='1' border-color='black'><p>&nbsp;[모델명]</p></td>
									<td style="border:1px solid #000000; background-color:#DDDDDE;" width="110"  border='1' border-color='black'><p>&nbsp;[수출용여부]</p></td>
								</tr>
					    		${modelFileName}
			    			</table>
			    		</c:when>
			    		<c:otherwise>
			    			<table class="first_form">
					    		<tbody>
									<tr>
										<td style="border:1px solid #000000; background-color:#DDDDDE;" width="100"  border='1' border-color='black'><p>&nbsp;[일렬번호]</p></td>
										<td style="border:1px solid #000000; background-color:#DDDDDE;" width="430"  border='1' border-color='black'><p>&nbsp;[모델명]</p></td>
										<td style="border:1px solid #000000; background-color:#DDDDDE;" width="110"  border='1' border-color='black'><p>&nbsp;[수출용여부]</p></td>
									</tr>
									<tr>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="100"  border='1' border-color='black'><p>&nbsp;</p></td>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="430"  border='1' border-color='black'><p>&nbsp;</p></td>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="110"  border='1' border-color='black'><p>&nbsp;</p></td>
									</tr>
									<tr>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="100"  border='1' border-color='black'><p>&nbsp;</p></td>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="430"  border='1' border-color='black'><p>&nbsp;</p></td>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="110"  border='1' border-color='black'><p>&nbsp;</p></td>
									</tr>
								</tbody>
							</table>
			    		</c:otherwise>
			    	</c:choose>
			    	<br>
					▶ 포장단위
					<c:choose>
						<c:when test="${firstForm.pakingFileNmae!=null}">
							<table class="first_form">
					    		<tr>
									<td style="border:1px solid #000000; background-color:#DDDDDE;" width="100"  border='1' border-color='black'><p>&nbsp;[일렬번호]</p></td>
									<td style="border:1px solid #000000; background-color:#DDDDDE;" width="430"  border='1' border-color='black'><p>&nbsp;[포장단위]</p></td>
									<td style="border:1px solid #000000; background-color:#DDDDDE;" width="110"  border='1' border-color='black'><p>&nbsp;[수출용여부]</p></td>
								</tr>
					    		${pakingFileNmae}
			    			</table>
						</c:when>
						<c:otherwise>
							<table class="first_form">
					    		<tbody>
									<tr>
										<td style="border:1px solid #000000; background-color:#DDDDDE;" width="100"  border='1' border-color='black'><p>&nbsp;[일렬번호]</p></td>
										<td style="border:1px solid #000000; background-color:#DDDDDE;" width="430"  border='1' border-color='black'><p>&nbsp;[포장단위]</p></td>
										<td style="border:1px solid #000000; background-color:#DDDDDE;" width="110"  border='1' border-color='black'><p>&nbsp;[수출용여부]</p></td>
									</tr>
									<tr>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="100"  border='1' border-color='black'><p>&nbsp;</p></td>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="430"  border='1' border-color='black'><p>&nbsp;</p></td>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="110"  border='1' border-color='black'><p>&nbsp;</p></td>
									</tr>
									<tr>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="100"  border='1' border-color='black'><p>&nbsp;</p></td>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="430"  border='1' border-color='black'><p>&nbsp;</p></td>
										<td style="border:1px solid #000000; background-color:#ffffff;" width="110"  border='1' border-color='black'><p>&nbsp;</p></td>
									</tr>
								</tbody>
							</table>
						</c:otherwise>
					</c:choose>
		    	</c:otherwise>
		    </c:choose>
		    </textarea>
		    <ul style="color:red;">
		  		<li>상단 에디터 내의 양식은 모델명, 포장단위 추가를 위한 툴이며 최종 저장시 기본 양식으로 변경 됩니다.</li>
		  		<li>외부 파일 첨부시 txt 파일외의 다른 파일을 넣을 경우 오류가 날 수 있습니다.</li>
		  	</ul><br>
		    <table class="first_form">
		  		<tr><td class="first_title" colspan="3" bgcolor="#EAEAEA">▶ 모양 및 구조</td></tr>
		  		<tr>
		  			<td class="first_th" >[작용원리]</td>
		  				<c:choose>
		  					<c:when test="${firstForm.logic_text==''||firstForm.logic_text==null}">
		  						<td class="first_td">
			  						<div id="logic_tool">
						  				별첨
						  				<input type="button" value="직접입력" onclick="logic_function1()">
					  				</div>
					  				<textarea style="width:98%; display:none;" id="logic_text" placeholder="작용원리" name="logic_text">${firstForm.logic_text}</textarea>
				  				</td>
				  				<td align="center"><a class="change" style="display:none;" id="change1" onclick="logic_function2()">x</a></td>
	  						</c:when>
		  					<c:otherwise>
		  						<td class="first_td">
			  						<div id="logic_tool" style="display:none;">
						  				별첨
						  				<input type="button" value="직접입력" onclick="logic_function1()">
					  				</div>
			  						<textarea style="width:98%;" id="logic_text" placeholder="작용원리" name="logic_text">${firstForm.logic_text}</textarea>
		  						</td>
		  						<td align="center"><a class="change" id="change1" onclick="logic_function2()">x</a></td>
	  						</c:otherwise>
		  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[외형]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.shape_text==''||firstForm.shape_text==null}">
	  						<td class="first_td">
				  				<div id="shape_tool">
					  				별첨
					  				<input type="button" value="직접입력" onclick="shape_function1()" >
				  				</div>
				  				<textarea style="width:98%; display:none;" id="shape_text" placeholder="외형" name="shape_text">${firstForm.shape_text}</textarea>
			  				</td>
			  				<td align="center"><a class="change" style="display:none;" id="change2" onclick="shape_function2()">x</a></td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				<div id="shape_tool" style="display:none;">
					  				별첨
					  				<input type="button" value="직접입력" onclick="shape_function1()" >
				  				</div>
				  				<textarea style="width:98%; " id="shape_text" placeholder="외형" name="shape_text">${firstForm.shape_text}</textarea>
			  				</td>
			  				<td align="center"><a class="change"  id="change2" onclick="shape_function2()">x</a></td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[치수]</td>
		  			<c:choose>
	  					<c:when test="${firstForm.size_text==''||firstForm.size_text==null}">
	  						<td class="first_td">
				  				<div id="size_tool">
					  				별첨
					  				<input type="button" value="직접입력" onclick="size_function1()" >
				  				</div>
				  				<textarea style="width:98%; display:none;" id="size_text" placeholder="치수" name="size_text">${firstForm.size_text}</textarea>
			  				</td>
			  				<td align="center"><a class="change" style="display:none;" id="change3" onclick="size_function2()">x</a></td>
  						</c:when>
	  					<c:otherwise>
	  						<td class="first_td">
				  				<div id="size_tool" style="display:none;">
					  				별첨
					  				<input type="button" value="직접입력" onclick="size_function1()" >
				  				</div>
				  				<textarea style="width:98%; " id="size_text" placeholder="치수" name="size_text">${firstForm.size_text}</textarea>
			  				</td>
			  				<td align="center"><a class="change"  id="change3" onclick="size_function2()">x</a></td>
  						</c:otherwise>
	  				</c:choose>
	  			</tr>
		  		<tr>
		  			<td class="first_th">[특성]</td>
		  			<td class="first_td" >별첨</td>
		  			<td align="center"></td>
	  			</tr>
		  	</table>
		  	<ul style="color:red;">
		  		<li>기본 설정으로 별첨이 추가되어 있으며, 직접입력을 원하시는 경우 직접입력 버튼을 클릭하여 생기는 란에 기재하여 주시기 바랍니다. 다시 별첨을 첨부하시고 싶으실 경우 오른쪽 x 버튼을 클릭 하여 주시기 바랍니다.</li>
		  		<li>별첨 작성 중 직접입력을 누르시면 기존에 작성 되어 있던 별첨 내용은 모두 삭제 됩니다.</li>
		  	</ul><br>
		  	<table class="first_form">
		  		<tr><td class="first_title" colspan="2" bgcolor="#EAEAEA">▶ 담당자</td></tr>
		  		<tr><td class="first_th" >[성명]</td><td class="first_td">${memberInfo.kor_name}</td></tr>
		  		<tr><td class="first_th">[전화번호]</td><td class="first_td">${memberInfo.phone1}-${memberInfo.phone2}-${memberInfo.phone3}</td></tr>
		  		<tr><td class="first_th">[이메일]</td><td class="first_td">${memberInfo.email1}@${memberInfo.email2}</td></tr>
		  		<tr><td class="first_th">[휴대폰]</td><td class="first_td">${memberInfo.cell_phone1}-${memberInfo.cell_phone2}-${memberInfo.cell_phone3}</td></tr>
		  	</table><br>
		  </div>
	 </form>
</div>
<script>
	 var forms_seq = document.getElementById("forms_seq").value;

	function logic_function1(){
		$("#logic_text").css("display","block");
		$("#logic_tool").css("display", "none");
		$("#change1").css("display", "block");;
		document.getElementById('logic_text').value="";
	}
	
	function logic_function2(){
		if(confirm("직접입력된 내용은 모두 삭제 됩니다. 계속 진행하겠습니까 ?")){
			$("#logic_text").css("display","none");
			$("#logic_tool").css("display", "block");
			$("#change1").css("display", "none");
			document.getElementById('logic_text').value="";
		}
	}
	
	function shape_function1(){
		$("#shape_text").css("display","block");
		$("#shape_tool").css("display", "none");
		$("#change2").css("display", "block");
		document.getElementById('shape_text').value="";
	}
	
	function shape_function2(){
		if(confirm("직접입력된 내용은 모두 삭제 됩니다. 계속 진행하겠습니까 ?")){
			$("#shape_text").css("display","none");
			$("#shape_tool").css("display", "block");
			$("#change2").css("display", "none");
			document.getElementById('shape_text').value="";
		}
	}
	
	function size_function1(){
		$("#size_text").css("display","block");
		$("#size_tool").css("display", "none");
		$("#change3").css("display", "block");
		document.getElementById('size_text').value="";
	}
	
	function size_function2(){
		if(confirm("직접입력된 내용은 모두 삭제 됩니다. 계속 진행하겠습니까 ?")){
			$("#size_text").css("display","none");
			$("#size_tool").css("display", "block");
			$("#change3").css("display", "none");
			document.getElementById('size_text').value="";
		}
	}
	
	function performance_function1(){
		$("#performance_text").css("display","block");
		$("#performance_tool").css("display", "none");
		$("#change4").css("display", "block");
		document.getElementById('performance_text').value="";
	}
	
	function performance_function2(){
		if(confirm("직접입력된 내용은 모두 삭제 됩니다. 계속 진행하겠습니까 ?")){
			$("#performance_text").css("display","none");
			$("#performance_tool").css("display", "block");
			$("#change4").css("display", "none");
			document.getElementById('performance_text').value="";
		}
	}
	
	function popup_country(num){
		window.open('/selectCountry.do?num='+num,'selectCountry','width=501 height=690 scrollbars=yes');
	}
	
	function getPost(num){
		window.open('/Post.do?num='+num,'getPost','width=501 height=618 scrollbars=yes');
	}
</script>