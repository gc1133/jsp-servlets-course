<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
	public void jspInit(){
		String defaultUser = getServletConfig().getInitParameter("defaultUser");
		ServletContext context = getServletContext();
		context.setAttribute("defaultUser", defaultUser);
	
	}
%>

Default username from init config is: <%= getServletConfig().getInitParameter("defaultUser") %>
<br>
Value in the servlet context is: <%= getServletContext().getAttribute("defaultUser") %>

</body>
</html>