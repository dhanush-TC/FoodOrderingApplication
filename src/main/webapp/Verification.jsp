<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body Style="background-image:url(./img/error.jpg);  background-repeat: no-repeat;
            background-size: cover;">
	<%
		String given_username =request.getParameter("userid");
		String given_password= request.getParameter("userpassword");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dhanush","root","pasword");
			PreparedStatement ps=con.prepareStatement("select * from records WHERE username=? AND password=?");

			ps.setString(1,given_username);
			ps.setString(2,given_password);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
					out.println("login sucessful");
					out.println("welcome "+given_username);
					response.sendRedirect("orderfood.jsp");
				}
				else
				{
					%>
					<center>
					<h1 Style="color :black ;'">invalid login details Try Again ....</h1><br>
					
					<h4> <a style="color:black;"  href="welcome.html">click here to signin...</a></h4>
					</center>
				<% 	
				}
				
			}
			catch(Exception e ){			
				out.println("exception raised" +e.getMessage());
				
			}
	%>
</body>
</html>