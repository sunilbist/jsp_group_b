
<%
	if (session.getAttribute("username") == null) {
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h1>
		Welcome Home
		<%=session.getAttribute("fullName")%></h1>
	<a href="newblog.jsp">Create New Blog</a>
	<a href="logout.jsp">Logout</a>
</body>
</html>