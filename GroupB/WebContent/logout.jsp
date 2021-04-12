<%if(session.getAttribute("username")!= null || session.getAttribute("username")!="") {
	
	session.setAttribute("userId", 0);
	session.setAttribute("username", null);
	session.setAttribute("fullName", "");
	
	response.sendRedirect("login.jsp");
}%>