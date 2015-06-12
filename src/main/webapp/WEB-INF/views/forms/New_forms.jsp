<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/resources/css/forms/style.css">
		<!--[if gte IE 9]>
		  <style type="text/css">
			.gradient {
			   filter: none !important;
			}

			.tool-container.tool-top{
				border-bottom: none;
			}

		  </style>
		<![endif]-->
<link rel="stylesheet" href="/resources/css/forms/arcodion.css"><!--arcodioEn css-->
<link rel="stylesheet" href="/resources/css/forms/firstForm.css"><!--firstForm css-->
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<!--text edieter s-->
<script type="text/javascript" src="/resources/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
<!--text edieter e-->
	<meta name="robots" content="all">
	<style type="text/css">
	.firstForm{
	 width:100%;
	 border: 1px solid black;
	}
	a{
	color:grey;
	text-decoration:none;
	}
	a:hover{
	color:#369;
	}
	.ellipsis { width: 100px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden; } 
	</style>
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
							<td id="side_menu_place2" rowspan="1">
								<table id="side_menu" style="border-collapse:collapse;">
									<tr><td id="side_down_icon"><b class="side_img">▼</b><b>STED Forms</b></td></tr>
									<tr>
										<td>
											<c:choose>
												<c:when test="${list_seq=='1'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='2'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='3'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='4'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='5'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='6'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='7'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='8'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='9'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='10'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='11'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='12'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='13'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='14'}"><jsp:include page="/resources/inc/forms_side/New_list1.jsp"/></c:when>
												<c:when test="${list_seq=='15'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='16'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='17'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='18'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='19'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='20'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='21'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='22'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='23'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='24'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='25'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='26'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='27'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='28'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='29'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='30'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='31'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='32'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='33'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='34'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='35'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='36'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='37'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='38'}"><jsp:include page="/resources/inc/forms_side/New_list2.jsp"/></c:when>
												<c:when test="${list_seq=='39'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='40'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='41'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='42'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:when test="${list_seq=='43'}"><jsp:include page="/resources/inc/forms_side/New_list3.jsp"/></c:when>
												<c:otherwise>
													<jsp:include page="/resources/inc/forms_side/New_list1.jsp"/>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</table>
							</td>
							<td id="content_place">
								<jsp:include page="/resources/inc/forms_tab/forms_tab.jsp"/>
								<br>
								<table style="width:962px; margin:0 auto; border:1px solid black; background-color:#102967;" cellpadding="0" cellspacing="1">
									<tr>
										<td style="color:#ffffff;" width="210px">
											<jsp:include page="/resources/inc/forms_tab/forms_tab_under.jsp"/>
										</td>
										<td style="color:#ffffff;">
											<div id="percent">
												계산중
											</div>
										</td>
										<td>
											<div class="container">
												<input type="radio" class="radio" name="progress" value="twentyfive" id="twentyfive" checked>
											    <div class="progress">
											      <div class="progress-bar" id="progressResult"></div>
											    </div>
											 </div>
											 <!--ck_check-->
											 <input type="hidden" id="ck_form1" value="${forms.ck_form1}">
											 <input type="hidden" id="ck_form2" value="${forms.ck_form2}">
											 <input type="hidden" id="ck_form3" value="${forms.ck_form3}">
											 <input type="hidden" id="ck_form4" value="${forms.ck_form4}">
											 <input type="hidden" id="ck_form5" value="${forms.ck_form5}">
											 <input type="hidden" id="ck_form6" value="${forms.ck_form6}">
											 <input type="hidden" id="ck_form7" value="${forms.ck_form7}">
											 <input type="hidden" id="ck_form8" value="${forms.ck_form8}">
											 <input type="hidden" id="ck_form9" value="${forms.ck_form9}">
											 <input type="hidden" id="ck_form10" value="${forms.ck_form10}">
											 <input type="hidden" id="ck_form11" value="${forms.ck_form11}">
											 <input type="hidden" id="ck_form12" value="${forms.ck_form12}">
											 <input type="hidden" id="ck_form13" value="${forms.ck_form13}">
											 <input type="hidden" id="ck_form14" value="${forms.ck_form14}">
											 <input type="hidden" id="ck_form15" value="${forms.ck_form15}">
											 <input type="hidden" id="ck_form16" value="${forms.ck_form16}">
											 <input type="hidden" id="ck_form17" value="${forms.ck_form17}">
											 <input type="hidden" id="ck_form18" value="${forms.ck_form18}">
											 <input type="hidden" id="ck_form19" value="${forms.ck_form19}">
											 <input type="hidden" id="ck_form20" value="${forms.ck_form20}">
											 <input type="hidden" id="ck_form21" value="${forms.ck_form21}">
											 <input type="hidden" id="ck_form22" value="${forms.ck_form22}">
											 <input type="hidden" id="ck_form23" value="${forms.ck_form23}">
											 <input type="hidden" id="ck_form24" value="${forms.ck_form24}">
											 <input type="hidden" id="ck_form25" value="${forms.ck_form25}">
											 <input type="hidden" id="ck_form26" value="${forms.ck_form26}">
											 <input type="hidden" id="ck_form27" value="${forms.ck_form27}">
											 <input type="hidden" id="ck_form28" value="${forms.ck_form28}">
											 <input type="hidden" id="ck_form29" value="${forms.ck_form29}">
											 <input type="hidden" id="ck_form30" value="${forms.ck_form30}">
											 <input type="hidden" id="ck_form31" value="${forms.ck_form31}">
											 <input type="hidden" id="ck_form32" value="${forms.ck_form32}">
											 <input type="hidden" id="ck_form33" value="${forms.ck_form33}">
											 <input type="hidden" id="ck_form34" value="${forms.ck_form34}">
											 <input type="hidden" id="ck_form35" value="${forms.ck_form35}">
											 <input type="hidden" id="ck_form36" value="${forms.ck_form36}">
											 <input type="hidden" id="ck_form37" value="${forms.ck_form37}">
											 <input type="hidden" id="ck_form38" value="${forms.ck_form38}">
											 <input type="hidden" id="ck_form39" value="${forms.ck_form39}">
											 <input type="hidden" id="ck_form40" value="${forms.ck_form40}">
											 <input type="hidden" id="ck_form41" value="${forms.ck_form41}">
											 <input type="hidden" id="ck_form42" value="${forms.ck_form42}">
											 <input type="hidden" id="ck_form43" value="${forms.ck_form43}">
										</td>
										<td style="padding-right:8px;">
											<input type="image" src="/resources/img/forms/reset.png" title="서식 초기화" onclick="resetForm('<%=request.getParameter("forms_seq")%>', '<%=request.getParameter("list_seq")%>', '<%=request.getParameter("contents_name")%>');">
										</td>
										<td style="border:1px solid black; padding:3px; background-color:#EAEAEA; " align="right" width="510px">
											<img src="/resources/img/forms/guide_text.gif" width="400px">&nbsp;&nbsp;&nbsp;
											<input type="image" src="/resources/img/btn/guide.png" width="40px" title="가이드 라인" onclick="guide(<%=request.getParameter("list_seq")%>)"/>
										</td>
									</tr>
								</table>
									<c:choose>
										<c:when test="${list_seq=='1'}"><jsp:include page="/resources/inc/forms/New_forms1.jsp"/></c:when>
										<c:when test="${list_seq=='2'}"><jsp:include page="/resources/inc/forms/New_forms2.jsp"/></c:when>
										<c:when test="${list_seq=='3'}"><jsp:include page="/resources/inc/forms/New_forms3.jsp"/></c:when>
										<c:when test="${list_seq=='4'}"><jsp:include page="/resources/inc/forms/New_forms4.jsp"/></c:when>
										<c:when test="${list_seq=='5'}"><jsp:include page="/resources/inc/forms/New_forms5.jsp"/></c:when>
										<c:when test="${list_seq=='6'}"><jsp:include page="/resources/inc/forms/New_forms6.jsp"/></c:when>
										<c:when test="${list_seq=='7'}"><jsp:include page="/resources/inc/forms/New_forms7.jsp"/></c:when>
										<c:when test="${list_seq=='8'}"><jsp:include page="/resources/inc/forms/New_forms8.jsp"/></c:when>
										<c:when test="${list_seq=='9'}"><jsp:include page="/resources/inc/forms/New_forms9.jsp"/></c:when>
										<c:when test="${list_seq=='10'}"><jsp:include page="/resources/inc/forms/New_forms10.jsp"/></c:when>
										<c:when test="${list_seq=='11'}"><jsp:include page="/resources/inc/forms/New_forms11.jsp"/></c:when>
										<c:when test="${list_seq=='12'}"><jsp:include page="/resources/inc/forms/New_forms12.jsp"/></c:when>
										<c:when test="${list_seq=='13'}"><jsp:include page="/resources/inc/forms/New_forms13.jsp"/></c:when>
										<c:when test="${list_seq=='14'}"><jsp:include page="/resources/inc/forms/New_forms14.jsp"/></c:when>
										<c:when test="${list_seq=='15'}"><jsp:include page="/resources/inc/forms/New_forms15.jsp"/></c:when>
										<c:when test="${list_seq=='16'}"><jsp:include page="/resources/inc/forms/New_forms16.jsp"/></c:when>
										<c:when test="${list_seq=='17'}"><jsp:include page="/resources/inc/forms/New_forms17.jsp"/></c:when>
										<c:when test="${list_seq=='18'}"><jsp:include page="/resources/inc/forms/New_forms18.jsp"/></c:when>
										<c:when test="${list_seq=='19'}"><jsp:include page="/resources/inc/forms/New_forms19.jsp"/></c:when>
										<c:when test="${list_seq=='20'}"><jsp:include page="/resources/inc/forms/New_forms20.jsp"/></c:when>
										<c:when test="${list_seq=='21'}"><jsp:include page="/resources/inc/forms/New_forms21.jsp"/></c:when>
										<c:when test="${list_seq=='22'}"><jsp:include page="/resources/inc/forms/New_forms22.jsp"/></c:when>
										<c:when test="${list_seq=='23'}"><jsp:include page="/resources/inc/forms/New_forms23.jsp"/></c:when>
										<c:when test="${list_seq=='24'}"><jsp:include page="/resources/inc/forms/New_forms24.jsp"/></c:when>
										<c:when test="${list_seq=='25'}"><jsp:include page="/resources/inc/forms/New_forms25.jsp"/></c:when>
										<c:when test="${list_seq=='26'}"><jsp:include page="/resources/inc/forms/New_forms26.jsp"/></c:when>
										<c:when test="${list_seq=='27'}"><jsp:include page="/resources/inc/forms/New_forms27.jsp"/></c:when>
										<c:when test="${list_seq=='28'}"><jsp:include page="/resources/inc/forms/New_forms28.jsp"/></c:when>
										<c:when test="${list_seq=='29'}"><jsp:include page="/resources/inc/forms/New_forms29.jsp"/></c:when>
										<c:when test="${list_seq=='30'}"><jsp:include page="/resources/inc/forms/New_forms30.jsp"/></c:when>
										<c:when test="${list_seq=='31'}"><jsp:include page="/resources/inc/forms/New_forms31.jsp"/></c:when>
										<c:when test="${list_seq=='32'}"><jsp:include page="/resources/inc/forms/New_forms32.jsp"/></c:when>
										<c:when test="${list_seq=='33'}"><jsp:include page="/resources/inc/forms/New_forms33.jsp"/></c:when>
										<c:when test="${list_seq=='34'}"><jsp:include page="/resources/inc/forms/New_forms34.jsp"/></c:when>
										<c:when test="${list_seq=='35'}"><jsp:include page="/resources/inc/forms/New_forms35.jsp"/></c:when>
										<c:when test="${list_seq=='36'}"><jsp:include page="/resources/inc/forms/New_forms36.jsp"/></c:when>
										<c:when test="${list_seq=='37'}"><jsp:include page="/resources/inc/forms/New_forms37.jsp"/></c:when>
										<c:when test="${list_seq=='38'}"><jsp:include page="/resources/inc/forms/New_forms38.jsp"/></c:when>
										<c:when test="${list_seq=='39'}"><jsp:include page="/resources/inc/forms/New_forms39.jsp"/></c:when>
										<c:when test="${list_seq=='40'}"><jsp:include page="/resources/inc/forms/New_forms40.jsp"/></c:when>
										<c:when test="${list_seq=='41'}"><jsp:include page="/resources/inc/forms/New_forms41.jsp"/></c:when>
										<c:when test="${list_seq=='42'}"><jsp:include page="/resources/inc/forms/New_forms42.jsp"/></c:when>
										<c:when test="${list_seq=='43'}"><jsp:include page="/resources/inc/forms/New_forms43.jsp"/></c:when>
										<c:otherwise>
											<jsp:include page="/resources/inc/forms/New_forms1.jsp"/>
										</c:otherwise>
									</c:choose>
								<br>
								<div>
									<input type="hidden" value="${forms.forms_seq}" id="forms_seq" name="forms_seq">
									<input type="image" src="/resources/img/btn/yetSave_button.png" width="60px;" onclick="onWrite('<%=request.getParameter("list_seq")%>')">
								    <input type="image" src="/resources/img/btn/list_btn.png" width="60px;" onclick="goUrl('/MyPage.do?page_seq=6')">
									<input type="image" src="/resources/img/btn/final_button.png" width="71px" onclick="finalSave(${forms.forms_seq})">
								</div><br><br><br><br>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<jsp:include page="/resources/inc/Main_footer.jsp"/>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
		<script type="text/javascript" src="/resources/js/forms/NewForm.js"></script>
		<!--arcodion s-->
        <script type="text/javascript" src="/resources/js/account/jquery.accordion.2.0.js" ></script>
        <script type="text/javascript">
            $('#example2').accordion({
                //canToggle: true
            });
            $(".loading").removeClass("loading");
        </script>
		<!--arcodion e-->
			<div style="padding:10px; vertical-align:middle; width:30px; height:30px; background-color:#102967; color:#ffffff; position:fixed; bottom:100px; right:2px; border-top:3px solid grey;">
				<a href="#" style="color:#ffffff;">TOP</a>
			</div>
			<div style="padding:5px 5px 5px 2px; vertical-align:middle; width:100px;  background-color:#DDDDDE; position:fixed; bottom:170px; right:2px; border-top:3px solid grey; font-size:5px;">
				<table width="100%">
					<tr>
						<td height="40px;" style="border-right:2px solid #ffffff;" align="center">
							<input type="text" value="1" id="min" style="border:none; width:15px; background:none; font-weight:bolder;" readonly> :
							<input type="text" value="60" id="sec" style="border:none; width:15px; background:none; font-weight:bolder;" readonly><br>
							<input type="image" src="/resources/img/btn/final_button.png" width="55px" onclick="finalSave(${forms.forms_seq})" style="padding-top:5px; padding-right:5px;" title="최종저장">
							<input type="hidden" value="<%=request.getParameter("list_seq") %>" id="list_seq">
						</td>						
						<td align="center">
							<a style="color:#ffffff;" id="autoState"><img src="/resources/img/forms/sandglass.gif" width="30px"></a>
						</td>
					</tr>
				</table>
			</div>
	</body>
</html>