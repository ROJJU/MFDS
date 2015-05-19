<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%String num=request.getParameter("num"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>STED 작성 가이드</title>
</head>
<body style="padding:10px; margin:0 auto;">
<%if(num.equals("1")){%>
	<h1>심사의로의 구분</h1>
	심사의 종류 : 임상시험 자료 심사/기술문서 심사 중 선택<br>
	제조/수입 구분 : 제조/수입 중 선택<br>
	제품의 구분 : 새로운제품/개량제품/동등제품/해당없음 중 선택<br>
	<h1>상세내용</h1>
	제품명 : 상품명, 풍목명, 모델명 작성<br>
	상품명 : 2개 이상 입력 시, 콤마로 분리하여 입력<br>
	업소명 표기 여부 : 제품명에 업소명을 출력할 경우 선택, 상품명 입력을 안했을 경우 '예' 작성<br>
	<h1>사용목적</h1>
	사용목적 : 사용목적에 관한 간략한 요약 작성<br>
	성능 : 성능관련 간략한 요약 작성<br>
	<h1>제조원</h1>
	제조의뢰자 : 명칭(제조국, 소재지)입력<br>
	제조자 : 명칭(국가명, 소재지)입력<br>
	*제조자 항목은 제조의뢰자와 제조자가 동일할 경우 기재하고, 제조의뢰자와 제조자가 다를 경우에는 제조자 항목에 제품이 실제 조립되거나 생산되는 곳을 기재하고, 제조의뢰자에 법정제조책임자를 기재<br>
	*제조자가 다수인경우 [표 드레그(삽입->행추가)]를 이용하여 다중 입력이 가능합니다.<br>
	<h1>비고</h1>
	일회용의료기기 여부 : 상태에 따른 예/아니요 선택<br>
	추적관리대상 의료기기 : 상태에 따른 예/아니요 선택<br>
	신청근거 : 신청근거 작성<br>
	<h1>모델명</h1>
	*모델명이 다수인경우 [표 드레그(삽입->행추가)]를 이용하여 다중 입력이 가능합니다.<br>
	<h1>포장단위</h1>
	*포장단위가 다수인경우 [표 드레그(삽입->행추가)]를 이용하여 다중 입력이 가능합니다.<br>
<%}else if(num.equals("2")){%>
	<h1>원재료</h1>
	인체에 접촉․삽입되거나 인체에 주입하는 혈액․체액 또는 약물 등에 접촉하거나, 의약품이 첨가되는 의료기기의 경우에는 다음의 각목의 규정에 따라 기재하여 주시기 바랍니다.<br><br>
	<div style="padding:5px; background-color:#EAEAEA">
	<ul>
		<li>부분품의 명칭란에는 해당 의료기기를 구성하는 부분품별 명칭을 기재한다.</li>
		<li>원재료명 또는 성분명란에는 해당 의료기기의 부분품을 구성하는 각 원재료의 	일반명 또는 화학명을 기재한다.</li>
		<li>규격란에는 원재료에 대한 규격이 있는 경우에는 해당 규격(KS, ASTM, ISO 등)을 기재하고, 규격이 없는 경우 자사규격을 기재한다.</li>
		<li>분량란에는 완제품.부분품 또는 재료 등을 구성하기 위하여 사용되는 원재료.첨가제 또는 색소 등의 분량(단위포함) 및 혼합비를 기재한다.</li>
		<li>비고란에는 인체접촉여부 및 접촉부위를 기재한다.</li>
		<li>의약품이 첨가되는 경우에는 해당 의약품의 명칭.성분.규격.분량을 2목 내지 5목에 준하여 기재하고 해당 의약품의 사용목적은 비고란에 기재한다.</li>
	</ul>
	</div><br><br>
	<div style="padding:5px; background-color:#EAEAEA">
	※ 규격 용어 해설<br>
아래 기재한 규격은 대표적인 예로써 이외의 규격도 적용될 수 있습니
다. 의료기기 관련 참고 할 수 있는 규격 목록자료는 의료기기안전국
홈페이지(http://md.mfds.go.kr) 자료실에서 구할 수 있습니다.
- ISO(International Standardization Organization) : 국제 표준화기구에서
정한 규격 명칭
- ASTM(American Society of Testing Materials) : 미국 재료 시험 협
회에서 정한 규격 명칭
- KS(Korean Standards) : 한국 공업 규격
- EN(European Norm) : 유럽 규격의 명칭
- DIN(Deusche Industrie Norm) : 독일 공업 규격의 명칭
- NF(Normes Francaises) : 프랑스 국가 규격
	</div>
<%}else if(num.equals("3")){%>
	<h1>제조방법</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	제조방법은 “제조원의 제조방법에 따른다.”라고 작성할 수 있습니다. 다만, 다음 멸균의료기기의 제조방법의 경우 멸균방법, 멸균조건 및 포장방법을 추가적으로 기재하여 주십시오.
	</div><br>
	<div style="padding:5px; background-color:#EAEAEA">
	예시)<br>
	가. 제조방법<br>
	: 제조원의 제조방법에 따른다.<br>
	※ 멸균제품인 경우는 아래의 예와 같이 추가 기재하십시오.<br><br>
	나. 멸균방법 및 기준<br>
	(※ 습열멸균을 사용한 경우)<br>
	- 멸균방법 : 습열멸균 (ISO 17665-1,2)<br>
	(※ 산화에틸렌 멸균을 사용한 경우)<br>
	- 멸균방법 : 산화에틸렌 멸균 (ISO-11135-1,2)<br><br>
	(※ 방사선 멸균(감마선, 전자선)을 사용한 경우)<br>
	- 멸균방법 : 감마멸균 (ISO-11137-1,2)<br>
	- 멸균방법 : e-beam 멸균 (ISO-11137-1,2,3)<br><br>
	※ 참고 : 멸균방법 및 멸균조건에 대한 작성 근거자료를 제출하십시오<br>
	</div>
<%}else if(num.equals("4")){%>
	<h1>사용방법</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	사용방법은 다음 각 호에 따라 기재하십시오.<br>
		<ul>
			<li>사용방법은 사용 전의 준비사항, 조작방법, 사용 후의 보관 및 관리 방법을 상세히 기재하되, 전문가가 아닌 일반 소비자가 직접 사용하는	의료기기의 경우에는 사용 대상별(장애인, 임산부, 소아 등) 사용에 불편하지 않도록 알기 쉬운 용어로 기재하여야 합니다.</li>
			<li>사용 전 멸균을 하여야 하는 경우에는 식약처장이 인정하는 멸균방법을 정확히 기재하십시오.</li>
			<li>의료기기에 소프트웨어가 내장되거나 단독으로 사용되는 경우에는 프로그램의 기능들을 확인할 수 있는 화면사진과 함께 그 기능에 대한 사용방법을 정확하게 기재하십시오.</li>
			<li>일회용 의료기기의 경우 “재사용 금지”를 명확하게 기재하십시오.</li>
		</ul>
	</div>
	<h2>사용 전 준비사항</h2>
	<div style="padding:5px; background-color:#EAEAEA">
	사용하기 전에 준비가 필요한 사항을 작성해 주시기 바랍니다. 사용전이나 사용 후 세척, 소독, 멸균을 하는 제품의 경우 그 절차와 방법을 상세하게 기재하시기 바랍니다.
	</div>
	<h2>사용방법 및 조작준서</h2>
	<div style="padding:5px; background-color:#EAEAEA">
	사용 전 준비사항을 확인 점검한 후, 제품의 정상적인 사용을 위하여 사용자가 취하여야 할 일련의 작동순서를 개조식으로 기술하거나, 프로그램의 기능을 확인할 수 있는 화면사진과 함께 그 기능에 대한 사용방법을 같이 작성해 주시기 바랍니다.
	</div>
	<h2>사용 후 보관 및 관리방법</h2>
	<div style="padding:5px; background-color:#EAEAEA">
	사용한 후의 보관 및 관리를 위해 필요한 조건 혹은 방법을 기재하며, 일회용 의료기기인 경우 “재사용 금지“를 명확하게 기재합니다.
	</div>
<%}else if(num.equals("5")){%>
	<h1>사용시 주의사항</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>사용 시 주의사항은 해당 의료기기가 안전하고 합리적으로 사용할 수 있도록 필요한 최신의 안전성 관련 사항을 모두 기재하여야 합니다. 이 경우 의학용어사전 등을 참고하여 이해하기 쉽도록 현대용어로 작성하여야 합니다.</li>
			<li>다음 각 목에 의한 순서와 요령에 따라 기재하여 주십시오.</li>
			<li type="none">
				<ul>
					<li>경고: 치명적이거나 극히 중대하고 비가역적인 이상반응이 나타날 경우 또는 이상반응이 나타난 결과 극히 중대한 사고에 관련될 가능성이 있으므로 특히 주의를 환기할 필요가 있을 경우를 기재하십시오.</li>
					<li>의료기기의 특성을 고려한 사용대상 연령, 성별 또는 건강상태 등에 대한 주의사항을 기재하십시오.</li>
					<li>의료기기의 사용결과 발생할 수 있는 이상반응 사용상의 부주의에 따른 치명적인 부작용·사고발생 등에 대한 주의사항을 기재하십시오.</li>
					<li>일반적 주의: 의료기기로 인한 중대한 사고를 방지하기 위하여 사용중 주의사항을 기재하고 필요한 경우 사고발생 시 처리방법 등도 기재하십시오.</li>
					<li>상호작용: 다른 의료기기와 병용 시 해당 의료기기가 병용의료기기의 작용을 증강 또는 감약시키거나 이상반응의 증강이 일어날 경우 또는 새로운 이상반응이 발생하거나 원질환의 악화 등이 일어날 경우로서 임상적으로 의의가 있는 사항을 기재하십시오.</li>
					<li>임부, 수유부, 가임여성, 신생아, 유아, 소아, 고령자에 대한 사용: 해당 의료기기의 기능적 특성·사용방법 등으로 볼 때 다른 환자에 비하여 특히 주의할 필요가 있다고 판단되는 사항을 기재하십시오.</li>
					<li>적용상의 주의: 사용방법 등에 따른 필요한 주의를 기재하십시오.</li>
					<li>안전사고의 예방에 필요한 사항이 있는 경우에는 관련 주의사항을 기재하십시오.</li>
				</ul>
			</li>
		</ul>
	</div>
<%}else if(num.equals("6")){%>
	<h1>저장방법</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	저장방법 및 사용기한은 각 호에 따라 기재하십시오.<br>
		<ul>
			<li>저장방법은 의료기기의 특성을 고려하여 안정성이 보장될 수 있도록 구체적인 보관조건(온도 등) 및 유의사항 등을 병기하여야 합니다.</li>
			<li>사용기한(유효기한)은 다음 각 호의 어느 하나에 해당하는 경우에는 식약처장이 고시한 「의료기기의 안정성시험 기준」(식품의약품안전처 고시)에 따라 저장방법 및 사용기한(유효기한) 설정하여 기재하십시오.</li>
			<li type="none">
				<ul>
					<li>멸균의료기기</li>
					<li>시간이 경과됨에 따라 원재료 등의 물리·화학적 변화로 인한 안전성 또는 성능의 변화가 예측되는 의료기기</li>
				</ul>
			</li>
		</ul>
※ 참고 : 유효기한 설정의 근거자료를 제출하십시오.
	</div>
<%}else if(num.equals("7")){%>
	<h1>사용기한</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	저장방법 및 사용기한은 각 호에 따라 기재하십시오.<br>
		<ul>
			<li>저장방법은 의료기기의 특성을 고려하여 안정성이 보장될 수 있도록 구체적인 보관조건(온도 등) 및 유의사항 등을 병기하여야 합니다.</li>
			<li>사용기한(유효기한)은 다음 각 호의 어느 하나에 해당하는 경우에는 식약처장이 고시한 「의료기기의 안정성시험 기준」(식품의약품안전처 고시)에 따라 저장방법 및 사용기한(유효기한) 설정하여 기재하십시오.</li>
			<li type="none">
				<ul>
					<li>멸균의료기기</li>
					<li>시간이 경과됨에 따라 원재료 등의 물리·화학적 변화로 인한 안전성 또는 성능의 변화가 예측되는 의료기기</li>
				</ul>
			</li>
		</ul>
※ 참고 : 유효기한 설정의 근거자료를 제출하십시오.
	</div>
<%}else if(num.equals("8")){%>
	<h1>시험규격</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	시험규격은 해당 제품의 안전성 및 성능을 검증하기 위하여 필요한 시험을 기재합니다.<br>
	<ul>
		<li>안전성의 경우 해당 제품의 특성에 따라 식약처장이 고시한 「의료기기의 생물학적 안전에 관한 공통기준규격」및 「의료기기 기준규격」중 해당 규격을 기재하거나, 이와 동등한 국제 규격(ISO 등)을 기재합니다.</li>
		<li>성능은 자사가 설정한 근거에 의한 시험항목, 시험기준 및 시험방법을 기재합니다.</li>
		<li type="none">
			<ul>
				<li>시험기준은 시험결과의 적부판정의 기준이 되는 기준치의 허용범위를 명확히 기재하며, 시험결과가 온도 습도 등 주위 조건에 영향을받는 경우에는 그 조건을 명시하여야 합니다.</li>
				<li>시험방법은 구체적으로 순서에 따라 시험결과를 정확히 산출할 수 있도록 개조식으로 기재합니다.</li>
				<li>식약처장이 인정한 규격(KS, ISO, ASTM 등)이 있을 경우 해당규격을 기재하며, 식약처장이 인정한 규격이 없는 제품의 경우에는 자사가 설정한 근거에 의한 시험항목, 시험기준 및 시험방법을 기재합니다.</li>
				<li type="none">
					<ul>
						<li>조합의료기기 및 한벌구성 의료기기의 경우에는 의료기기 전체로서 평가하여야 하는 부분과 각각의 의료기기별로 평가하여야 할 부분의 시험규격을 각각 설정합니다.</li>
						<li>본 시험규격은 해당 제품의 특성에 따라 수정, 추가 및 삭제할 수 있습니다.</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
	</div>
<%}else if(num.equals("9")){%>
	<h1>모양 및 구조-작용원리</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>용도 및 특성, 당해 제품을 개발하기 위하여 적용한 원리 등에 관한 내용을 요약하여 기술하시면 됩니다.</li>
			<li>‘사용목적’ 이외의 임상적 효능.효과 및 이와 관련된 용어가 표방 되지 않도록 주의하시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-외형</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>외관 사진: 구체적인 형상을 확인할 수 있는 선명한 외관 사진을 부착하기 바랍니다. 여러 가지 구성품이 있을 경우 각각에 대한 외관사진을 부착하시기 바랍니다.</li>
			<li>외관 설명: 외관사진의 각 부분을 지적하고 주요 부분에 대한 설명을 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-치수</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>본 제품의 각 부분품(본체)의 외관도면을 그리고, 각 부분을 지적하여 표시하고, 해당되는 부분에 대한 치수 및 중량을 아래의 예와 같이 작성해 주시기 바랍니다.</li>
			<li>중량에 있어서는 본체 및 구성품의 중량을 각각 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
<%}else if(num.equals("10")){%>
	<h1>모양 및 구조-작용원리</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>용도 및 특성, 당해 제품을 개발하기 위하여 적용한 원리 등에 관한 내용을 요약하여 기술하시면 됩니다.</li>
			<li>‘사용목적’ 이외의 임상적 효능.효과 및 이와 관련된 용어가 표방 되지 않도록 주의하시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-외형</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>외관 사진: 구체적인 형상을 확인할 수 있는 선명한 외관 사진을 부착하기 바랍니다. 여러 가지 구성품이 있을 경우 각각에 대한 외관사진을 부착하시기 바랍니다.</li>
			<li>외관 설명: 외관사진의 각 부분을 지적하고 주요 부분에 대한 설명을 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-치수</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>본 제품의 각 부분품(본체)의 외관도면을 그리고, 각 부분을 지적하여 표시하고, 해당되는 부분에 대한 치수 및 중량을 아래의 예와 같이 작성해 주시기 바랍니다.</li>
			<li>중량에 있어서는 본체 및 구성품의 중량을 각각 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
<%}else if(num.equals("11")){%>
	<h1>모양 및 구조-작용원리</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>용도 및 특성, 당해 제품을 개발하기 위하여 적용한 원리 등에 관한 내용을 요약하여 기술하시면 됩니다.</li>
			<li>‘사용목적’ 이외의 임상적 효능.효과 및 이와 관련된 용어가 표방 되지 않도록 주의하시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-외형</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>외관 사진: 구체적인 형상을 확인할 수 있는 선명한 외관 사진을 부착하기 바랍니다. 여러 가지 구성품이 있을 경우 각각에 대한 외관사진을 부착하시기 바랍니다.</li>
			<li>외관 설명: 외관사진의 각 부분을 지적하고 주요 부분에 대한 설명을 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-치수</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>본 제품의 각 부분품(본체)의 외관도면을 그리고, 각 부분을 지적하여 표시하고, 해당되는 부분에 대한 치수 및 중량을 아래의 예와 같이 작성해 주시기 바랍니다.</li>
			<li>중량에 있어서는 본체 및 구성품의 중량을 각각 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
	<%}else if(num.equals("12")){%>
	<h1>모양 및 구조-작용원리</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>용도 및 특성, 당해 제품을 개발하기 위하여 적용한 원리 등에 관한 내용을 요약하여 기술하시면 됩니다.</li>
			<li>‘사용목적’ 이외의 임상적 효능.효과 및 이와 관련된 용어가 표방 되지 않도록 주의하시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-외형</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>외관 사진: 구체적인 형상을 확인할 수 있는 선명한 외관 사진을 부착하기 바랍니다. 여러 가지 구성품이 있을 경우 각각에 대한 외관사진을 부착하시기 바랍니다.</li>
			<li>외관 설명: 외관사진의 각 부분을 지적하고 주요 부분에 대한 설명을 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-치수</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>본 제품의 각 부분품(본체)의 외관도면을 그리고, 각 부분을 지적하여 표시하고, 해당되는 부분에 대한 치수 및 중량을 아래의 예와 같이 작성해 주시기 바랍니다.</li>
			<li>중량에 있어서는 본체 및 구성품의 중량을 각각 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
<%}else if(num.equals("13")){%>
	<h1>성능</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>용도 및 특성, 당해 제품을 개발하기 위하여 적용한 원리 등에 관한 내용을 요약하여 기술하시면 됩니다.</li>
			<li>‘사용목적’ 이외의 임상적 효능.효과 및 이와 관련된 용어가 표방 되지 않도록 주의하시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-외형</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>외관 사진: 구체적인 형상을 확인할 수 있는 선명한 외관 사진을 부착하기 바랍니다. 여러 가지 구성품이 있을 경우 각각에 대한 외관사진을 부착하시기 바랍니다.</li>
			<li>외관 설명: 외관사진의 각 부분을 지적하고 주요 부분에 대한 설명을 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
	<h1>모양 및 구조-치수</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>본 제품의 각 부분품(본체)의 외관도면을 그리고, 각 부분을 지적하여 표시하고, 해당되는 부분에 대한 치수 및 중량을 아래의 예와 같이 작성해 주시기 바랍니다.</li>
			<li>중량에 있어서는 본체 및 구성품의 중량을 각각 작성해 주시기 바랍니다.</li>
		</ul>
	</div>
<%}else if(num.equals("14")){%>
	<h1>기타</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>기타</li>
		</ul>
	</div>
<%}else if(num.equals("15")){%>
	<h1>목차</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	<ul>
		<li> 국제표준화기술문서 개요에 대한 전체 목차를 작성한다.</li>
	</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide11.png">
<%}else if(num.equals("16")){%>
	<h1>기기설명</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	<ul>
		<li> 제조자의 의도된 사용목적을 포함한 일반적 설명(품목개요, 원재료, 저장방법 및 사용기한)을 기재한다.</li>
		<li> 진단 및 치료 대상이 되는 의도된 환자군 및 의학적 상태, 그리고	환자 선택기준과 같은 기타 고려사항을 기재한다.</li>
		<li> 작동원리에 대하여 설명하고 필요한 경우 그림을 삽입한다.</li>
		<li> 「의료기기 품목 및 품목별 등급에 관한 규정」에 따른 품목분류 및 등급을 기재한다.</li>
		<li> 유사기기 및 기 허가된 제품과 비교하여 새로운 기술적 특성을 기재한다.</li>
		<li> 한벌구성 되거나 조합되어 사용되는 의료기기 및 구성품 등에 대한 설명 및 목록을 기재한다.</li>
		<li> 주요 기술적 특성을 기재한다.</li>
		<li> 주요 기술적 특성에 포함된 원재료 및 인체 직.간접 접촉하는 원재료에 대하여 부분품별로 원재료명 또는 성분명, 규격, 분량(또는 수량)을	기재한다.</li>
	</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide12.png">
<%}else if(num.equals("17")){%>
	<h1>제품사양</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	<ul>
		<li> 첨부문서(안), 카달로그 등 최종 사용자가 사용할 수 있도록 제작된 자료에 일반적으로 기재되는 제품의 특성, 모양 및 구조 등을 기재한다.</li>
	</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide13.png">
<%}else if(num.equals("18")){%>
	<h1>유사기기 및 기 허가된 제품에 대한 참고자료</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	<ul>
		<li> 제조자가 제조한 이전 기기들에 대한 사항을 기재한다.</li>
		<li> 외국의 사용 현황</li>
		<li type="none">
			<ul>
				<li> 신청기기의 허가국가의 수, 사용국가의 수, 국가명을 기재하고, 각 국에서의 판매명, 허가일, 사용개시일, 대략적인 연간 사용수, 사용목적, 효능 및 효과, 사용방법 기재한다.</li>
				<li> 외국의 사용현황 중 사용 시 보고된 부작용과 관련된 사항을 기재한다. 신청기기를 수입하고 있는 국가에서 사용되지 않는 경우 그 사유를 기재한다.</li>
			</ul>
		</li>
		<li> 국내.외 유사기기들에 대한 사항</li>
		<li type="none">
			<ul>
				<li> 신청기기와 구조.원리 및 임상적으로 유사한 기허가 의료기기와 안전성, 유효성, 제품의 특징 등에 대하여 비교하고, 유사점과 차이점을 설명한다.</li>
				<li> 신청기기의 대상 질환에 대한 기존 의료기기의 사용 유무를 기재하고, 유효성과 임상적 작용원리를 서술한다. 또한 신청기기의 특징을 기존 기기와 비교하여 새로운 사항 또는 개량된 점을 명확히 기재한다.</li>
			</ul>
		</li>
	</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide14.png">
<%}else if(num.equals("19")){%>
	<h1>표시기재(안)</h1>
	<div style="padding:5px; background-color:#EAEAEA">
	<ul>
		<li> 표시기재(안)에는 아래 사항이 포함되어야 한다.</li>
		<li type="none">
			<ul>
				<li>용기 및 외부포장의 표시기재 사항</li>
				<li>첨부문서(안), 사용설명서(안)</li>
				<li>카달로그(안)</li>
			</ul>
		</li>
	</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide15_1.png">
	<img src="/resources/img/forms/guide/form_guide15_2.png">
	<img src="/resources/img/forms/guide/form_guide15_3.png">
	<img src="/resources/img/forms/guide/form_guide15_4.png">
	<img src="/resources/img/forms/guide/form_guide15_5.png">
	<img src="/resources/img/forms/guide/form_guide15_6.png">
	<img src="/resources/img/forms/guide/form_guide15_7.png">
	<img src="/resources/img/forms/guide/form_guide15_8.png">
<%}else if(num.equals("20")){%>
	<h1>기기설계 계요</h1>
	<img src="/resources/img/forms/guide/form_guide16.png">
	<img src="/resources/img/forms/guide/form_guide16_2.png"><br><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide16_3.png">
<%}else if(num.equals("21")){%>
	<h1>제조공정 요약</h1>
	<img src="/resources/img/forms/guide/form_guide17.png" ><br><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide17_1.png">
	<img src="/resources/img/forms/guide/form_guide17_2.png">
	<img src="/resources/img/forms/guide/form_guide17_3.png">
<%}else if(num.equals("22")){%>
	<h1>설계 및 제조장소 요약</h1>
	<img src="/resources/img/forms/guide/form_guide18.png" ><br><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide18_1.png" >
<%}else if(num.equals("23")){%>
	<h1>필수원칙 체크 리스트</h1>
	<img src="/resources/img/forms/guide/form_guide19.png" ><br><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide19_1.png" >
<%}else if(num.equals("24")){%>
	<h1>위험분석과 관리요약</h1>
	<h2>위험분석과 관리요약</h2>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 제조업체의 위험분석 및 관리가 ISO 14971 Medical devices-Application of risk management to medical devices에 준하여 실시되었음을 기재한다.</li>
		</ul>
	</div>
	<h2>위험분석 시스템</h2>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
		<li> 위험관리의 조직체계에 관한 사항</li>
		<li type="none">
			<ul>
				<li> 제조업체가 어떠한 위험관리조직과 문서에 근거하여 위험관리 활동을 수행하였음을 간략하게 기재한다.</li>
			</ul>
		</li>
		<li> 위험분석의 실시 상황</li>
		<li type="none">
			<ul>
				<li>ISO 14971 Medical devices-Application of risk management to medical devices의 항목 즉, 위험분석 실시 구성원, 위험관리의 계획, 위험분석, 위험평가, 위험관리, 잔여위험평가, 포괄적인 잔여위험 평가시행 내용을 간략하게 기재한다.</li>
			</ul>
		</li>
		</ul>
	</div>
	<h2>주요한 위험요소</h2>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
		<li>안전대책 대응이 요구되는 위험요소</li>
		<li type="none">
			<ul>
				<li>신청기기와 관련 있는 위험요소 중에서, 안전대책상 대응이 요구되는 항목에 대하여, 해당 위험요소와 관련된 위험분석 결과를 간략하게 기재한다.</li>
			</ul>
		</li>
		<li>중대한 위험요소에 대한 위험분석 및 위험경감 조치의 결과</li>
		<li type="none">
			<ul>
				<li>설계개발 시에 실시한 위험관리에서 위험평가의 결과, 위험관리가 필요하다고 판단한 위험요소를 식별함과 동시에 경감조치의 내용 및 그 결과에 대하여 표 5의 예시와 같이 간략하게 기재한다.</li>
			</ul>
		</li>
		</ul>
	</div>
	<br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide20.png" >
	<img src="/resources/img/forms/guide/form_guide20_1.png" >
<%}else if(num.equals("25")){%>
	<h1>규격에 대한 적합선언</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>신청기기가 필수원칙과 의료기기의 제조관리 및 품질관리 원칙에 따라 제조된 것이라는 자가선언하는 자가선언서를 아래의 예시와 같이 첨부한다. 자가선언은 국제규격 ISO 17050-1 「Conformity assessment- Supplier's declaration of conformity - Part 1: General requirements」에 따른다. 자가선언서는 신청품목이 ‘의료기기 안전성과 성능의 필수원칙(Essential Principles of Safety and Performance of Medical Devices, GHTF SG1)’에 규정된 ‘필수원칙’과 「의료기기 제조 및 품질관리기준(식약처 고시)」전문에 제시된 ‘품질관리기준’에 적합함을 선언하는것이다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide21.png" >
	<img src="/resources/img/forms/guide/form_guide21_2.png" >
<%}else if(num.equals("26")){%>
	<h1>기기설계의 유효성 확인 개요</h1>
		<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>신청기기의 필수원칙에 대한 적합성을 규격 등을 이용하여 증명 하거나, 또는 적합성의 근거로 시험을 사용할 수 있다. 이러한 적합성 증명을 위해 사용된 규격과 시험방법을 항목별로 기재한다. 해당제품의 특성(생명유지 기기, 비-생명유지기기, 이식형기기 등)에 따라 관련 시험규격, 제품특성 등을 서술식으로 기재한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide22.png" >
<%}else if(num.equals("27")){%>
	<h1>전기 · 기계적 안전성​</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 실시한 전기.기계적 안전에 관한 시험에 대하여 시험기관, 시험기간, 시험방법, 시험규격, 성적서 발급일 등을 각 시험별로 아래의 양식에 간략히 기재한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide23.png" >
<%}else if(num.equals("28")){%>
	<h1>생물학적 안전성 시험 요약​</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 실시한 생물학적 안정성에 관한 시험에 대해 시험항목, 시험방법, 시험결과, 시험기관, 성적서 발급일 등을 각 시험별로 아래의 양식에 간략히 기재한다. 이때 필요한 독성소견, 시험결과의 해석 등을 제시하고 고찰한다. 양성대조 및 음성 대조의 필요성을 고찰하고, 양성대조 및 음성대조를 사용한 경우에는 적절한 값을 기재한다. 멸균과 관련된 무균시험 및 EO가스 잔류량 시험을 포함한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide24.png" >
<%}else if(num.equals("29")){%>
	<h1>방사선에 관한 안전성 시험 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 실시한 방사선 안전성과 관련된 시험과 관련된 정보 시험기관, 시험기간, 성적서발급일, 시험규격, 시험결과 등을 시험별로 아래의 양식에 간략히 기재한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide25.png" >
<%}else if(num.equals("30")){%>
	<h1>전자파 안전성 시험 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 실시한 전자파 안전에 관한 시험에 대하여 시험기관, 시험기간, 시험방법, 시험규격, 성적서 발급일 등을 각 시험별로 아래의 양식에 간략히기재한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide26.png" >
<%}else if(num.equals("31")){%>
	<h1>성능에 관한 자료 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 성능을 증명하는 시험에 대하여 시험항목, 시험방법, 시험결과, 시험기관, 성적서발급일, 시험규격 등을 시험별로 아래의 양식에 간략히기재한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide27.png" >
<%}else if(num.equals("32")){%>
	<h1>소프트웨어 검증 및 유효성 확인 자료 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 소프트웨어의 검증 및 유효성 확인은 의료기기 소프트웨어 밸리데이션 가이드라인을 참고하여 작성한다. 기본적으로 의료기기에 포함되거나, 제조업체에 의해서 생산 및 품질시스템 운영에 사용되는 소프트웨어는 품질경영시스템(의료기기 제조 및 품질관리 기준)과 위험관리시스템(ISO 14971)과 조화를 이루는 범위에서 개발.유지되고 사용되어야하며 완성된 기기에 사용되는 소프트웨어의 설계 및 개발과정과 소프트웨어의 검증에 대한 증거를 포함해야 한다. 이러한 소프트웨어의 개발에 대한 품질보증활동은 소프트웨어 개발 활동과 유지보수(변경관리) 활동으로 구분된다. 가이드라인에 기재된 각 활동별로 이행할 필요성이 있는 구체적인 세부활동은 아래와 같다.</li>
			<li type="none"><img src="/resources/img/forms/guide/form_guide28_2.png" ></li>
			<li>일반적으로 이러한 정보는 최종 출시 전 회사내부에서 수행되고 아울러, 가상 또는 실제 사용자 환경에서 수행된 검증 및 유효성 확인 검사에 대한 모든 요약결과를 일반적으로 포함해야 한다. 다른 하드웨어의 설정에 해당되는 경우 라벨링(표시기재사항)에 명시된 운영체계에 관한 모든 것이 다루어 져야 한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide28.png" >
<%}else if(num.equals("33")){%>
	<h1>물리, 화학적 특성 자료 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 실시한 물리.화학적 특성에 관한 시험의 시험기관, 시험기간, 성적서 발급일, 시험규격, 검액제조조건과 시험결과에 대하여 시험별로 아래 양식에 간략히 기재한다.</li>
			<li> 고분자재료, 흡수성재료, 치과재료 등을 응용한 의료기기에 있어서는 해당 재료의 특성에 따라 화학구조, 적외선흡수, 자외선흡수, 원자흡광, 융점, 비점, 내구성, 경도, 색조, 용출물, 표면특성 등의 항목에 대해 평가하고 기재한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide29.png" >
<%}else if(num.equals("34")){%>
	<h1>동물유래 물질에 대한 안전성 자료 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 기기에 사용된, 동물 기원의 모든 물질에 대한 목록을 기재한다. 이 물질들의 출처/공급원(donor) 선택에 관한 상세한 정보와 이러한 조직, 세포 및 물질의 수확, 가공, 보존, 검사, 취급에 대한 상세한 내용을 기재한다. 제조방법이, 특히 바이러스 및 다른 전염성 물질에 대한 생물학적 위험을 최소화하고 있다는 것을 입증하는 연구결과를 기재한다. 출처/공급원의 스크리닝과 수확(harvesting)방법에 대해 충분히 설명하고 제조공정이 생물학적 위험을 최소화하고 있음을 입증하기 위한 공정검증 결과를 기재한다. 즉, 출처/공급원에서부터 완성된 기기까지 추적할 수 있는 기록관리 시스템을 완전히 기술하여야 한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide30.png" >
<%}else if(num.equals("35")){%>
	<h1>안전성 시험 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>실시한 안정성에 대한 시험결과의 간략한 내용과 저장 및 보관 방법을 아래 양식에 간략히 기재한다. 가능한 경우, 시험보고서의 측정결과, 계측결과 등은 구체적인 수치로 제시한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide31.png" >
<%}else if(num.equals("36")){%>
	<h1>복합ㆍ조합된 의약품에 대한 정보 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>
				의료기기가 의약품을 포함하고 있는 경우, 의약품의 식별과 출처, 의도적으로 포함된 이유, 의도된 적용에서 안정성 및 성능 등에 대한 상세한 정보를 기재한다.
			</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide32.png" >
<%}else if(num.equals("37")){%>
	<h1>동물시험 자료 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 동물을 대상으로 한 성능시험 자료에 대하여 시험기관, 책임자, 시험제목, 시험 목적, 시험기간, 사용동물 정보, 시험방법, 측정항목, 시험결과 및 결론을 아래표에 간략히 기재한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide33.png" >
<%}else if(num.equals("38")){%>
	<h1>임상시험 자료 요약</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 신청기기에 대하여 수행된 임상시험은 의료기기 임상시험실시기준(Good Clinical Practice)을 준수하여야 한다. 실시된 시험방법과 시험성적을 기재한다. 시험방법에는 시험목적, 시험의 종류(비교임상, 일반임상 등), 피험자 선정기준 및 제외 기준, 피험자수, 시험방법, 시험기간, 관찰기간, 병용요법, 검사 및 관찰 항목, 검사 및 관찰시기, 일.이차 유효성 평가기준.평가방법.해석방법, 임상시험 책임자, 실시기관 명칭과 기관 수 등이 해당된다.</li>
			<li> 대상선택기준, 제외기준, 사용방법 등의 설정근거, 증례구성 내역(안전성평가대상 증례 수, 유효성 평가대상 증례 수 등), 중지 탈락 프로토콜이탈 등의 증례에 대한 이유와 내역, 환자배경(성별, 연령, 입원 외래, 기저질환, 사용 전 중증도, 유병기간, 합병증, 사용기간, 사용량 등), 시험성적, 결론을 기재한다. 고장의 경우 시험 중 고장 종류별 발현빈도, 고장원인별 발현빈도, 고장 증례를 기재하고 고장의 발현상황과 조치, 경과 등에 대해 아래양식에 간략히 기재한다.</li>
		</ul>
	</div><br>
	<hr>[예시]<hr><br>
	<img src="/resources/img/forms/guide/form_guide34.png" >
<%}else if(num.equals("39")){%>
	<h1>목차</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 첨부자료에 대한 전체 목차를 작성한다.</li>
		</ul>
	</div>
<%}else if(num.equals("40")){%>
	<h1>제조공정에 관한 자료</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li> 자료목차</li>
			<li type="none">
				<ul>
					<li>자료목차</li>
					<li type="none">
						<ul>
							<li>제조공정에 관한 자료의 목차를 기재한다.</li>
						</ul>
					</li>
					<li>설계와 제조정보</li>
					<li type="none">
						<ul>
							<li>「의료기기 제조 및 품질관리기준」적합성평가기준에 따른 품질문서를 제출한다. 각 자료는 다음을 포함하여 2.4.항에서 요약한 정보와의 연관성을 명확히 하여 제출한다.</li>
							<li>제조조건에 따라 신청품목의 품질, 물성 등 안전성 및 품질확보에 영향을 미치는 공정(첨가물질, 용매처리 등의 처리조건, 반응조건, 정제법, 코팅방법, 멸균방법, 멸균조건 등)에 대한 세부조건이 명시된 자료를 제출한다.</li>
							<li>개별 제품의 멸균 후 조합 또는 한벌 구성한 의료기기 완제품 멸균을 반복한 제품의 경우에는 반복멸균이 각각의 의료기기의 원재료 특성 저하에 영향을 주지 않음을 알 수 있는 자료를 제출하고, 의약품을 조합하여 사용하는 경우 조합된 의료기기 전체를 멸균하는 것이 해당 의약품의 안전성 및 품질에 영향을 주지 않음을 알 수 있는 자료를 제출한다.</li>
							<li>최종제품이 동물유래성분을 함유하거나 제조과정 중 동물유래성분을 사용하는 경우 동물의 명칭, 원산국, 연령, 사용부위, 처리공정, 성분명에 대한 자료를 제출한다. 처리공정에 대한 자료에는 공여자 선별검사의 내용, 제조공정 중의 세균, 진균, 바이러스 등의 불활화/제거처리의 방법 및 그 밖의 안전성과 품질 확보의 관점에서 필요한 사항에 대한 자료를 제출한다.</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>
<%}else if(num.equals("41")){%>
	<h1>위험분석 보고서</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>자료목차</li>
			<li type="none">
				<ul>
					<li>자료목차</li>
					<li type="none">
						<ul>
							<li>위험분석 보고서의 목차를 기재한다.</li>
						</ul>
					</li>
					<li>설계와 제조정보</li>
					<li type="none">
						<ul>
							<li>「의료기기 제조 및 품질관리기준」에 따른 해당 제품의 기획, 개발, 설계 및 생산, 출하의 전 라이프사이클 공정과정에서 위해요인 (Hazard)을 파악하고 발생 가능한 위해(Harm)의 발생을 최소화 및 차단함으로써 위험(Risk)을 최소화하기 위한 위험관리계획서는 다음 항목을 포함하도록 작성하여 제출한다.</li>
							<li  type="none">
								<ul>
									<li>개요 및 적용범위</li>
									<li>용어의 정의</li>
									<li>제품에 대한 개요</li>
									<li>위험관리의 제품 수명성 적용</li>
									<li>책임과 권한</li>
									<li>위험관리활동을 위한 단계별 요구사항</li>
									<li>위험허용기준</li>
									<li>위험검증활동</li>
									<li>생산 및 생산 후 정보수집 및 관리절차</li>
									<li>법적 요구사항 및 참조규격, 지침</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>
<%}else if(num.equals("42")){%>
	<h1>제품검증 및 유효성 확인 자료</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>자료목차</li>
			<li type="none">
				<ul>
					<li>자료목차</li>
					<li type="none">
						<ul>
							<li>제품검증 및 유효성 확인을 위한 자료의 목차를 기재한다.</li>
						</ul>
					</li>
					<li>제품검증 및 유효성 확인을 위한 시험성적서 또는 자료</li>
					<li type="none">
						<ul>
							<li>「당해 제품의 검증 및 유효성 확인을 위한 시험성적서 또는 자료로 2.7.2항부터 2.7.13항에 해당하는 자료를 제출한다. 해당 자료의 요건은 「의료기기 허가․신고․심사 등에 관한 규정」제26조(첨부자료의 요건)를 적용한다.</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>
<%}else if(num.equals("43")){%>
	<h1>참고문헌</h1>
	<div style="padding:5px; background-color:#EAEAEA">
		<ul>
			<li>기술문서 개요 및 첨부자료들을 작성, 제출하는데 사용된 참고문헌들 (발표논문, 지침 등)의 복사본을 제출한다. 각 참고문헌들은 해당 자료와의 상관관계를 명확히 표시하여 제출한다.</li>
		</ul>
	</div>
<%}%>
</body>
</html>