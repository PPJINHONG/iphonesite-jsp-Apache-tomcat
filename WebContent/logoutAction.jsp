<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>

	<%
		session.invalidate();
	%>
	<script>
	location.href="main.jsp";
	</script>

</body>
</html>