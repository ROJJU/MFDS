<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%if(request.getParameter("num").equals("1")){ %>
<input type="hidden" value="1.Applications" id="title" name="title">
<c:if test="${forms.contents1==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
${forms.contents1}
<%}else if(request.getParameter("num").equals("2")){%>
<c:if test="${forms.contents2==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="2.Ingredients" id="title" name="title">
${forms.contents2}
<%}else if(request.getParameter("num").equals("3")){%>
<c:if test="${forms.contents3==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="3.Manufacturing method" id="title" name="title">
${forms.contents3}
<%}else if(request.getParameter("num").equals("4")){%>
<c:if test="${forms.contents4==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="4.How to use" id="title" name="title">
${forms.contents4}
<%}else if(request.getParameter("num").equals("5")){%>
<c:if test="${forms.contents5==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="5.Precautions" id="title" name="title">
${forms.contents5}
<%}else if(request.getParameter("num").equals("6")){%>
<c:if test="${forms.contents6==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="6.How to Save" id="title" name="title">
${forms.contents6}
<%}else if(request.getParameter("num").equals("7")){%>
<c:if test="${forms.contents7==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="7.Expiration date" id="title" name="title">
${forms.contents7}
<%}else if(request.getParameter("num").equals("8")){%>
<c:if test="${forms.contents8==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="8.Test Specification" id="title" name="title">
${forms.contents8}
<%}else if(request.getParameter("num").equals("9")){%>
<c:if test="${forms.contents9==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="9.Shape and Structure" id="title" name="title">
${forms.contents9}
<%}else if(request.getParameter("num").equals("10")){%>
<c:if test="${forms.contents10==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="10.Others" id="title" name="title">
${forms.contents10}
<%}else if(request.getParameter("num").equals("11")){%>
<c:if test="${forms.contents11==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="11.Contents" id="title" name="title">
${forms.contents11}
<%}else if(request.getParameter("num").equals("12")){%>
<c:if test="${forms.contents12==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="12.Device Description" id="title" name="title">
${forms.contents12}
<%}else if(request.getParameter("num").equals("13")){%>
<c:if test="${forms.contents13==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="13.Product Specifications" id="title" name="title">
${forms.contents13}
<%}else if(request.getParameter("num").equals("14")){%>
<c:if test="${forms.contents14==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="14.References to similar instruments and products based hunger" id="title" name="title">
${forms.contents14}
<%}else if(request.getParameter("num").equals("15")){%>
<c:if test="${forms.contents15==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="15.Labeling" id="title" name="title">
${forms.contents15}
<%}else if(request.getParameter("num").equals("16")){%>
<c:if test="${forms.contents16==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="16.Machine Design Overview" id="title" name="title">
${forms.contents16}
<%}else if(request.getParameter("num").equals("17")){%>
<c:if test="${forms.contents17==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="17.Manufacturing Process Summary" id="title" name="title">
${forms.contents17}
<%}else if(request.getParameter("num").equals("18")){%>
<c:if test="${forms.contents18==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="18.Design and manufacturing location summary" id="title" name="title">
${forms.contents18}
<%}else if(request.getParameter("num").equals("19")){%>
<c:if test="${forms.contents19==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="19.Essential Principles Checklist" id="title" name="title">
${forms.contents19}
<%}else if(request.getParameter("num").equals("20")){%>
<c:if test="${forms.contents20==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="20.Risk Analysis and Management Summary" id="title" name="title">
${forms.contents20}
<%}else if(request.getParameter("num").equals("21")){%>
<c:if test="${forms.contents21==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="21.Declaration of Conformity to Standards" id="title" name="title">
${forms.contents21}
<%}else if(request.getParameter("num").equals("22")){%>
<c:if test="${forms.contents22==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="22.Validation of Equipment Design Overview" id="title" name="title">
${forms.contents22}
<%}else if(request.getParameter("num").equals("23")){%>
<c:if test="${forms.contents23==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="23.Electrical and mechanical safety test summary" id="title" name="title">
${forms.contents23}
<%}else if(request.getParameter("num").equals("24")){%>
<c:if test="${forms.contents24==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="24.Biological safety testing summary" id="title" name="title">
${forms.contents24}
<%}else if(request.getParameter("num").equals("25")){%>
<c:if test="${forms.contents25==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="25.Summary on radiation safety testing" id="title" name="title">
${forms.contents25}
<%}else if(request.getParameter("num").equals("26")){%>
<c:if test="${forms.contents26==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="26.Electromagnetic Safety Test Summary" id="title" name="title">
${forms.contents26}
<%}else if(request.getParameter("num").equals("27")){%>
<c:if test="${forms.contents27==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="27.Summary data on the performance" id="title" name="title">
${forms.contents27}
<%}else if(request.getParameter("num").equals("28")){%>
<c:if test="${forms.contents28==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="28.Software Verification and Validation Data Summary" id="title" name="title">
${forms.contents28}
<%}else if(request.getParameter("num").equals("29")){%>
<c:if test="${forms.contents29==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="29.Physical and chemical properties data summary" id="title" name="title">
${forms.contents29}
<%}else if(request.getParameter("num").equals("30")){%>
<c:if test="${forms.contents30==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="30.Summary of safety data for animal-derived materials" id="title" name="title">
${forms.contents30}
<%}else if(request.getParameter("num").equals("31")){%>
<c:if test="${forms.contents31==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="31.Safety Test Summary" id="title" name="title">
${forms.contents31}
<%}else if(request.getParameter("num").equals("32")){%>
<c:if test="${forms.contents32==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="32.Complex" id="title" name="title">
${forms.contents32}
<%}else if(request.getParameter("num").equals("33")){%>
<c:if test="${forms.contents33==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="33.Animal data summary" id="title" name="title">
${forms.contents33}
<%}else if(request.getParameter("num").equals("34")){%>
<c:if test="${forms.contents34==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="34.Clinical trial data summary" id="title" name="title">
${forms.contents34}
<%}else if(request.getParameter("num").equals("35")){%>
<c:if test="${forms.contents39==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="35.Attached document Contents" id="title" name="title">
${forms.contents39}
<%}else if(request.getParameter("num").equals("36")){%>
<c:if test="${forms.contents35==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="36.Data on manufacturing" id="title" name="title">
${forms.contents35}
<%}else if(request.getParameter("num").equals("37")){%>
<c:if test="${forms.contents36==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="37.Risk Analysis Report" id="title" name="title">
${forms.contents36}
<%}else if(request.getParameter("num").equals("38")){%>
<c:if test="${forms.contents37==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="38.Product verification and validation data" id="title" name="title">
${forms.contents37}
<%}else if(request.getParameter("num").equals("39")){%>
<c:if test="${forms.contents38==null}"><font color="red">아직 작성 완료 되지 않은 부분 입니다.</font></c:if>
<input type="hidden" value="39.References" id="title" name="title">
${forms.contents38}
<%}else if(request.getParameter("num").equals("40")){%>
<input type="hidden" value="40.All" id="title" name="title">
${forms.contents1}
${forms.contents2}
${forms.contents3}
${forms.contents4}
${forms.contents5}
${forms.contents6}
${forms.contents7}
${forms.contents8}
${forms.contents9}
${forms.contents10}
${forms.contents11}
${forms.contents12}
${forms.contents13}
${forms.contents14}
${forms.contents15}
${forms.contents16}
${forms.contents17}
${forms.contents18}
${forms.contents19}
${forms.contents20}
${forms.contents21}
${forms.contents22}
${forms.contents23}
${forms.contents24}
${forms.contents25}
${forms.contents26}
${forms.contents27}
${forms.contents28}
${forms.contents29}
${forms.contents30}
${forms.contents31}
${forms.contents32}
${forms.contents33}
${forms.contents34}
${forms.contents35}
${forms.contents36}
${forms.contents37}
${forms.contents38}
<%}else{%>
${forms.contents1}
<%}%>