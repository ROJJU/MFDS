<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/common/Base.css"/>"/>
	<title>STED</title>
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
							<td id="side_menu_place" rowspan="1"><jsp:include page="/resources/inc/Side_menu.jsp"/></td>
							<td id="content_place">
								<jsp:include page="/resources/inc/sub_tab/Sub_tab_01.jsp"/>
								<br>
								ȯ���մϴ�. STED ���α׷��� �����ϼ̽��ϴ�.
								<hr style="margin:5px;">
								<div style="text-align:left; padding:10px;">
									�ȳ��Ͻʴϱ�.<br>�ѱ��Ƿ���ǰ���濵������(���� K-GMP)�� ���� �Ƿ��� �� �ܱ� �����Ƿ��⿡ ���� �ľ�ó�� �����ϰ� �ż��� ���㰡 �ڹ��� �����ϰ�. �Ƿ����� ���� ������ �������̰� �ŷڼ� �ִ� �м��� ���� �ٰ��ִ� ������ ������ �����ϱ� ���� �����Ǿ����ϴ�.<br><br><br>�ƿ﷯ �����ε� ��ǰ�Ǿ�ǰ����û �ο��Ƿھ����� �־ ���� ���Ե��� ���Ǹ� ���� ü������ �ý����� ������ �����µ� ���弭�ڽ��ϴ�. �Ӹ� �ƴ϶� ����� �������� �η��� Ȯ���ϴ� ���ÿ� �������� ���ѹα� ���� ��ǥ ���������μ��� ������ ���ϰ��� �δ��� ����� ���� ��� �帳�ϴ�.<br><br>�����մϴ�.
								</div>
								<div><br><br><br>
									<input type="image" src="/resources/img/main/my_account_btn.png" title="������">&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="image" src="/resources/img/main/Payment_btn.png" title="�������� ��ȸ/��꼭����">&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="image" src="/resources/img/main/New_form.png" title="������" onclick="goUrl('/Forms');">&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="image" src="/resources/img/main/calendar_btn.png" title="��������">
								</div><br><br><br>
							</td>
						</tr>
					</table>
				</div>
				<jsp:include page="/resources/inc/Sub_footer.jsp"/>
			</div>
		</div>
		<div class="total_footer" id="total_footer"></div>
		<script type="text/javascript" src="<c:url value="/resources/js/Main/Window_size.js"/>"></script>
	</body>
</html>