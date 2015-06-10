<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<%
int a=-1;
//setting calendar
 Calendar cal =Calendar.getInstance(); 

  int nowYear = cal.get(Calendar.YEAR);
  int nowMonth = cal.get(Calendar.MONTH)+1; // +1
  int nowDay = cal.get(Calendar.DAY_OF_MONTH);
  request.setCharacterEncoding( "utf-8");
  String strYear = request.getParameter( "year");
  String strMonth = request.getParameter( "month");
  String forms_seq_p = request.getParameter("forms_seq");
  String forms_seq = "0";
 
    int year = nowYear; // 현재의 년을 받아옴.
    int month = nowMonth; // 현재의 월을 받아옴.
    int i;
    if(strYear != null){
     year = Integer.parseInt(strYear); 
    }
    if(strMonth != null){
     month = Integer.parseInt(strMonth);
    }
    if(forms_seq_p != null){
    	forms_seq = forms_seq_p;
    }
   
    cal.set(year,month-1,1);
    int startDay = 1;
   
    int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
    int week = cal.get(Calendar.DAY_OF_WEEK);
   String find="";
   String search="title";
    if(request.getParameter("find")!=null){
    	find=request.getParameter("find");
    }
    if(request.getParameter("search")!=null){
    	search=request.getParameter("search");
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<link rel="stylesheet" href="/resources/css/account/flipclock.css"><!--time css-->
	<link rel="stylesheet" href="/resources/css/account/arcodion.css"><!--arcodion css-->
    <style type="text/css">
    a{
    text-decoration:none;
    color:black;
    }
    
    a:hover{
    color:blue;
    font-weight:bolder;
    }
    
    .ellipsis { width: 130px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden; } 
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
								<jsp:include page="/resources/inc/my_tab/My_tab_03.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<div style="width:100%; background-color:grey; height:20px; color:#ffffff; text-align:left; padding-left:3px; vertical-align:middle;">STED Calendar</div>
								<div>
									<table id="sub_contents">
										<tr>
											<td style="border:1px solid grey; min-width:200px; width:230px; height:100%; vertical-align:top; text-align:left;">
												<table style="border-collapse:collapse; width:100%; height:100%; text-align:left;">
													<tr style="height:100%;">
														<td class="side_content" align="center" style="background-color:#DDDDDE; ">
															<br><div class="clock"></div><br>
															<script type="text/javascript">
																var clock;
																
																$(document).ready(function() {
																	clock = $('.clock').FlipClock({
																		clockFace: 'TwentyFourHourClock'
																	});
																});
															</script>
														</td>
													</tr>
													<tr>
														<td class="side_content" align="center">
															<center>
																<h2 style="padding:5px;">
																	 <b><%=year%></b>년<b><%=month%>월</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	 <input type="image" src="/resources/img/common/but-pre.png" onclick="goUrl('/MyPage.do?page_seq=7&year=<%= month-1 == 0? year-1:year%>&month=<%=month-1==0? 12:month-1%>&forms_seq=<%=forms_seq%>');">
																     <input type="image" src="/resources/img/common/but-next.png" onclick="goUrl('/MyPage.do?page_seq=7&year=<%= month+1==13?year+1:year%>&month=<%=month+1==13?1:month+1 %>&forms_seq=<%=forms_seq%>')">
																</h2>
															</center>
															<table class="cal" align = "center" cellspacing= "1" cellpadding= "2"  >
															   <tr >
															     <td style=" color: red;" class="font" align="center">일</td >
															     <td class="font" align="center">월 </td >
															     <td class="font" align="center">화 </td >
															     <td class="font" align="center">수 </td >
															     <td class="font" align="center">목 </td >
															     <td class="font" align="center">금 </td >
															     <td class="font" style="color: blue;" align="center">토</td>
															   </tr >
															   <%
															      int newLine2=0;
															      out.print( "<tr>");
															     
															      for(i=1; i<week; i++)
															      {
															       out.print("<td bgcolor='#ffffff'>&nbsp;</td>");
															       newLine2++;
															      }
															     
															      for(i=startDay; i<=endDay; i++)
															      {
															    	 	pageContext.setAttribute("year", year);
															    	    pageContext.setAttribute("month", month);
															    	    pageContext.setAttribute("i", i); 
															    	         
															       String fontColor=(newLine2==0)?
															                "red":(newLine2==6)? "blue": "black";
															       String bgColor=(nowYear==year)&&(nowMonth==month)
															                &&(nowDay==i)? "#FAF4C0": "#ffffff";
															      
															       %>
															       <td style="background-color:<%=bgColor%>;" height="25px;" width="25px;" align="center">
																       <table class="cal" style="border-collapse:collapse;">
																	       	<tr><td><a style="color:<%=fontColor%>;" href="#">&nbsp;<%=i%></a></td></tr>
																       </table> 
															       </td>
															       <%
															       a=-1;
															       newLine2++;
															           if(newLine2 ==7 &&i!=endDay)
															           {
															            out.print( "</tr><tr>" );
															            newLine2=0;
															           }
															      }
															     while(newLine2>0 && newLine2<7)
															     {
															      out.print( "<td  bgcolor='#ffffff'>&nbsp;</td>");
															      newLine2++;
															     }
															     out.print( "</tr>");
															   %>
														  </table>
														</td>
													</tr>
													<tr><td style="vertical-align:top; height:5px;"><hr></td></tr>
													<tr><td style="background-color:#DDDDDE; height:25px; padding-left:10px; color:grey;">▼ 내 일정_<b style="color:red;">[${viewInfo.title}]</b></td></tr>
													<tr>
														<td style="vertical-align:top;">
															 <ul id="example2" class="accordion">
												                <li type="none">
												                    <h3><img src="/resources/img/common/star.gif">&nbsp;서류정보</h3>
												                    <div class="panel loading">
												                    	<c:choose>
												                    		<c:when test="${viewInfo.div_mid==null}">
												                    			<font color="red">선택된 폴더 내역이 없습니다.</font>
												                    		</c:when>
												                    		<c:otherwise>
												                    		<b><img src="/resources/img/forms/Books2.png" width="20px">${viewInfo.title}</b><br><br>
												                    			<table>
												                    				<tr>
												                    					<td width="80px">중분류</td><td>${viewInfo.div_mid}</td>
												                    				</tr>
												                    				<tr>
												                    					<td>소분류</td><td>${viewInfo.div_sub}</td>
												                    				</tr>
												                    				<tr>
												                    					<td>국문명</td><td>${viewInfo.kor_name}</td>
												                    				</tr>
												                    				<tr>
												                    					<td>영문명</td><td>${viewInfo.eng_name}</td>
												                    				</tr>
												                    				<tr>
												                    					<td>등급</td><td>${viewInfo.p_class}</td>
												                    				</tr>
												                    				<tr>
												                    					<td>조합기기</td>
												                    					<td>
												                    						<c:choose>
												                    							<c:when test="${viewInfo.mix=='1'}">예</c:when>
												                    							<c:otherwise>아니요</c:otherwise>
												                    						</c:choose>
											                    						</td>
												                    				</tr>
												                    				<tr>
												                    					<td>전기사용</td>
												                    					<td>
												                    						<c:choose>
												                    							<c:when test="${viewInfo.power=='1'}">예</c:when>
												                    							<c:otherwise>아니요</c:otherwise>
												                    						</c:choose>
											                    						</td>
												                    				</tr>
												                    			</table>
												                    		</c:otherwise>
												                    	</c:choose>
												                    </div>
												                </li>
												                <li type="none">
												                    <h3><img src="/resources/img/common/star.gif">&nbsp;반려신청</h3>
												                    <div class="panel loading">
													                    <c:choose>
													                    	<c:when test="${viewInfo.help_content==null}">
													                    		<font color="red">반려신청을 하지 않은 폴더 입니다.</font>
													                    	</c:when>
													                    	<c:otherwise>
													                    	<c:if test="${viewInfo.help_state=='1'}"><b style="color:blue;">[1차_진행중]</b></c:if>
																			<c:if test="${viewInfo.help_state=='2'}"><b style="color:blue;">[1차_완료]</b></c:if>
																			<c:if test="${viewInfo.help_state=='3'}"><b style="color:blue;">[2차_진행중]</b></c:if>
																			<c:if test="${viewInfo.help_state=='4'}"><b style="color:blue;">[2차_완료]</b></c:if>
													                    	<br><br><b style="color:red;">-1차-</b><br>
													                    		${viewInfo.help_content}<br><br>
												                    		<b style="color:red;">-2차-</b><br>
												                    			${viewInfo.help_content2}<br>
													                    	</c:otherwise>
													                    </c:choose>
												                    </div>
												                </li>
												                <li type="none">
												                    <h3><img src="/resources/img/common/star.gif">&nbsp;처리기한 확인</h3>
												                    <div class="panel loading">
												                        <table>
												                        	<tr>
												                        		<td>폴더생성:</td>
												                        		<td><a href="/MyPage.do?page_seq=7&forms_seq=${viewInfo.forms_seq}&search=<%=search%>&find=<%=find%>&year=${viewInfo.add_year}&month=${viewInfo.add_month}">${viewInfo.add_year}년${viewInfo.add_month}월${viewInfo.add_day}일</a></td>
												                        	</tr>
												                        	<tr>
												                        		<td>보완신청:</td>
												                        		<td>
												                        			<c:choose>
																                    	<c:when test="${viewInfo.help_content==null}">
																                    		<font color="red">-</font>
																                    	</c:when>
																                    	<c:otherwise>
																                    		<a href="/MyPage.do?page_seq=7&forms_seq=${viewInfo.forms_seq}&search=<%=search%>&find=<%=find%>&year=${viewInfo.help_year}&month=${viewInfo.help_month}">${viewInfo.help_year}년${viewInfo.help_month}월${viewInfo.help_day}일</a>
																                    	</c:otherwise>
																                    </c:choose>
												                        		</td>
												                        	</tr>
												                        	<tr>
												                        		<td></td>
												                        		<td>
													                        		<c:choose>
																                    	<c:when test="${viewInfo.help_content==null}">
																                    		<font color="red">-</font>
																                    	</c:when>
																                    	<c:otherwise>
																                    	<c:if test="${viewInfo.help_state=='1'}"><b style="color:blue;">[1차_진행중]</b></c:if>
																						<c:if test="${viewInfo.help_state=='2'}"><b style="color:blue;">[1차_완료]</b></c:if>
																						<c:if test="${viewInfo.help_state=='3'}"><b style="color:blue;">[2차_진행중]</b></c:if>
																						<c:if test="${viewInfo.help_state=='4'}"><b style="color:blue;">[2차_완료]</b></c:if>
																                    	</c:otherwise>
																                    </c:choose>
												                        		</td>
												                        	</tr>
												                        	<tr>
												                        		<td>계산서발행:</td>
												                        		<td>
												                        			<c:choose>
												                        				<c:when test="${viewInfo.payment_year==null}">
												                        					<font color="red">-</font>
												                        				</c:when>
												                        				<c:otherwise>
												                        					<a href="/MyPage.do?page_seq=7&forms_seq=${viewInfo.forms_seq}&search=<%=search%>&find=<%=find%>&year=${viewInfo.payment_year}&month=${viewInfo.payment_month}">${viewInfo.payment_year}년${viewInfo.payment_month}월${viewInfo.payment_day}일</a>
												                        				</c:otherwise>
												                        			</c:choose>
											                        			</td>
												                        	</tr>
												                        </table>
												                    </div>
												                </li>
												            </ul>
														</td>
													</tr>
													<tr>
														<td height="65px" style="padding-left:15px;">
															총 등록된 서류 : <font color="red">${countAll}</font>건
															<table>
																<tr>
																	<td>
																		<form action="/MyPage.do" method="post" name="notice">
																			<input type="hidden" name="search" value="title">
																			<select name="forms_seq" style="width:170px;">
																				<option value="all">::폴더 선택::</option>
																				<c:forEach var="t" items="${title}">
																					<option value="${t.forms_seq}">${t.title}</option>
																				</c:forEach>
																			</select>
																			<input type="hidden" value="7" name="page_seq">
																		</form>
																	</td>
																	<td>
																		<input type="image" src="/resources/img/forms/small_search_button.png" onclick="moreInfo()">
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr><td style="vertical-align:top; height:5px;"><hr></td></tr>
													<tr>
														<td align="center">
														</td>
													</tr>
													<tr><td style="vertical-align:top; height:5px;"><hr></td></tr>
													<tr><td align="center"><input type="image" src="/resources/img/account/calendar_K-GMP homepage.png"></td></tr>
												</table>
											</td>
											<td align="center">
													<div id="sub_title" >
																<input type="image" src="/resources/img/common/but-pre.png" onclick="goUrl('/MyPage.do?page_seq=7&year=<%= month-1 == 0? year-1:year%>&month=<%=month-1==0? 12:month-1%>&forms_seq=<%=forms_seq%>')">
																&nbsp;<b style="font-size:40px;"><%=year%>년<%=month%>월</b>
														  		<input type="image" src="/resources/img/common/but-next.png" onclick="goUrl('/MyPage.do?page_seq=7&year=<%= month+1==13?year+1:year%>&month=<%=month+1==13?1:month+1 %>&forms_seq=<%=forms_seq%>')">
																<br><br><input type="image" src="/resources/img/account/calendar_today.png" width="65px" onclick = "goToday(<%=nowYear%>, <%=nowMonth%>)">
																<input type="image" src="/resources/img/account/calendar_re.png" width="65px" onclick="goUrl('/MyPage.do?page_seq=7')">
														<br><br>
													</div>
													<div id="Table" width="100%">
														<table class="cal" align = "center" cellspacing= "1" cellpadding= "2" bgcolor ="#cccccc" width="100%" >
															   <tr >
															     <td class="font" height="30px" style=" color: red;" width="14%">&nbsp; SUN</td >
															     <td class="font" width="14%">&nbsp; MON </td >
															     <td class="font" width="14%">&nbsp; TUE </td >
															     <td class="font" width="14%">&nbsp; WED </td >
															     <td class="font" width="14%">&nbsp; THU </td >
															     <td class="font" width="14%">&nbsp; FRI </td >
															     <td class="font"  style=" color: blue;" width="14%"> SAT  </td>
															    
															   </tr >
															   <%
															      int newLine=0;
															      out.print( "<tr>");
															     
															      for(i=1; i<week; i++)
															      {
															       out.print("<td height='100' bgcolor='#ffffff'>&nbsp;</td>");
															       newLine++;
															      }
															     
															      for(i=startDay; i<=endDay; i++)
															      {
															    	 	pageContext.setAttribute("year", year);
															    	    pageContext.setAttribute("month", month);
															    	    pageContext.setAttribute("i", i); 
															    	         
															       String fontColor=(newLine==0)?
															                "red":(newLine==6)? "blue": "black";
															       String bgColor=(nowYear==year)&&(nowMonth==month)
															                &&(nowDay==i)? "#FAF4C0": "#ffffff";
															      
															       %>
															       <td  height="100" style="background-color:<%=bgColor%>;" >
																       <table class="cal" width="100%" height="100"  style="border-collapse:collapse;">
																	       	<tr><td height="20" style="border-bottom: 1px solid grey" align="left"><a style="color:<%=fontColor%>;">&nbsp;<%=i%></a></td></tr>
																	       	<tr>
																	       		<td height="100" id="a" align="left">
									<!--DB print-->
																					<div style="overflow-y:auto; height:90px;" >
																						<%
																						a++;
																						%>
																						<c:forEach var="a" items="${list}">
																							<c:if test="${a.add_year==year}">
																								<c:if test="${a.add_month==month}">
																									<c:if test="${a.add_day==i}">
																										<p class="ellipsis" title="${a.title}"><a href="/MyPage.do?page_seq=7&forms_seq=${a.forms_seq}&search=title&find=<%=find%>&year=<%=year%>&month=<%=month%>"><img src="/resources/img/account/calendar_je.png" width="15px;">&nbsp;${a.title}</a></p>
																									</c:if>
																								</c:if>
																							</c:if>
																							<c:if test="${a.payment_year==year}">
																								<c:if test="${a.payment_month==month}">
																									<c:if test="${a.payment_day==i}">
																										<p class="ellipsis" title="${a.title}"><a href="/MyPage.do?page_seq=7&forms_seq=${a.forms_seq}&search=title&find=<%=find%>&year=<%=year%>&month=<%=month%>"><img src="/resources/img/account/calendar_ge.png" width="15px;">&nbsp;${a.title}</a></p>
																									</c:if>
																								</c:if>
																							</c:if>
																							<c:if test="${a.help_year==year}">
																								<c:if test="${a.help_month==month}">
																									<c:if test="${a.help_day==i}">
																										<p class="ellipsis" title="${a.title}">
																											<a href="/MyPage.do?page_seq=7&forms_seq=${a.forms_seq}&search=title&find=<%=find%>&year=<%=year%>&month=<%=month%>">
																											<c:if test="${a.help_state=='1'}"><b style="color:red;"><img src="/resources/img/account/calendar_ban.png" width="15px;">[1차_진행중]</b></c:if>
																											<c:if test="${a.help_state=='2'}"><b style="color:red;"><img src="/resources/img/account/calendar_if.png" width="15px;">[1차_완료]</b></c:if>
																											<c:if test="${a.help_state=='3'}"><b style="color:red;"><img src="/resources/img/account/calendar_ban.png" width="15px;">[2차_진행중]</b></c:if>
																											<c:if test="${a.help_state=='4'}"><b style="color:red;"><img src="/resources/img/account/calendar_if.png" width="15px;">[2차_완료]</b></c:if>
																											&nbsp;${a.title}
																											</a>
																										</p>
																									</c:if>
																								</c:if>
																							</c:if>
																						</c:forEach>
																					</div>	
									<!--DB print end-->
																	       		</td>
																	       </tr>
																       </table> 
															       </td>
															       <%
															       a=-1;
															       newLine++;
															           if(newLine ==7 &&i!=endDay)
															           {
															            out.print( "</tr><tr>" );
															            newLine=0;
															           }
															      }
															     while(newLine>0 && newLine<7)
															     {
															      out.print( "<td height='100' bgcolor='#ffffff'>&nbsp;</td>");
															      newLine++;
															     }
															     out.print( "</tr>");
															   %>
														  </table>
														  <table id="aaa" width="100%" style="background-color:#cccccc;">
														  	<tr style="background-color:#cccccc;  height:30px;">
														  		<td style="padding-left:20px;" align="left">
														  			<img src="/resources/img/account/calendar_je.png" width="15px;">&nbsp;폴더생성&nbsp;
														  			<img src="/resources/img/account/calendar_ban.png" width="15px;">&nbsp;보완신청&nbsp;
														  			<img src="/resources/img/account/calendar_if.png" width="15px;">&nbsp;보완완료&nbsp;
														  			<img src="/resources/img/account/calendar_ge.png" width="15px;">&nbsp;계산서 발행&nbsp;
														  		</td>
													  		</tr>
													  	</table>
													</div>
											</td>
										</tr>
									</table>
								</div>
								<div style="width:100%; background-color:grey; height:20px;"></div>
								<div style="height:30px;"></div>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
		<!--timer s-->
		<!--this is for time and arcodion  -->
		<script src="/resources/js/flipclock/libs/base.js"></script>
		<script src="/resources/js/flipclock/flipclock.js"></script>
		<script src="/resources/js/flipclock/faces/counter.js"></script>
		<script src="/resources/js/flipclock/faces/hourlycounter.js"></script>
		<script src="/resources/js/flipclock/faces/dailycounter.js"></script>
		<script src="/resources/js/flipclock/faces/minutecounter.js"></script>
		<script src="/resources/js/flipclock/faces/twentyfourhourclock.js"></script>
		<script src="/resources/js/flipclock/faces/twelvehourclock.js"></script>
		<!--timer e-->
		<!--arcodion s-->
        <script type="text/javascript" src="/resources/js/account/jquery.accordion.2.0.js" ></script>
        <script type="text/javascript">
            $('#example2').accordion({
                //canToggle: true
            });
            $(".loading").removeClass("loading");
            
            function moreInfo(){
            	var test = document.notice.forms_seq.value;
            	if(test=='all'){
            		alert('폴더를 선택해 주세요');
            	}else{
            		document.notice.submit();
            	}
            }
            
            function popupScheAdd(year, month, day){
				   window.open("ScheduleAdd.jsp?year="+year+"&month="+month+"&day="+day,"scheAdd","width=520px, height=340px, left=0px, top=0px, location=no, toolbar=no, realzable=no scrollbars = yes");
				}
			function popupPerson(writer, year, month, day){
				   window.open("SchedulePerson.jsp?year="+year+"&month="+month+"&day="+day+"&writer="+encodeURI(encodeURIComponent(writer)),"schePerson","width=520px, height=280px, left=0px, top=0px, location=no, toolbar=no, realzable=no scrollbars = yes");
				}
			function goToday(nowyear, nowmonth)
			{
				alert('오늘 ['+nowyear+'년'+nowmonth+'월]로 이동 됩니다.');
				location.href="/MyPage.do?page_seq=7&year="+nowyear+"&month="+nowmonth;
			}
        </script>
		<!--arcodion e-->
	</body>
</html>