<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="content_top_place">
	<tr><td id="sub_bar"></td></tr>
	<tr>
		<td id="content_top_place">
			<div style="text-align:left; font-size:12px; padding-left:15px;">
				<b>폴더명</b> : <b style="color:red;">${forms.title}</b> | <b>품목명</b> : ${forms.kor_name}[${forms.eng_name}] | <b>등급</b> : ${forms.p_class} | <b>작성자</b> : ${forms.id1}-${forms.id2}-${forms.id3}[${forms.email1}@${forms.email2}] | <b>작성일</b> : ${forms.add_date}
			</div>
		</td>
	</tr>
</table>