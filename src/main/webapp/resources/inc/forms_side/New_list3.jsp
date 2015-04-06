<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String list_seq="0";
if(request.getParameter("list_seq")!=null){
	list_seq=request.getParameter("list_seq");
}
%>
<ul id="example2" class="accordion">
   <li>
       <h3><img src="/resources/img/forms/folder-horizontal.png">&nbsp;신청내용</h3>
       <div class="panel loading">
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=1">
	           	<c:choose>
	           		<c:when test="${forms.contents1==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	&nbsp;신청서<br>
           	</a>
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=2">
	           	<c:choose>
	           		<c:when test="${forms.contents2==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
				&nbsp;원재료<br>
			</a>
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=3">
          		<c:choose>
	           		<c:when test="${forms.contents3==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
           		&nbsp;제조방법<br>
           	</a>
           	<a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=4">
           		<c:choose>
	           		<c:when test="${forms.contents4==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
           &nbsp;사용방법<br>
           </a>
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=5">
           		<c:choose>
	           		<c:when test="${forms.contents5==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
           &nbsp;사용시주의사항<br>
           </a>
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=6">
        		<c:choose>
	           		<c:when test="${forms.contents6==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
          		&nbsp;저장방법<br>
           </a>
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=7">
           		<c:choose>
	           		<c:when test="${forms.contents7==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	&nbsp;사용기한<br>
           </a>
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=8">
           		<c:choose>
	           		<c:when test="${forms.contents8==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
				&nbsp;시험규격<br>
			</a>
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=9">
           		<c:choose>
	           		<c:when test="${forms.contents9==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
				&nbsp;모양 및 구조<br>
			</a>
           <a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=10">
           		<c:choose>
	           		<c:when test="${forms.contents10==null}">
	           			<img src="/resources/img/forms/document.png">
	           		</c:when>
	           		<c:otherwise>
	           			<img src="/resources/img/forms/docu_check_icon.png">
	           		</c:otherwise>
	           	</c:choose>
	           	&nbsp;기타<br>
           	</a>
       </div>
   </li>
   <li>
       <h3><img src="/resources/img/forms/folder-horizontal.png">&nbsp;국제표준화기술문서</h3>
        <div class="panel loading">
        	<table>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>목차</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents11==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=11">목차</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>기기설명 및 제품사양</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents12==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=12">기기설명</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents13==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=13">제품사양</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents14==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=14">유사기기 및 허가된 제품에 대한 참고자료</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>표시기재(안)</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents15==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=15">표시기재(안)</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>설계와 제조정보</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents16==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=16">기기설계 계요</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents17==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=17">제조공정 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents18==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=18">설계 및 제조장소 요약</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>필수원칙 체크리스트</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents19==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=19">필수원칙 체크리스트</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>위험북석과 관리요약</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents20==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=20">위험분석과 관리요약</a></td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>제품검증 및 유효성 확인 요약</td></tr>
        		<tr><td width="10px;" style="vertical-align:top;"><img src="/resources/img/forms/folder-horizontal.png"></td><td>일반사항</td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents21==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=21">규격에 대한 적합선언</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents22==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=22">기기설계의 유효성 확인 개요</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents23==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=23">전기,기계적 안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents24==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=24">생물학적 안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents25==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=25">방사선에 관한 안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents26==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=26">전자파 안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents27==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=27">성능에 관한 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents28==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=28">소프트웨어 검증 및 유효성 확인 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents29==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=29">물리, 화학적 특성 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents30==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=30">동물유래 물질에 대한 안전성 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents31==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=31">안전성 시험 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents32==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=32">복합, 조합된 의약품에 대한 정보 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents33==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=33">동물시험 자료 요약</a></td></tr>
        		<tr><td style="padding-left:10px; vertical-align:top;"><c:choose><c:when test="${forms.contents34==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=34">임상시험 자료 요약</a></td></tr>
        	</table>
           </div>
   </li>
   <li  class="active">
       <h3><img src="/resources/img/forms/folder-horizontal.png">&nbsp;첨부자료<font color="red">(NOW)</font></h3>
       <div class="panel loading">
            <table>
            	<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.contents39==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=39"><%if(list_seq.equals("39")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;목차</a></td></tr>
        		<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.contents35==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=35"><%if(list_seq.equals("35")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;제조공정에 관한 자료</a></td></tr>
        		<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.contents36==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=36"><%if(list_seq.equals("36")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;위험분석 보고서</a></td></tr>
        		<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.contents37==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=37"><%if(list_seq.equals("37")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;제품검증 및 유효성 확인 자료</a></td></tr>
        		<tr><td style="vertical-align:top;"><c:choose><c:when test="${forms.contents38==null}"><img src="/resources/img/forms/document.png"></c:when><c:otherwise><img src="/resources/img/forms/docu_check_icon.png"></c:otherwise></c:choose></td><td><a href="/NewForms.do?forms_seq=<%=request.getParameter("forms_seq")%>&list_seq=38"><%if(list_seq.equals("38")){%><img src="/resources/img/forms/modify.gif"><%}%>&nbsp;참고 문헌</a></td></tr>
         	</table>
             
        </div>
    </li>
</ul>