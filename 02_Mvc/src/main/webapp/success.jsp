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
/* User user = (User) request.getAttribute("user"); */
%>

<jsp:useBean id="user" scope="request" class="com.javaminds.dto.User">
</jsp:useBean>

<jsp:setProperty property="userName" name="user" value="DefaultUserName"/>

<h1>Login Successful! </h1>
<br>
<%-- Hello: <%= user.getUserName() %> --%>

Hello from JSTL tag: <jsp:getProperty property="userName" name="user"/>

</body>
</html>