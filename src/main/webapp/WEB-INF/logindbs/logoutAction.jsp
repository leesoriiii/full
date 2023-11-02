<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogOutAction.jsp</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<script>
		location.href = '/';
	</script>
</body>
</html>