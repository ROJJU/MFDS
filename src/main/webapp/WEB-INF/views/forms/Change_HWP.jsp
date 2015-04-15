<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8"%>
<%String num =request.getParameter("num");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/resources/js/account/jquery-1.4.2.min.js" ></script><!--this is for time and arcodion  -->
<script type="text/javascript" src="/resources/js/account/jquery.accordion.2.0.js" ></script>
<script type="text/javascript">
window.onload=function help(){
	  $(".__se_tbl").attr("width","640px");
	  $(".__se_tbl").attr("border","1");
	  $(".__se_tbl").attr("cellspacing","0");
	  $(".__se_tbl").attr("bordercolor","black");
	  $("td").attr("width","");
	  $(".hong").attr("width","640px");
	  $(".hong").attr("border","1");
	  $(".hong").attr("cellspacing","0");
	  $(".hong").attr("bordercolor","black");
	  $(".test").attr("width","200px");
	  $(".test2").attr("width","440px");
	  $(".rule1").attr("width","240px");
	  $(".rule2").attr("width","100px");
	  $(".rule3").attr("width","100px");
	  $(".rule4").attr("width","100px");
	  $(".rule5").attr("width","100px");
	  $("td").attr("bordercolor","black");
	  $("td").attr("height","25px");
	  document.hwp.contents.value=document.getElementById("form").innerHTML;
	document.hwp.submit();
  }
