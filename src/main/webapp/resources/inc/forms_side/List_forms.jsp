<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
	<body>
		<div style=" background-color:#ffffff; text-align:center; height:34px; border-bottom:1px solid grey;">
			HWP 저장 : 
			<input type="image" src="/resources/img/btn/Part1.png" width="40px" onclick="HwpItPart1(<%=request.getParameter("forms_seq")%>)">
			<input type="image" src="/resources/img/btn/Part1.png" width="40px" onclick="HwpItPart2(<%=request.getParameter("forms_seq")%>)">
			<input type="image" src="/resources/img/btn/Part1.png" width="40px" onclick="HwpItPart3(<%=request.getParameter("forms_seq")%>)">
		</div>
		<div style="height:12px;"></div>
		<div  style="overflow-x:scroll; max-width:240px;">
			<ol class="tree">
				<li>
					<label for="folder1">신청내용</label> <input type="checkbox" checked id="folder1" />
					<ol>
						<li class="file" id="find"><a href="javaScript:requestHello('1', 'contents1');" id="button-right" ><c:if test="${forms.contents1==null}"><img src="/resources/img/forms/arrow.gif"></c:if>신청서</a></li>
						<li class="file"><a href="javaScript:requestHello('2', 'contents2');"><c:if test="${forms.contents2==null}"><img src="/resources/img/forms/arrow.gif"></c:if>원재료</a></li>
						<li class="file"><a href="javaScript:requestHello('3', 'contents3');"><c:if test="${forms.contents3==null}"><img src="/resources/img/forms/arrow.gif"></c:if>제조방법</a></li>
						<li class="file"><a href="javaScript:requestHello('4', 'contents4');"><c:if test="${forms.contents4==null}"><img src="/resources/img/forms/arrow.gif"></c:if>사용방법</a></li>
						<li class="file"><a href="javaScript:requestHello('5', 'contents5');"><c:if test="${forms.contents5==null}"><img src="/resources/img/forms/arrow.gif"></c:if>사용시 주의사항</a></li>
						<li class="file"><a href="javaScript:requestHello('6', 'contents6');"><c:if test="${forms.contents6==null}"><img src="/resources/img/forms/arrow.gif"></c:if>저장방법</a></li>
						<li class="file"><a href="javaScript:requestHello('7', 'contents7');"><c:if test="${forms.contents7==null}"><img src="/resources/img/forms/arrow.gif"></c:if>사용기한</a></li>
						<li class="file"><a href="javaScript:requestHello('8', 'contents8');"><c:if test="${forms.contents8==null}"><img src="/resources/img/forms/arrow.gif"></c:if>시험규격</a></li>
						<c:choose>
							<c:when test="${forms.power=='1'}">
								<li class="file"><a href="javaScript:requestHello('9', 'contents9');"><c:if test="${forms.contents9==null}"><img src="/resources/img/forms/arrow.gif"></c:if>모양 및 구조</a></li>
							</c:when>
						</c:choose>
						<li class="file"><a href="javaScript:requestHello('10', 'contents10');"><c:if test="${forms.contents10==null}"><img src="/resources/img/forms/arrow.gif"></c:if>기타</a></li>
					</ol>
				</li>
				<li>
					<label for="folder2">국제표준화기술문서</label> <input type="checkbox" checked id="folder2" /> 
					<ol>
						<li>
							<label for="subfolder1">목차</label> <input type="checkbox" checked id="subfolder1" /> 
							<ol>
								<li class="file"><a href="javaScript:requestHello('11', 'contents11');"><c:if test="${forms.contents11==null}"><img src="/resources/img/forms/arrow.gif"></c:if>목차</a></li>
							</ol>
						</li>
						<li>
							<label for="subfolder2">기기설명 및 제품사양</label> <input type="checkbox" checked id="subfolder2" /> 
							<ol>
								<li class="file"><a href="javaScript:requestHello('12', 'contents12');"><c:if test="${forms.contents12==null}"><img src="/resources/img/forms/arrow.gif"></c:if>기기설명</a></li>
								<li class="file"><a href="javaScript:requestHello('13', 'contents13');"><c:if test="${forms.contents13==null}"><img src="/resources/img/forms/arrow.gif"></c:if>제품사양</a></li>
								<li class="file"><a href="javaScript:requestHello('14', 'contents14');"><c:if test="${forms.contents14==null}"><img src="/resources/img/forms/arrow.gif"></c:if>유사기기 및 기 허기된 제품에 대한 참고자료</a></li>
							</ol>
						</li>
						<li>
							<label for="subfolder3">표시기재(안)</label> <input type="checkbox" checked id="subfolder3" /> 
							<ol>
								<li class="file"><a href="javaScript:requestHello('15', 'contents15');"><c:if test="${forms.contents15==null}"><img src="/resources/img/forms/arrow.gif"></c:if>표시기재(안)</a></li>
							</ol>
						</li>
						<li>
							<label for="subfolder4">설계와 제조정보</label> <input type="checkbox" checked id="subfolder4" /> 
							<ol>
								<li class="file"><a href="javaScript:requestHello('16', 'contents16');"><c:if test="${forms.contents16==null}"><img src="/resources/img/forms/arrow.gif"></c:if>기기설계 계요</a></li>
								<li class="file"><a href="javaScript:requestHello('17', 'contents17');"><c:if test="${forms.contents17==null}"><img src="/resources/img/forms/arrow.gif"></c:if>제조공정 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('18', 'contents18');"><c:if test="${forms.contents18==null}"><img src="/resources/img/forms/arrow.gif"></c:if>설계 및 제조장소 요약</a></li>
							</ol>
						</li>
						<li>
							<label for="subfolder5">필수원칙 체크리스트</label> <input type="checkbox" checked id="subfolder5" /> 
							<ol>
								<li class="file"><a href="javaScript:requestHello('19', 'contents19');"><c:if test="${forms.contents19==null}"><img src="/resources/img/forms/arrow.gif"></c:if>필수원칙 체크리스트</a></li>
							</ol>
						</li>
						<li>
							<label for="subfolder6">위험분석과 관리요약</label> <input type="checkbox" checked id="subfolder6" /> 
							<ol>
								<li class="file"><a href="javaScript:requestHello('20', 'contents20');"><c:if test="${forms.contents20==null}"><img src="/resources/img/forms/arrow.gif"></c:if>위험분석과 관리요약</a></li>
							</ol>
						</li><!--여기까지 완료~!!-->
						<li>
							<label for="subfolder7">제품검증 및 유효성확인 요약</label> <input type="checkbox" checked id="subfolder7" /> 
							<ol>
								<li>
									<label for="subfolder8">일반사항</label> <input type="checkbox" checked id="subfolder8" /> 
									<ol>
										<li class="file"><a href="javaScript:requestHello('21', 'contents21');"><c:if test="${forms.contents21==null}"><img src="/resources/img/forms/arrow.gif"></c:if>규격에 대한 적합선언</a></li>
										<li class="file"><a href="javaScript:requestHello('22', 'contents22');"><c:if test="${forms.contents22==null}"><img src="/resources/img/forms/arrow.gif"></c:if>기기설계의 유효성 확인 개요</a></li>
									</ol>
								</li>
								<li class="file"><a href="javaScript:requestHello('23', 'contents23');"><c:if test="${forms.contents23==null}"><img src="/resources/img/forms/arrow.gif"></c:if>전기,기계적 안전성 시험 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('24', 'contents24');"><c:if test="${forms.contents24==null}"><img src="/resources/img/forms/arrow.gif"></c:if>생물학적 안전성 시험 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('25', 'contents25');"><c:if test="${forms.contents25==null}"><img src="/resources/img/forms/arrow.gif"></c:if>방사선에 관한 안전성 시험 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('26', 'contents26');"><c:if test="${forms.contents26==null}"><img src="/resources/img/forms/arrow.gif"></c:if>전자파 안전성 시험 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('27', 'contents27');"><c:if test="${forms.contents27==null}"><img src="/resources/img/forms/arrow.gif"></c:if>성능에 관한 자료 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('28', 'contents28');"><c:if test="${forms.contents28==null}"><img src="/resources/img/forms/arrow.gif"></c:if>소프트웨어 검증 및 유효성 확인자료 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('29', 'contents29');"><c:if test="${forms.contents29==null}"><img src="/resources/img/forms/arrow.gif"></c:if>물리, 화학적 특성 자료 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('30', 'contents30');"><c:if test="${forms.contents30==null}"><img src="/resources/img/forms/arrow.gif"></c:if>동물 유래 물질에 대한 안전성 자료 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('31', 'contents31');"><c:if test="${forms.contents31==null}"><img src="/resources/img/forms/arrow.gif"></c:if>안전성 시험 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('32', 'contents32');"><c:if test="${forms.contents32==null}"><img src="/resources/img/forms/arrow.gif"></c:if>복합, 조합된 의약품에 대한 정보 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('33', 'contents33');"><c:if test="${forms.contents33==null}"><img src="/resources/img/forms/arrow.gif"></c:if>동물시험 자료 요약</a></li>
								<li class="file"><a href="javaScript:requestHello('34', 'contents34');"><c:if test="${forms.contents34==null}"><img src="/resources/img/forms/arrow.gif"></c:if>임상시험 자료 요약</a></li>
							</ol>
						</li>
					</ol>
				</li>
				<li>
					<label for="folder3">첨부자료</label> <input type="checkbox" checked id="folder3" /> 
					<ol>
						<li class="file"><a href="javaScript:requestHello('39', 'contents39');"><c:if test="${forms.contents39==null}"><img src="/resources/img/forms/arrow.gif"></c:if>목차</a></li>
						<li class="file"><a href="javaScript:requestHello('35', 'contents35');"><c:if test="${forms.contents35==null}"><img src="/resources/img/forms/arrow.gif"></c:if>제조공정에 관한 자료</a></li>
						<li class="file"><a href="javaScript:requestHello('36', 'contents36');"><c:if test="${forms.contents36==null}"><img src="/resources/img/forms/arrow.gif"></c:if>위험분석 보고서</a></li>
						<li class="file"><a href="javaScript:requestHello('37', 'contents37');"><c:if test="${forms.contents37==null}"><img src="/resources/img/forms/arrow.gif"></c:if>제품검증 및 유효성 확인 자료</a></li>
						<li class="file"><a href="javaScript:requestHello('38', 'contents38');"><c:if test="${forms.contents38==null}"><img src="/resources/img/forms/arrow.gif"></c:if>참고 문헌</a></li>
					</ol>
				</li>
			</ol><br>
		</div>
		<div style="height:40px;"></div>
	</body>
</html>