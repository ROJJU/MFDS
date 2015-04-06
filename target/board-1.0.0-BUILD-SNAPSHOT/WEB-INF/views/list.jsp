<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<table>
	<c:forEach var="result" items="${resultList}" varStatus="status">
		<tr>
			<td align="center" ><c:out value="${result.board_num}"/></td>
			<td align="center" ><c:out value="${result.board_name}"/></td>
			<td align="center" ><c:out value="${result.board_pass}"/></td>
			<td align="center" ><c:out value="${result.board_subject}"/></td>
			<td align="center" ><c:out value="${result.board_content}"/></td>
			<td align="center" ><c:out value="${result.board_file}"/></td>
			<td align="center" ><c:out value="${result.board_re_ref}"/></td>
			<td align="center" ><c:out value="${result.board_re_lev}"/></td>
			<td align="center" ><c:out value="${result.board_re_seq}"/></td>
			<td align="center" ><c:out value="${result.board_readcount}"/></td>
			<td align="center" ><c:out value="${result.board_date}"/></td>
		</tr>
	</c:forEach>
		<tr>
			<td><a href="/test"><input type="button" value="test"></a></td>
		</tr>
	</table>

</body>
</html>
