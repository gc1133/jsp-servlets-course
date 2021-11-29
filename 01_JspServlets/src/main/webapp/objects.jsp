<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Objects</title>
</head>
<body>

<% 
	String username = request.getParameter("name"); 
	
	if(username != null){
		session.setAttribute("sessionUserName", username);
		application.setAttribute("contextUserName", username);
	}

%>

<br>
Username in the request object is: <%= username %>
<br>
Username in the session object is: <%= session.getAttribute("sessionUserName") %>
<br>
Username in the application context object is: <%= application.getAttribute("contextUserName") %>

</body>
</html>