<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<script type="text/javascript"> 
var message = '${msg}'; 
var returnUrl = '${url}';
document.location.href = returnUrl+"&msg="+message; 
</script>

