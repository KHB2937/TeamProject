<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>My Servlet Response</title>
</head>
<body>
	<h1>Hello <%= request.getParameter("nickname") %>!</h1>
	<p>Your name has been saved to the database.</p>
	<a href="./">Go back to the home page</a>
</body>
</html>