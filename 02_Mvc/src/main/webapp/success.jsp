<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.javaminds.dto.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<body>

<% 
/* User user = (User) session.getAttribute("user"); */
User user = (User) request.getAttribute("user");
%>

<h1>Login Successful! Hello: <%= user.getUserName() %> </h1>

</body>
</html>