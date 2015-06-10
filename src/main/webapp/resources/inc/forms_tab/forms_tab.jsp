<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="content_top_place">
	<tr><td id="sub_bar"></td></tr>
	<tr>
		<td id="content_top_place">
			<div style="text-align:left; font-size:12px; padding-left:15px;">
				<table>
					<tr>
						<td><b>폴더명</b> :</td>
						<td><div class="ellipsis"><b style="color:red;">${forms.title}</b></div></td>
						<td>| <b>품목명</b> :</td>
						<td>${forms.kor_name}[${forms.eng_name}]</td>
						<td>| <b>등급</b> :</td>
						<td>${forms.p_class}</td>
						<td>| <b>작성자</b> :</td>
						<td>${forms.id1}-${forms.id2}-${forms.id3}[${forms.email1}@${forms.email2}]</td>
						<td>| <b>작성일</b> :</td>
						<td>${forms.add_date}</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
</table>