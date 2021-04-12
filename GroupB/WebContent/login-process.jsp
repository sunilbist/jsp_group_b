
<%@page import="db.MySqlConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
	String name = request.getParameter("txt_username");
String pass = request.getParameter("txt_password");

try {
	Connection conn = MySqlConnector.connect();
	
	//prepare sql statement
	String sql = "SELECT * FROM tbl_users WHERE email=? AND password=?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	//set parameters

	stmt.setString(1, name);
	stmt.setString(2, pass);

	boolean isAuthenticated = false;
	String fullName="";
	Integer id=0;
	//execute query
	ResultSet rs = stmt.executeQuery();
	while (rs.next()) {
		id=rs.getInt("id");
		fullName=rs.getString("firstname")+ " "+rs.getString("lastname");
		isAuthenticated = true;
	}
	//test the authentication
	//close the connection and redired to page
	conn.close();
	if (isAuthenticated) {
		session.setAttribute("userId", id);
		session.setAttribute("username", name);
		session.setAttribute("fullName", fullName);
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