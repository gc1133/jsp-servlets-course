<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My JSP file</title>
</head>
<body>

<%!
	public int add(int i, int j){
		return i+j;
}
%>

<%
 int i = 2;
 int j = 3;
 int k = i + j;
%>

Value of k is : <%= k %>
<br>

Calling add method 3+4 = <%= add(3, 4) %>
<br>

<% k = k+10; %>
Value of k after +10 is: <%= k %>

<br>

<% for(int n=1; n<=5; n++) { %>
	<br> Value of n is: <%=n %>
<% } %>

</body>
</html>