</script>
<title>한글 변화 서류 미리보기 및 한글 파일 변환</title>
</head>
<body>
	<div style="width:630px; margin:0 auto;">
		<form name="hwp" action="/download_hwpProc.do" method="post">
			<input type="hidden" value="${forms.forms_seq}" id="forms_seq" name="forms_seq">
			<input type="hidden" name="add_date" value="${forms.add_date}">
			<input type="hidden" name="contents">
			<a id="form">
		<%if(num.equals("1")){%>
		<input type="hidden" value="1.Applications" id="title" name="title">
		${forms.contents1}
		<%}else if(num.equals("2")){%>
		<input type="hidden" value="2.Ingredients" id="title" name="title">
		${forms.contents2}
		<%}else if(num.equals("3")){%>
		<input type="hidden" value="3.Manufacturing method" id="title" name="title">
		${forms.contents3}
		<%}else if(num.equals("4")){%>
		<input type="hidden" value="4.How to use" id="title" name="title">
		${forms.contents4}
		<%}else if(num.equals("5")){%>
		<input type="hidden" value="5.Precautions" id="title" name="title">
		${forms.contents5}
		<%}else if(num.equals("6")){%>
		<input type="hidden" value="6.How to Save" id="title" name="title">
		${forms.contents6}
		<%}else if(num.equals("7")){%>
		<input type="hidden" value="7.Expiration date" id="title" name="title">
		${forms.contents7}
		<%}else if(num.equals("8")){%>
		<input type="hidden" value="8.Test Specification" id="title" name="title">
		${forms.contents8}
		<%}else if(num.equals("9")){%>
		<input type="hidden" value="9.Shape and Structure" id="title" name="title">
		${forms.contents9}
		<%}else if(num.equals("10")){%>
		<input type="hidden" value="10.Others" id="title" name="title">
		${forms.contents10}
		<%}else if(num.equals("11")){%>
		<input type="hidden" value="11.Contents" id="title" name="title">
		${forms.contents11}
		<%}else if(num.equals("12")){%>
		<input type="hidden" value="12.Device Description" id="title" name="title">
		${forms.contents12}
		<%}else if(num.equals("13")){%>
		<input type="hidden" value="13.Product Specifications" id="title" name="title">
		${forms.contents13}
		<%}else if(num.equals("14")){%>
		<input type="hidden" value="14.References to similar instruments and products based hunger" id="title" name="title">
		${forms.contents14}
		<%}else if(num.equals("15")){%>
		<input type="hidden" value="15.Labeling" id="title" name="title">
		${forms.contents15}
		<%}else if(num.equals("16")){%>
		<input type="hidden" value="16.Machine Design Overview" id="title" name="title">
		${forms.contents16}
		<%}else if(num.equals("17")){%>
		<input type="hidden" value="17.Manufacturing Process Summary" id="title" name="title">
		${forms.contents17}
		<%}else if(num.equals("18")){%>
		<input type="hidden" value="18.Design and manufacturing location summary" id="title" name="title">
		${forms.contents18}
		<%}else if(num.equals("19")){%>
		<input type="hidden" value="19.Essential Principles Checklist" id="title" name="title">
		${forms.contents19}
		<%}else if(num.equals("20")){%>
		<input type="hidden" value="20.Risk Analysis and Management Summary" id="title" name="title">
		${forms.contents20}
		<%}else if(num.equals("21")){%>
		<input type="hidden" value="21.Declaration of Conformity to Standards" id="title" name="title">
		${forms.contents21}
		<%}else if(num.equals("22")){%>
		<input type="hidden" value="22.Validation of Equipment Design Overview" id="title" name="title">
		${forms.contents22}
		<%}else if(num.equals("23")){%>
		<input type="hidden" value="23.Electrical and mechanical safety test summary" id="title" name="title">
		${forms.contents23}
		<%}else if(num.equals("24")){%>
		<input type="hidden" value="24.Biological safety testing summary" id="title" name="title">
		${forms.contents24}
		<%}else if(num.equals("25")){%>
		<input type="hidden" value="25.Summary on radiation safety testing" id="title" name="title">
		${forms.contents25}
		<%}else if(num.equals("26")){%>
		<input type="hidden" value="26.Electromagnetic Safety Test Summary" id="title" name="title">
		${forms.contents26}
		<%}else if(num.equals("27")){%>
		<input type="hidden" value="27.Summary data on the performance" id="title" name="title">
		${forms.contents27}
		<%}else if(num.equals("28")){%>
		<input type="hidden" value="28.Software Verification and Validation Data Summary" id="title" name="title">
		${forms.contents28}
		<%}else if(num.equals("29")){%>
		<input type="hidden" value="29.Physical and chemical properties data summary" id="title" name="title">
		${forms.contents29}
		<%}else if(num.equals("30")){%>
		<input type="hidden" value="30.Summary of safety data for animal-derived materials" id="title" name="title">
		${forms.contents30}
		<%}else if(num.equals("31")){%>
		<input type="hidden" value="31.Safety Test Summary" id="title" name="title">
		${forms.contents31}
		<%}else if(num.equals("32")){%>
		<input type="hidden" value="32.Complex" id="title" name="title">
		${forms.contents32}
		<%}else if(num.equals("33")){%>
		<input type="hidden" value="33.Animal data summary" id="title" name="title">
		${forms.contents33}
		<%}else if(num.equals("34")){%>
		<input type="hidden" value="34.Clinical trial data summary" id="title" name="title">
		${forms.contents34}
		<%}else if(num.equals("35")){%>
		<input type="hidden" value="35.Attached document Contents" id="title" name="title">
		${forms.contents35}
		<%}else if(num.equals("36")){%>
		<input type="hidden" value="36.Data on manufacturing" id="title" name="title">
		${forms.contents36}
		<%}else if(num.equals("37")){%>
		<input type="hidden" value="37.Risk Analysis Report" id="title" name="title">
		${forms.contents37}
		<%}else if(num.equals("38")){%>
		<input type="hidden" value="38.Product verification and validation data" id="title" name="title">
		${forms.contents38}
		<%}else if(num.equals("39")){%>
		<input type="hidden" value="39.References" id="title" name="title">
		${forms.contents39}
		<%}%>
		</a>
		<%if(request.getParameter("contents")!=null){ %>
		<%=request.getParameter("contents") %>
		<%} %>
		</form>
	</div>
</body>
</html>