
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	String firstName = request.getParameter("txt_first_name");
String lastName = request.getParameter("txt_last_name");
String dob = request.getParameter("txt_dob");
String gender = request.getParameter("txt_gender");
String email = request.getParameter("txt_email_address");
String pass = request.getParameter("txt_password");
String confirm = request.getParameter("txt_confirm_password");
if (!pass.equals(confirm)) {
	response.sendRedirect("signup.jsp?err=Password and Confirm Password not match");
}

try {
	//step 1 load database driver
	Class.forName("com.mysql.cj.jdbc.Driver");
	out.println("Driver Loaded Successfully....");

	//establish connection
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/groupb", "root", "");
	out.println("Database connected successfully....");

	//Prepare sql query
	String sql = "INSERT INTO tbl_users(firstname,lastname,dob,gender,email,password) VALUES(?,?,?,?,?,?)";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, firstName);
	stmt.setString(2, lastName);
	stmt.setString(3, dob);
	stmt.setString(4, gender);
	stmt.setString(5, email);
	stmt.setString(6, pass);
	stmt.executeUpdate();
	response.sendRedirect("login.jsp?success");
} catch (Exception e) {
	out.println(e.getMessage());
}
%>