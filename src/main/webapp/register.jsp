<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body Style=" background-image: url(./img/registrationsucess.jpg);background-repeat: no-repeat;">
	<% 	
	String username=request.getParameter("username");
		String password=request.getParameter("pwd");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dhanush","root","pasword");
			PreparedStatement ps=con.prepareStatement("insert into records values(?,?,?,?)");
			ps.setString(1,username);
			ps.setString(2,password);
			ps.setString(3,email);
			ps.setString(4,mobile);
			ps.executeUpdate();
			out.println("<center>your registration is sucessful</center>");
		}
		catch(Exception e)
		{
			out.println("exception occured "+e.getLocalizedMessage());
		}
	%>
	
	<center><h5><a style="color:teal;" href="welcome.html">Click here to login...</a></h5></center>
</body>
</html>