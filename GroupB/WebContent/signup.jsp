<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Page</title>
</head>
<body>
	<h1>Signup Page</h1>
	<hr />
	<%
		if(request.getParameter("err")!=null){
			out.print("<h2 style='background-color:red; color:white; width:400px;'>Password and Confirm Password not matched</h2>");
		}
	%>
	<form method="post" action="signup-process.jsp">
		<table>
			<tr>
				<td>First Name</td>
				<td colspan="2"><input type="text" name="txt_first_name" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td colspan="2"><input type="text" name="txt_last_name" /></td>
			</tr>
			<tr>
				<td>DOB</td>
				<td colspan="2"><input type="date" name="txt_dob" /></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td colspan="2"><input type="radio" name="txt_gender" value="M" />Male
					<input value="F" type="radio" name="txt_gender" /> Female</td>
			</tr>
			<tr>
				<td>Email Address</td>
				<td colspan="2"><input type="email" name="txt_email_address" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td colspan="2"><input type="password" name="txt_password" /></td>
			</tr>
			<tr>
				<td>Confirm-Password</td>
				<td colspan="2"><input type="password" name="txt_confirm_password" /></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2"><input type="submit" name="btn_signup"
					value="Signup" /></td>
			</tr>
		</table>
	</form>
</body>
</html>