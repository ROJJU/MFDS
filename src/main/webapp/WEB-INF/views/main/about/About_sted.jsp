<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/preloader.jsp"/>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<style type="text/css">
		#sub_contents table td{
		 height:20px;
		 vertical-align:top;
		}
	</style>
	</head>
	<body>
		<div class="total_container" id="total_container">
			<div class="space"></div>
			<div id="total_content">
				<jsp:include page="/resources/inc/Sub_header.jsp"/>
				<div>
					<table id="container">
						<tr>
							<td id="side_menu_place" rowspan="1"><jsp:include page="/resources/inc/Side_menu.jsp"/></td>
							<td id="content_place">
								<jsp:include page="/resources/inc/sub_tab/Sub_tab_03.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<div>
									<table id="sub_contents">
										<tr>
											<td id="sub_content" align="left">
												<div align="left" id="sub_title"></div>
												<table width="100%">
													<tr >
														<td width="6px;"></td>
														<th colspan="2" style="background-color:#EAEAEA; height:35px;">STED 정의</th>
														<td width="6px;"></td>
													</tr>
												</table>
												<table width="100%">
													<tr>
														<td>
															<table width="400px;" height="400px;">
																<tr>
																	<td><img src="/resources/img/main/about_sted.png"><br><br><br></td>
																</tr>
															</table>
														</td>
														<td style="vertical-align:top; padding:10px;">
															<h2><font color="red">S</font>tandard <font color="red">Te</font>chnical <font color="red">D</font>ocumentation System</h2><br>
															<table>
																<tr>
																	<td width="20px" >□</td>
																	<td>전 세계적으로 표준화된 기술문서로서 의료기기의 보다 높은 품질관리를 현실화</td>
																</tr>
																<tr>
																	<td width="20px" >□</td>
																	<td>기존 기술문서에 포함된 사용목적, 작용원리, 시험규격 등 제품의 성능 및 안전성 외에 기기설계(개발경위 등) 및 위험분석까지 포함하고 있어 허가, 심사단계에서 제조공정상의 위험관리까지 가능</td>
																</tr>
																<tr>
																	<td width="20px" >□</td>
																	<td>국내 제조 의료기기의 수출을 위한 해외 인증을 수월하게 할 수 있고, 기술문서 작성의 이중 작업을 방지 등으로 민원편의를 도모</td>
																</tr>
																<tr>
																	<td width="20px">□</td>
																	<td>품목허가 시 설계 및 위험관리 등에 적정성을 평가하여 국내 의료기기의 신뢰성 향상 및 국민보건 향상에 기여할 수 있을 것으로 기대됨</td>
																</tr>
															</table>
															<p style="background-color:#EAEAEA; padding:20px; margin-top:40px; border-top:1px solid grey;">
																한국의료산업품질경영연구원, ㈜한국지엠피는 해당 STED 서비스를 바탕으로 전 국가적인 차원에서 보다 안정화된 의료기기 품질관리 체제를 확립시킬 수 있도록 노력하고 있습니다.<br><br>
																Welcome to visit STED. K-GMP (Korea Medical Industry Institute of Goods Management Procedure) provides you intensive support for KFDA registration and compliance assistance for domestic and international companies related to medical device industries. 
															</p>
														</td>
													</tr>
												</table>
												<table width="100%">
													<tr >
														<td width="6px;"></td>
														<th colspan="2" style="background-color:#EAEAEA; height:35px;">STED SYSTEM</th>
														<td width="6px;"></td>
													</tr>
												</table>
												<table width="100%">
													<tr>
														<td style="padding:5px;">
															<table width="100%;">
																<tr align="center">
																	<td style="background-color:#D5D5D5; height:30px; width:50%;" colspan="2"><h4 style="color:#102967">국제표준화기술문서 제출자료</h4></td>
																	<td style="background-color:#D5D5D5; height:30px; width:50%;" colspan="2"><h4 style="color:#102967">국제표준화기술문서 개요</h4></td>
																</tr>
																<tr>
																	<td height=400px;><img src="/resources/img/main/about_sted1.png"></td>
																	<td style="padding:2px; vertical-align:top; width:35%;">
																		<table>
																			<tr>
																				<td rowspan="3" style="vertical-align:top; font-weight:bolder;">&nbsp;&nbsp;제1부</td>
																				<td>신청내용 등</td>
																			</tr>
																			<tr><td>1.1	심사의뢰서</td></tr>
																			<tr><td style="vertical-align:top; height:35px;">1.2	기 허가 제품과 비교한 자료</td></tr>
																			<tr>
																				<td rowspan="8" style="vertical-align:top; font-weight:bolder;">&nbsp;&nbsp;제2부</td>
																				<td>국제표준화기술문서 개요</td>
																			</tr>
																			<tr><td>2.1 목차</td></tr>
																			<tr><td>2.2 기기설명 및 제품사양</td></tr>
																			<tr><td>2.3 표시기재(안)</td></tr>
																			<tr><td>2.4 설계와 제조정보</td></tr>
																			<tr><td>2.5 필수원칙 체크리스트</td></tr>
																			<tr><td>2.6 위험분석과 관리요약</td></tr>
																			<tr><td style="vertical-align:top; height:35px;">2.7 제품검증 / 유효성확인 요약</td></tr>
																			<tr>
																				<td rowspan="6" style="vertical-align:top; font-weight:bolder;">&nbsp;&nbsp;제3부</td>
																				<td>첨부자료</td>
																			</tr>
																			<tr><td>3.1 목차</td></tr>
																			<tr><td>3.2 제조공정에 관한 자료</td></tr>
																			<tr><td>3.3. 위험분석 보고서</td></tr>
																			<tr><td>3.4 제품검증/ 유효성 확인자료</td></tr>
																			<tr><td>3.5 참고문헌</td></tr>
																		</table>
																	</td>
																	<td width="200px;"><img src="/resources/img/main/about_sted2.png"></td>
																	<td style="padding:2px; vertical-align:top; width:35%;">
																		<table>
																			<tr>
																				<td style="font-weight:bolder;">&nbsp;&nbsp;1. 기기설명 및 제품사양</td>
																			</tr>
																			<tr>
																				<td style="padding-left:30px;">
																				기기설명 : 사용목적 ,원재료 등 요약<br>
																				제품사양 : 제품 특성, 모양 및 구조 기재<br>
																				유사기기 및 기 허가된 제품에 대한 자료<br>
																				</td>
																			</tr>
																			<tr>
																				<td style="font-weight:bolder;">&nbsp;&nbsp;2. 표시기제(안)</td>
																			</tr>
																			<tr>
																				<td style="padding-left:30px;">
																				용기 및 외부포장 표시기재사항<br>
																				첨부문서(안) 또는 사용설명서(안)<br>
																				카달로그(안)<br>
																				</td>
																			</tr>
																			<tr>
																				<td style="font-weight:bolder;">&nbsp;&nbsp;3. 설계와 제조정보</td>
																			</tr>
																			<tr>
																				<td style="padding-left:30px;">
																				기기설계 개요(개발경위)<br>
																				제조공정 요약<br>
																				</td>
																			</tr>
																			<tr>
																				<td style="font-weight:bolder;">&nbsp;&nbsp;3. 설계와 제조정보</td>
																			</tr>
																			<tr>
																				<td style="padding-left:30px;">
																				기기설계 개요(개발경위)<br>
																				제조공정 요약<br>
																				</td>
																			</tr>
																			<tr>
																				<td style="font-weight:bolder;">&nbsp;&nbsp;4. 필수원칙 체크리스트</td>
																			</tr>
																			<tr>
																				<td style="padding-left:30px;">
																				개요, 적용규격, 점검표<br>
																				</td>
																			</tr>
																			<tr>
																				<td style="font-weight:bolder;">&nbsp;&nbsp;5.	위험분석과 관리요약</td>
																			</tr>
																			<tr>
																				<td style="padding-left:30px;">
																				위험분석 보고서<br>
																				</td>
																			</tr>
																			<tr>
																				<td style="font-weight:bolder;">&nbsp;&nbsp;6.	제품검증 및 유효성 확인 요약</td>
																			</tr>
																			<tr>
																				<td style="padding-left:30px;">
																				안전성 및 성능 등 시험자료 요약<br>
																				</td>
																			</tr>
																		</table>	
																	</td>
																</tr>
															</table>
														</td>
														<td></td>
													</tr>
												</table>
												<div style="height:40px;"></div>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<jsp:include page="/resources/inc/Main_footer.jsp"/>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
	</body>
</html>