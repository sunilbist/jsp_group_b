
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
<title>Create New Blog</title>
</head>
<body>
	<h2>Create New Blog</h2>
	<form action="newblog-save.jsp">
		<label>Blog Title</label><br /> <input type="text" name="txt_title" /><br />

		<label>Blog Content</label><br />
		<textarea rows="8" cols="45" name="txt_content"></textarea>
		<br />

		<button type="submit">Publish Post</button>
	</form>

</body>
</html>