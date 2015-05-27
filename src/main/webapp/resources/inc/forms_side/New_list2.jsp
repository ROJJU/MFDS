<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String list_seq="1";
if(request.getParameter("list_seq")!=null){
	list_seq=request.getParameter("list_seq");
}
%>
</script>
<ul id="example2" class="accordion">
   <li>
       <h3><img src="/resources/img/forms/folder-horizontal.png">&nbsp;신청내용</h3>
       <div class="panel loading">
           <a class="list1" onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','1','1')">
	           	<c:choose>
	           		<c:when test="${forms.ck_form1==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("1")){%>
	           	<img src="/resources/img/forms/modify.gif">
	           	<%}%>
	           	&nbsp;신청서
	           	<br>
           	</a>
           <a class="list1" onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','2','2')">
	           	<c:choose>
	           		<c:when test="${forms.ck_form2==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("2")){%>
	           	<img src="/resources/img/forms/modify.gif">
	           	<%}%>
				&nbsp;원재료
				<br>
			</a>
           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','3','3')">
          		<c:choose>
	           		<c:when test="${forms.ck_form3==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("3")){%>
	           	<img src="/resources/img/forms/modify.gif">
	           	<%}%>
           		&nbsp;제조방법
           		<br>
           	</a>
           	<a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','4','4')">
           		<c:choose>
	           		<c:when test="${forms.ck_form4==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("4")){%>
	           	<img src="/resources/img/forms/modify.gif">
	           	<%}%>
	           &nbsp;사용방법
           <br>
           </a>
           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','5','5')">
           		<c:choose>
	           		<c:when test="${forms.ck_form5==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("5")){%>
	           	<img src="/resources/img/forms/modify.gif">
	           	<%}%>
	            &nbsp;사용시주의사항
           <br>
           </a>
           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','6','6')">
        		<c:choose>
	           		<c:when test="${forms.ck_form6==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("6")){%>
	           	<img src="/resources/img/forms/modify.gif">
	           	<%}%>
          		&nbsp;저장방법
         		<br>
           </a>
           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','7','7')">
           		<c:choose>
	           		<c:when test="${forms.ck_form7==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("7")){%>
	           	<img src="/resources/img/forms/modify.gif">
	           	<%}%>
	           	&nbsp;사용기한
	           	<br>
           </a>
           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','8','8')">
           		<c:choose>
	           		<c:when test="${forms.ck_form8==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("8")){%>
	           	<img src="/resources/img/forms/modify.gif">
	           	<%}%>
				&nbsp;시험규격
				<br>
			</a>
			<c:choose>
				<c:when test="${forms.power=='1'}">
		           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','9','9')">
		           		<c:choose>
			           		<c:when test="${forms.ck_form9==null}">
			           			<img src="/resources/img/forms/document.png">
			           		</c:when>
			           		<c:otherwise>
			           			<img src="/resources/img/forms/docu_check_icon.png">
			           		</c:otherwise>
			           	</c:choose>
			           	<%if(list_seq.equals("9")){%>
			           	<img src="/resources/img/forms/modify.gif">
			           	<%}%>
						&nbsp;모양 및 구조-특성
						<br>
					</a>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${firstForm.logic_text==''||firstForm.logic_text==null}">
		           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','10','10')">
		           		<c:choose>
			           		<c:when test="${forms.ck_form10==null}">
			           			<img src="/resources/img/forms/document.png">
			           		</c:when>
			           		<c:otherwise>
			           			<img src="/resources/img/forms/docu_check_icon.png">
			           		</c:otherwise>
			           	</c:choose>
			           	<%if(list_seq.equals("10")){%>
			           	<img src="/resources/img/forms/modify.gif">
			           	<%}%>
						&nbsp;모양 및 구조-작용원리
						<br>
					</a>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${firstForm.shape_text==''||firstForm.shape_text==null}">
		           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','11','11')">
		           		<c:choose>
			           		<c:when test="${forms.ck_form11==null}">
			           			<img src="/resources/img/forms/document.png">
			           		</c:when>
			           		<c:otherwise>
			           			<img src="/resources/img/forms/docu_check_icon.png">
			           		</c:otherwise>
			           	</c:choose>
			           	<%if(list_seq.equals("11")){%>
			           	<img src="/resources/img/forms/modify.gif">
			           	<%}%>
						&nbsp;모양 및 구조-외형
						<br>
					</a>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${firstForm.size_text==''||firstForm.size_text==null}">
		           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','12','12')">
		           		<c:choose>
			           		<c:when test="${forms.ck_form12==null}">
			           			<img src="/resources/img/forms/document.png">
			           		</c:when>
			           		<c:otherwise>
			           			<img src="/resources/img/forms/docu_check_icon.png">
			           		</c:otherwise>
			           	</c:choose>
			           	<%if(list_seq.equals("12")){%>
			           	<img src="/resources/img/forms/modify.gif">
			           	<%}%>
						&nbsp;모양 및 구조-치수
						<br>
					</a>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${firstForm.performance_text==''||firstForm.performance_text==null}">
		           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','13','13')">
		           		<c:choose>
			           		<c:when test="${forms.ck_form13==null}">
			           			<img src="/resources/img/forms/document.png">
			           		</c:when>
			           		<c:otherwise>
			           			<img src="/resources/img/forms/docu_check_icon.png">
			           		</c:otherwise>
			           	</c:choose>
			           	<%if(list_seq.equals("13")){%>
			           	<img src="/resources/img/forms/modify.gif">
			           	<%}%>
						&nbsp;성능
						<br>
					</a>
				</c:when>
			</c:choose>
           <a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','14','14')">
           		<c:choose>
	           		<c:when test="${forms.ck_form14==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	<%if(list_seq.equals("14")){%><img src="/resources/img/forms/modify.gif"><%}%>
	           	&nbsp;기타
	           	<br>
           	</a>
       </div>
   </li>
   <li class="active">
       <h3><img src="/resources/img/forms/folder-horizontal.png">&nbsp;국제표준화기술문서<font color="red">(NOW)</font></h3>
        <div class="panel loading">
        	<table>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>목차</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form15==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','15','15')"><%if(list_seq.equals("15")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;목차</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>기기설명 및 제품사양</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form16==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','16','16')"><%if(list_seq.equals("16")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;기기설명</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form17==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','17','13')"><%if(list_seq.equals("17")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;제품사양</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form18==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','18','18')"><%if(list_seq.equals("18")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;유사기기 및 허가된 제품에 대한 참고자료</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>표시기재(안)</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form19==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','19','19')"><%if(list_seq.equals("19")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;표시기재(안)</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>설계와 제조정보</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form20==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','20','20')"><%if(list_seq.equals("20")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;기기설계 계요</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form21==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','21','21')"><%if(list_seq.equals("21")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;제조공정 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form22==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','22','22')"><%if(list_seq.equals("22")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;설계 및 제조장소 요약</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>필수원칙 체크리스트</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form23==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','23','23')"><%if(list_seq.equals("23")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;필수원칙 체크리스트</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>위험북석과 관리요약</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form24==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','24','24')"><%if(list_seq.equals("24")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;위험분석과 관리요약</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>제품검증 및 유효성 확인 요약</td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>일반사항</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form25==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','25','25')"><%if(list_seq.equals("25")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;규격에 대한 적합선언</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form26==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','26','26')"><%if(list_seq.equals("26")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;기기설계의 유효성 확인 개요</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form27==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','27','27')"><%if(list_seq.equals("27")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;전기,기계적 안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form28==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','28','28')"><%if(list_seq.equals("28")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;생물학적 안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form29==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','29','29')"><%if(list_seq.equals("29")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;방사선에 관한 안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form30==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','30','30')"><%if(list_seq.equals("30")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;전자파 안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form31==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','31','31')"><%if(list_seq.equals("31")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;성능에 관한 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form32==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','32','32')"><%if(list_seq.equals("32")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;소프트웨어 검증 및 유효성 확인 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form33==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','33','33')"><%if(list_seq.equals("33")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;물리, 화학적 특성 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form34==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','34','34')"><%if(list_seq.equals("34")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;동물유래 물질에 대한 안전성 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form35==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','35','35')"><%if(list_seq.equals("35")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form36==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','36','36')"><%if(list_seq.equals("36")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;복합, 조합된 의약품에 대한 정보 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form37==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','37','37')"><%if(list_seq.equals("37")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;동물시험 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.ck_form38==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','38','38')"><%if(list_seq.equals("38")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;임상시험 자료 요약</a></td></tr>
        	</table>
           </div>
   </li>
   <li>
       <h3><img src="/resources/img/forms/folder-horizontal.png">&nbsp;첨부자료</h3>
       <div class="panel loading">
            <table>
            	<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.ck_form39==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','39','39')"><%if(list_seq.equals("39")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;목차</a></td></tr>
        		<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.ck_form40==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','40','40')"><%if(list_seq.equals("40")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;제조공정에 관한 자료</a></td></tr>
        		<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.ck_form41==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','41','41')"><%if(list_seq.equals("41")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;위험분석 보고서</a></td></tr>
        		<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.ck_form42==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','42','42')"><%if(list_seq.equals("42")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;제품검증 및 유효성 확인 자료</a></td></tr>
        		<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.ck_form43==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a onclick="loadAndSave('<%=request.getParameter("forms_seq")%>','43','43')"><%if(list_seq.equals("43")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;참고 문헌</a></td></tr>
         	</table>
             
        </div>
    </li>
</ul>