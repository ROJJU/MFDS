<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ page import="java.net.*"%>
<%

String title = URLEncoder.encode(request.getParameter("title"),"UTF-8");
String add_date = request.getParameter("add_date");
String destFileName = "["+add_date+"]"+title+".hwp";
response.setHeader("Content-Disposition", "attachment;filename=".concat(String.valueOf(destFileName)));
response.setHeader("Content-type", "application/hwp");
response.setHeader("Content-Description", "JSP Generated Data");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<%=request.getParameter("contents") %>
</body>
</html>