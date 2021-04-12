<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.MySqlConnector"%>
<%@page import="java.sql.Connection"%>
<%
	String title = request.getParameter("txt_title");
String content = request.getParameter("txt_content");
try {

	Connection conn = MySqlConnector.connect();

	//prepare sql
	String sql = "INSERT INTO tbl_blog_posts(user_id,blog_title,blog_content,created_date,status) VALUES(?,?,?,?,?)";
	PreparedStatement stmt = conn.prepareStatement(sql);
	//set parameters

	stmt.setInt(1, Integer.parseInt(session.getAttribute("userId").toString()));
	stmt.setString(2, title);
	stmt.setString(3, content);
	stmt.setString(4, new Date().toString());
	stmt.setInt(5, 1);

	//execute 
	Integer result = stmt.executeUpdate();

	//close the connection and redirect page
	conn.close();
	if (result > 0) {
		response.sendRedirect("index.jsp");
	} else {
		response.sendRedirect("newblog.jsp?err=Unable to save data to database");
	}

} catch (Exception e) {

}
%>