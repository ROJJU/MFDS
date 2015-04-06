<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<meta name="robots" content="all">
	
	<!--[if gte IE 9 ]><link rel="stylesheet" type="text/css" href="_styles.css" media="screen"><![endif]-->
	<!--[if !IE]>--><link rel="stylesheet" type="text/css" href="/resources/css/forms/_styles.css" media="screen"><!--<![endif]-->
	
	<title>STED</title>
</head>
	<body>
	<jsp:include page="/resources/inc/Main_header.jsp"/>
		<div class="total_container" id="total_container">
			<div class="space"></div>
			<div id="total_content">
				<jsp:include page="/resources/inc/Sub_header.jsp"/>
				<div>
					<table id="container">
						<tr>
							<td id="side_menu_place" rowspan="1">
								<table id="side_menu" style="border-collapse:collapse;">
									<tr><td id="side_down_icon"><b class="side_img">▼</b><b>Menu Options</b></td></tr>
									<tr>
										<td>
											<div style="height:12px;"></div>
											<ol class="tree">
												<li>
													<label for="folder1">Folder 1</label> <input type="checkbox" checked disabled id="folder1" /> 
													<ol>
														<li class="file"><a href="document.html.pdf">File 1</a></li>
														<li>
															<label for="subfolder1">Subfolder 1</label> <input type="checkbox" id="subfolder1" /> 
															<ol>
																<li class="file"><a href="">Filey 1</a></li>
																<li>
																	<label for="subsubfolder1">Subfolder 1</label> <input type="checkbox" id="subsubfolder1" /> 
																	<ol>
																		<li class="file"><a href="">File 1</a></li>
																		<li>
																			<label for="subsubfolder2">Subfolder 1</label> <input type="checkbox" id="subsubfolder2" /> 
																			<ol>
																				<li class="file"><a href="">Subfile 1</a></li>
																				<li class="file"><a href="">Subfile 2</a></li>
																				<li class="file"><a href="">Subfile 3</a></li>
																				<li class="file"><a href="">Subfile 4</a></li>
																				<li class="file"><a href="">Subfile 5</a></li>
																				<li class="file"><a href="">Subfile 6</a></li>
																			</ol>
																		</li>
																	</ol>
																</li>
																<li class="file"><a href="">File 3</a></li>
																<li class="file"><a href="">File 4</a></li>
																<li class="file"><a href="">File 5</a></li>
																<li class="file"><a href="">File 6</a></li>
															</ol>
														</li>
													</ol>
												</li>
												<li>
													<label for="folder2">Folder 2</label> <input type="checkbox" id="folder2" /> 
													<ol>
														<li class="file"><a href="document.html.pdf">File 1</a></li>
														<li>
															<label for="subfolder2">Subfolder 1</label> <input type="checkbox" id="subfolder2" /> 
															<ol>
																<li class="file"><a href="">Subfile 1</a></li>
																<li class="file"><a href="">Subfile 2</a></li>
																<li class="file"><a href="">Subfile 3</a></li>
																<li class="file"><a href="">Subfile 4</a></li>
																<li class="file"><a href="">Subfile 5</a></li>
																<li class="file"><a href="">Subfile 6</a></li>
															</ol>
														</li>
													</ol>
												</li>
												<li>
													<label for="folder3">Folder 3</label> <input type="checkbox" id="folder3" /> 
													<ol>
														<li class="file"><a href="document.html.pdf">File 1</a></li>
														<li>
															<label for="subfolder3">Subfolder 1</label> <input type="checkbox" id="subfolder3" /> 
															<ol>
																<li class="file"><a href="">Subfile 1</a></li>
																<li class="file"><a href="">Subfile 2</a></li>
																<li class="file"><a href="">Subfile 3</a></li>
																<li class="file"><a href="">Subfile 4</a></li>
																<li class="file"><a href="">Subfile 5</a></li>
																<li class="file"><a href="">Subfile 6</a></li>
															</ol>
														</li>
													</ol>
												</li>
												<li>
													<label for="folder4">Folder 4</label> <input type="checkbox" id="folder4" /> 
													<ol>
														<li class="file"><a href="">File 1</a></li>
														<li>
															<label for="subfolder4">Subfolder 1</label> <input type="checkbox" id="subfolder4" /> 
															<ol>
																<li class="file"><a href="">Subfile 1</a></li>
																<li class="file"><a href="">Subfile 2</a></li>
																<li class="file"><a href="">Subfile 3</a></li>
																<li class="file"><a href="">Subfile 4</a></li>
																<li class="file"><a href="">Subfile 5</a></li>
																<li class="file"><a href="">Subfile 6</a></li>
															</ol>
														</li>
													</ol>
												</li>
												<li>
													<label for="folder5">Folder 5</label> <input type="checkbox" id="folder5" /> 
													<ol>
														<li class="file"><a href="">File 1</a></li>
														<li>
															<label for="subfolder5">Subfolder 1</label> <input type="checkbox" id="subfolder5" /> 
															<ol>
																<li class="file"><a href="">Subfile 1</a></li>
																<li class="file"><a href="">Subfile 2</a></li>
																<li class="file"><a href="">Subfile 3</a></li>
																<li class="file"><a href="">Subfile 4</a></li>
																<li class="file"><a href="">Subfile 5</a></li>
																<li class="file"><a href="">Subfile 6</a></li>
															</ol>
														</li>
													</ol>
												</li>
											</ol>
											<div style="height:50px;"></div>
										</td>
									</tr>
								</table>
							</td>
							<td id="content_place">
								<table id="content_top_place">
									<tr><td id="sub_bar"></td></tr>
									<tr>
										<td id="content_top_place"></td>
									</tr>
								</table>
								<br>
								환영합니다. STED 프로그램에 접속하셨습니다.
								<hr style="margin:5px;">
								<div style="text-align:left; padding:10px;">
									안녕하십니까.<br>한국의료산업품질경영연구원(이하 K-GMP)는 국내 의료기기 및 외국 수입의료기기에 대한 식약처의 안전하고 신속한 인허가 자문을 제공하고. 의료기술에 대한 국내에 객관적이고 신뢰성 있는 분석을 통해 근거있는 양질의 정보를 제공하기 위해 설립되었습니다.<br><br><br>아울러 앞으로도 식품의약품안전청 민원의뢰업무에 있어서 보다 고객님들의 편의를 위해 체계적인 시스템을 구축해 나가는데 앞장서겠습니다. 뿐만 아니라 우수한 연구개발 인력을 확보하는 동시에 적극적인 대한민국 여성 대표 모범기업으로서의 소임을 다하고자 부단히 노력할 것을 약속 드립니다.<br><br>감사합니다.
								</div>
								<div>
									<input type="button" value="내정보" title="my info">&nbsp;
									<input type="button" value="결제내역 조회/결산서발행" title="payment">&nbsp;
									<input type="button" value="내문서" title="my form">&nbsp;
									<input type="button" value="일정관리" title="schedule">
								</div>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
	</body>
</html>