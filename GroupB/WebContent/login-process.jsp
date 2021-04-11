
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
	String name = request.getParameter("txt_username");
String pass = request.getParameter("txt_password");

try {
	//load the database driver
	Class.forName("com.mysql.cj.jdbc.Driver");
	//establish database connection
	Connection conn =
	DriverManager.getConnection("jdbc:mysql://localhost:3306/groupb", "root", "");
	//prepare sql statement
	String sql = "SELECT * FROM tbl_users WHERE email=? AND password=?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	//set parameters

	stmt.setString(1, name);
	stmt.setString(2, pass);

	boolean isAuthenticated = false;
	//execute query
	ResultSet rs = stmt.executeQuery();
	while (rs.next()) {
		isAuthenticated = true;
	}
	//test the authentication
	//close the connection and redired to page
	conn.close();
	if (isAuthenticated) {
		response.sendRedirect("index.jsp");
	} else {
		response.sendRedirect("login.jsp?err=Invalid user credentials");
	}
} catch (Exception e) {
	out.println(e.getMessage());
}
if (name.equals("admin") && pass.equals("nast")) {
	response.sendRedirect("index.jsp");
} else {
	out.println("<a href='login.jsp'>Retry</a>");
}
%>