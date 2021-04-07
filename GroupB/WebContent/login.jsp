<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Login</title>
</head>
<body>
	<h1>Application Login</h1>
	<hr />
	<form method="post" action="login-process.jsp">
		<table>
			<tr>
				<td><label>Username</label></td>
				<td><input type="text" name="txt_username" required /></td>
			</tr>
			<tr>
				<td><label>Password</label></td>
				<td><input type="password" name="txt_password" required="required" /></td>
			</tr>
			<tr>
				<td><a href="signup.jsp">Don't have an Account? Signup</a></td>
				<td><button type="submit">Login</button></td>
			</tr>
		</table>
	</form>
</body>
</html>