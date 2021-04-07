
<%
	String name = request.getParameter("txt_username");
String pass = request.getParameter("txt_password");
if (name.equals("admin") && pass.equals("nast")) {
	response.sendRedirect("index.jsp");
} else {
	out.println("<a href='login.jsp'>Retry</a>");
}
%>