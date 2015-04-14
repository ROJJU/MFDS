<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Member_header.jsp"/>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<style type="text/css">
			body{margin:0 auto; background:#f5f6f7; height:100%;}
			#member_body_container{
			position:relative;
			width:100%;
			height:100%;
			}
			#member_body_contents{
			position:relative;
			width:1064px;
			margin:0 auto;
			}
			table{
			width:1064px;
			border-collapse:collapse;
			font-size:12px;
			}
			#title tr{
			border-bottom:1px solid grey;
			}
			table#body{
			border:1px solid grey;
			background-color:#ffffff;
			height:120px;
			}
			a{
			text-decoration:none;
			color:grey;
			}
			a:hover{
			color:blue;
			}
			a.font{
			 font-size:14px;
			 color:#102967;
			 font-weight:bolder;
			}
		</style>
	</head>
	<body>
		<div id="member_body_container">
			<div id="member_body_contents"><br><br>
				<table id="title">
					<tr height="30px">
						<th width="140px" style="border-bottom:2px solid grey;"><font size="3px">개인정보취급방침</font></th>
						<td align="right"><a href="/MemberTerms.do">01. 이용약관</a> | <b style="color:blue"><a href="/MemberInfo.do">02. 개인정보취급방침</a></b> | <a href="">03. 책임의 한계와 법적고지</a> | <a href="http://www.k-gmp.com/intro/busi.php" class="text" target="_balnk">04. 회사소개</a></td>
					</tr>
				</table>
				<table id="summary">
					<tr height="100px">
						<td align="center">
							<br><img src="<c:url value="/resources/img/common/sted_logo.png"/>" width="330px"><br><br><br>
						</td>
					</tr>
				</table>
				<hr><br>
				STED 약관은 다음과 같은 내용을 담고 있습니다.<br><br>
				<table>
					<tr>
						<td rowspan="12" width="30px;"></td>
					</tr>
					<tr>
						<td width="50px;">1.</td><td width="500px;"><a href="#1" class="font">수집하는 개인정보의 항목 및 수집방법</a></td><td width="50px;">9.</td><td ><a class="font" href="#12">"서비스"의 변경</a></td>
					</tr>
					<tr>
						<td>2.</td><td><a class="font" href="#2">개인정보의 수집 및 이용목적</a></td><td>6.</td><td ><a class="font" href="#6">이용자의 권리와 그 행사방법</a></td>
					</tr>
					<tr>
						<td>3.</td><td ><a class="font" href="#3">개인정보의 공유 및 제공</a></td><td>7.</td><td ><a class="font" href="#7">개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</a></td>
					</tr>
					<tr>
						<td>4.</td><td ><a class="font" href="#4">개인정보의 보유 및 이용기간</a></td><td>8.</td><td ><a class="font" href="#8">개인정보의 기술적/관리적 보호 대책</a></td>
					</tr>
					<tr>
						<td>5.</td><td ><a class="font" href="#5">개인정보 파기절차 및 방법</a></td><td>9.</td><td ><a class="font" href="#9">고지의무</a></td>
					</tr>
				</table>
				<br><hr><br>
				<table id="body">
					<tr>
						<td style="padding:35px;">
								<h1><font color="red">*</font>&nbsp;STED 개인정보 수집 및 이용에 대한 안내 :</h1> <br><br>
								<div id="1">
									<b>1. 수집하는 개인정보의 항목 및 수집방법</b>
									<ul>
										<li type="none">가. 수집하는 개인정보의 항목</li>
											<ul>
												<li>첫째, 기업은 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.</li>
													<ul>
														<li>[회원가입]</li>
														<li>- 필수항목: 사원정보(아이디, 이 메일, 비밀번호, 이름, 생년월일, 성별, 보직, 및 직책 휴대폰번호)회사정보(회사명, 회사주소, 전화번호, FAX번호, 대표자 성함, 사업자등록증 사본, 사업자등록번호, 고용보험관리번호, 주요생산품 및 매출액, 종업원수)</li>
													</ul>
												<li>둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.</li>
													<ul>
														<li>- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록</li>
													</ul>
												<li>셋째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.</li>
													<ul>
														<li>- 계좌이체(가상계좌 입금): 은행 명, 계좌번호 등</li>
													</ul>
											</ul>
										<li type="none">나. 개인정보 수집방법</li>
											<ul>
												<li>기업은 다음과 같은 방법으로 개인정보를 수집합니다.</li>
												<ul>
													<li>- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이 메일</li>
												</ul>
											</ul>
									</ul>
								</div><br><br>
								<div id="2">
									<b>2. 개인정보의 수집 및 이용목적</b>
									<ul>
										<li type="none">가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</li>
											<ul>
												<li>컨텐츠 제공, 특정 맞춤 서비스 제공, 구매 및 요금추심</li>
											</ul>
										<li type="none">나. 회원관리</li>
											<ul>
												<li>회원제 서비스 제공, 개인식별, STED 이용약관 위반 회원에 대한 이용제한 조치, 서비스의 원활한 운영에 지장을 미치는 행위 및 서비스 부정이용 행위 제재, 가입의사 확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원탈퇴 의사의 확인</li>
											</ul>
									</ul>
								</div><br><br>
								<div id="3">
									<b>3. 개인정보의 공유 및 제공</b>
									기업은 이용자들의 개인정보를 "2. 개인정보의 수집목적 및 이용목적"에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다.
									<ul>
										<li type="none">가. 이용자가 사전에 동의 한 경우</li>
										<li type="none">나. 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
									</ul> 
								</div><br><br>
								<div id="4">
									<b>4. 개인정보의 보유 및 이용기간</b>
									이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 보존 이유를 위해 명시한 기간 동안 보존합니다.
									<ul>
										<li type="none">가. 기업 내부 방침에 의한 정보보유 사유</li>
											<ul>
												<li>- 부정이용기록(비정상적 서비스 이용기록)보존 항목: 가입인증 이 메일</li>
												<li>보존 이유: 부정 가입 및 이용 방지</li>
												<li>보존 기간: 1년</li>
											</ul>
										<li type="none">나. 관련법령에 의한 정보보유 사유</li>
											<ul>
												<li>상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 기업은 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 기업은 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.</li>
												<li>- 계약 또는 청약철회 등에 관한 기록보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
												<li>보존 기간: 5년</li>
												<li>- 대금결제 및 재화 등의 공급에 관한 기록보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
												<li>보존 기간: 5년</li>
												<li>- 전자금융 거래에 관한 기록보존 이유: 전자금융거래법</li>
												<li>보존 기간: 5년</li>
												<li>- 소비자의 불만 또는 분쟁처리에 관한 기록보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
												<li>보존 기간: 3년</li>
												<li>- 웹사이트 방문기록보존 이유: 통신비밀보호법</li>
												<li>보존 기간: 3개월</li>
											</ul>
									</ul>
								</div><br><br>
								<div id="5">
									<b>5. 개인정보 파기절차 및 방법</b>
									이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다.
									기업의 개인정보 파기절차 및 방법은 다음과 같습니다.
									<ul>
										<li type="none">가. 파기절차</li>
										<ul>
											<li>- 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조)일정 기간 저장된 후 파기됩니다.</li>
											<li>- 동 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.</li>
										</ul>
										<li type="none">나. 파기방법</li>
										<ul>
											<li>- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</li>
											<li>- 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</li>
										</ul>
									</ul>
								</div><br><br>
								<div id="6">
									<b>6. 이용자의 권리와 그 행사방법</b>
									<ul>
										<li>- 이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며, 기업의 개인정보의 처리에 동의하지 않는 경우 동의를 거부하거나 가입 해지(회원탈퇴)를 요청하실 수 있습니다. 다만, 그러한 경우 서비스의 일부 또는 전부 이용이 어려울 수 있습니다.</li>
										<li>- 이용자의 개인정보 조회, 수정을 위해서는 '개인정보변경'(또는 '회원정보수정' 등)을, 가입 해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.</li>
										<li>- 혹은 개인정보관리책임자에게 서면, 전화 또는 이 메일로 연락하시면 지체 없이 조치하겠습니다.</li>
										<li>- 이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3 자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.</li>
										<li>- 기업은 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "5. 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</li>
									</ul>
								</div><br><br>
								<div id="7">
									<b>7. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</b>
									<ul>
										<li type="none">가. 쿠키란?</li>
										<li type="none">
											<ul>
												<li>- 기업은 개인화되고 맞춤화된 서비스를 제공하기 위해서 이용자의 정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용합니다.</li>
												<li>- 쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에게 보내는 아주 작은 텍스트 파일로 이용자 컴퓨터의 하드디스크에 저장됩니다. 이후 이용자가 웹 사이트에 방문할 경우 웹 사이트 서버는 이용자의 하드 디스크에 저장되어 있는 쿠키의 내용을 읽어 이용자의 환경설정을 유지하고 맞춤화된 서비스를 제공하기 위해 이용됩니다.</li>
												<li>- 쿠키는 개인을 식별하는 정보를 자동적/능동적으로 수집하지 않으며, 이용자는 언제든지 이러한 쿠키의 저장을 거부하거나 삭제할 수 있습니다.</li>
											</ul>
										</li>
										<li type="none">나. 기업의 쿠키 사용 목적</li>
									</ul>
									이용자들이 방문한 STED SYSTEM의 각 서비스와 웹 사이트들에 대한 방문 및 이용형태 파악 관련 업무의 효율을 높이기 위해 사용합니다.
									<ul>
										<li type="none">다. 쿠키의 설치/운영 및 거부</li>
										<li type="none">
											<ul>
												<li>- 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.</li>
												<li>- 쿠키 설치 허용 여부를 지정하는 방법(Internet Explorer의 경우)은 다음과 같습니다.① [도구] 메뉴에서 [인터넷 옵션]을 선택합니다.</li>
												<li ③ [개인정보취급 수준]을 설정하시면 됩니다.>
													<ul>
														<li>② [개인정보 탭]을 클릭합니다.</li>
														<li>③ [개인정보취급 수준]을 설정하시면 됩니다.</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</div><br><br>
								<div id="8">
									<b>8. 개인정보의 기술적/관리적 보호 대책</b><br>
									기업은 이용자들의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.
									<ul>
										<li type="none">가. 비밀번호 암호화</li>
									</ul>
									STED SYSTEM의 회원 아이디(ID) 및 비밀번호의 비밀번호는 암호화되어 저장 및 관리되고 있어 본인만이 알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다.
									<ul>
										<li type="none">나. 해킹 등에 대비한 대책</li>
									</ul>
									기업은 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다.<br> 
									개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호화 통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다.<br> 
									그리고 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적으로 보안 성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.<br>
									<ul>
										<li type="none">다. 취급 직원의 최소화 및 교육</li>
									</ul>
									기업은의 개인정보관련 취급 직원은 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여 정기적으로 갱신하고 있으며, 담당자에 대한 수시 교육을 통하여 STED SYSTEM의 개인정보취급방침의 준수를 항상 강조하고 있습니다.<br>
									기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br>
									<ul>
										<li>- 개인정보침해신고센터 (privacy.kisa.or.kr / 국번 없이 118)</li>
										<li>- 대검찰청 사이버 범죄수사단 (www.spo.go.kr / 02-3480-3571)</li>
										<li>- 경찰청 사이버 안전국 (www.ctrc.go.kr / 국번 없이 182)</li>
									</ul>
								</div><br><br>
								<div id="9">
									<b>9. 고지의 의무</b><br>
									현 개인정보취급방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 '공지사항'을 통해 고지할 것입니다. 다만, 개인정보의 수집 및 활용, 제3자 제공 등과 같이 이용자 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 고지합니다.
								</div>
						</td>
					</tr>
				</table>
				<table id="button">
					<tr height=100px;>
						<td align="center"><br>
						<jsp:include page="/resources/inc/Member_footer.jsp"/>
						</td>
					</tr>
				</table><br><br><br><br>
			</div>
			<a style="color:#ffffff" href="#">
				<div style="padding:10px; vertical-align:middle; width:30px; height:30px; background-color:#102967; color:#ffffff; position:fixed; bottom:2px; right:2px;">
				TOP
				</div>
			</a>
		</div>
	</body>
</html>