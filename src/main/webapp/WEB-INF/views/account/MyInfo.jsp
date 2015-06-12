<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/inc/Main_header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Sub.css"/>"/>
	<title>STED</title>
	<style type="text/css">
	.my_font{
		font-size:12px;
		height:10px;
	}
	#my_info{
		width:600px;
	}
	.table_margin{
	margin-bottom:10px;
	}
	.container{
		border:1px solid grey;
		box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		-webkit-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		-moz-box-shadow: 2px 2px 20px rgba(0,0,0,0.5);
		 width:98%;
		 padding:20px 0px 20px 0px;
	}
	@media (max-width:1168px) {
			  #info{
			   position:absolute;
			   top:300px;
			   width:600px;
			   margin:0 auto;
		      }
		    }
    @media (min-width:1168px) {
    #info{
	   position:absolute;
	   top:300px;
	   width:600px;
	   margin:0 auto;
      }
      }
	</style>
	<script type="text/javascript">
		var win=null;
		  function printIt(printThis){
		    win = window.open('','offprint','width=700 height=450');
		    self.focus();
		    win.document.open();
		    win.document.write('<'+'html'+'><'+'head'+'><'+'style'+'>');
		    win.document.write('.my_font{font-size:12px;} #my_info{width:600px;height:10px;} #info{position:absolute; top:-5px;margin:0 auto;}');
		    win.document.write('<'+'/'+'style'+'><'+'/'+'head'+'><'+'body'+'>');
		    win.document.write(printThis);
		    win.document.write('<'+'/'+'body'+'><'+'/'+'html'+'>');
		    win.document.close();
		    win.print();
		    win.close();
		  }
	</script>
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
							<td id="content_place" align="center">
								<jsp:include page="/resources/inc/my_tab/My_tab_01.jsp"/>
								<jsp:include page="/resources/inc/Sub_contents_header.jsp"/>
								<br>
								<div align="left" id="sub_title"><img src="/resources/img/forms/next.gif">&nbsp;My Info</div><br>
								<table style="border:none; width:98%;">
									<tr>
										<td style="border:none; border-bottom:2px solid grey; height:30px; padding-top:8px;" align="left">
											<a href="javaScript:goUrl('/MyPage.do?page_seq=1');" class="sub_tab_action" >인증서 보기</a>
									  &nbsp;<a href="javaScript:goUrl('/MyPage.do?page_seq=10');" class="sub_tab">사업자 등록증 보기</a></td>
									</tr>
								</table>
								<div class="container">
									<div style="height:40px;"></div>
									<div id="certificate">
									<div>
										<div style="background-image:url('/resources/img/account/crti_back.jpg'); width:660px; height:930px;">
											<div id ="info">
										<table id="my_info" class="my_font" style="text-align:left;">
											<tr><td height="380px;" style="border:none;"></td></tr>
											<tr height="20px">
												<td width="35px;"></td>
												<td width="300px" style="font-size:13px; font-weight:bolder;"><b>회원 정보</b></td>
											</tr>
											<tr>
												<td></td>
												<td>
													<table class="table_margin">
														<tr>
															<td width="145px;" class="my_font"><b>ID(사업자 등록 번호) :</b></td><td class="my_font">${memberInfo.id1}-${memberInfo.id2}-${memberInfo.id3}</td><td></td>
														</tr>
														<tr>
															<td class="my_font"><b>사용자 이메일 :</b></td><td class="my_font">${memberInfo.email1}@${memberInfo.email2}</td><td></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr height="20px">
												<td></td>
												<td width="300px" style="font-size:13px; font-weight:bolder;"><b>담당자 정보</b></td>
											</tr>
											<tr>
												<td></td>
												<td>
													<table class="table_margin">
														<tr>
															<td width="145px;" class="my_font"><b>이름 :</b></td><td class="my_font">${memberInfo.kor_name} | ${memberInfo.cha_name} | ${memberInfo.eng_name}</td>
														</tr>
														<tr>
															<td class="my_font"><b>주소 :</b></td><td class="my_font">${memberInfo.address}</td>
														</tr>
														<tr>
															<td class="my_font"><b>전화번호 :</b></td><td class="my_font">${memberInfo.phone1}-${memberInfo.phone2}-${memberInfo.phone3}</td>
														</tr>
														<tr>
															<td class="my_font"><b>휴대전화번호:</b></td><td class="my_font">${memberInfo.cell_phone1}-${memberInfo.cell_phone2}-${memberInfo.cell_phone3}</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr height="20px">
												<td></td>
												<td width="300px" style="font-size:13px; font-weight:bolder;"><b>회사 정보</b></td>
											</tr>
											<tr>
												<td></td>
												<td>
													<table class="table_margin">
														<tr>
															<td width="145px;" class="my_font"><b>회사명 :</b></td><td class="my_font">${memberInfo.company_kor} | ${memberInfo.company_eng}</td>
														</tr>
														<tr>
															<td class="my_font"><b>회사주소 :</b></td><td class="my_font">${memberInfo.company_address}</td>
														</tr>
														<tr>
															<td class="my_font"><b>전화번호 :</b></td><td class="my_font">${memberInfo.company_phone1}-${memberInfo.company_phone2}-${memberInfo.company_phone3}</td>
														</tr>
														<tr>
															<td class="my_font"><b>대표자:</b></td><td class="my_font">${memberInfo.ceo}</td>
														</tr>
														<tr>
															<td class="my_font"><b>사업자 등록증 사본:</b></td><td class="my_font">${memberInfo.company_file}</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										</div>
										</div>
									</div>
									</div><br><br>
								</div>
								<table id="button" width="1064px">
									<tr height=100px;>
										<td align="center"><br>
										<input type="image" src="/resources/img/member/print_btn.png" onClick="javascript:printIt(document.getElementById('certificate').innerHTML)" width="60px">&nbsp;
										<input type="image" src="/resources/img/btn/modify_btn.png" onclick="goUrl('/MyPage.do?page_seq=2');" width="60px">
										<br><br>
										</td>
									</tr>
								</table>
							<hr><br><br><br><br>
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