<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css" />
<title>profile</title>
</head>
<body>
	<div class="log">
		<div align="right">
			<img src="photos/jt.png" height="10%" width="10%"
				style="border-radius: 25px;">

			<%
 
         Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "");
		 Statement st=conn.createStatement();
         String username=(String) session.getAttribute("username");
        
         String name=(String) session.getAttribute("fName");
         if(username==null){
        	 
         	response.sendRedirect("../home.jsp");
         }
         out.print("<p style='color:white'>Welcome :<b><span style='color:white'>"+username+"</span></b>");
        
         ResultSet rs=st.executeQuery("select * from register where email='"+username+"'");
         rs.next();
         String fname=rs.getString(1);	 
     	 String age=rs.getString(2);
     	 String	address=rs.getString(6);
     	 String phone=rs.getString(4);
     	 
     		
        %>
			<form action="../LogoutHandler" method="get">
				<input type="submit" value="signout">
			</form>
			<a href="profile.jsp" style='color: white'><b>profile</b></a>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="HDname">
		<center>
			<h1>AS HOSPITAL</h1>
		</center>
	</div>


	<div align="center">
		<img src="photos/jt.png" height="10%" width="10%"
			style="border-radius: 25px;"><br />
		<br />
		<form method="post" action="../UserupdateHandler">
			<table>
				<caption>
					<b style='color: white; font-size: x-large;'>PATIENTS DETAILS
						EDIT</b>
				</caption>
				<tr></tr>

				<tr>
					<td style='color: white; font-size: x-large;'>Email :</td>
					<td><input type="text" name="email"
						value="<% out.print(username);%>" id="textbox" /></td>
				</tr>

				<tr>
					<td style='color: white; font-size: x-large;'>Fullname :</td>
					<td><input type="text" name="fname"
						value="<% out.print(fname);%>" id="textbox" /></td>
				</tr>

				<tr>
					<td style='color: white; font-size: x-large;'>Age :</td>
					<td><input type="text" name="age" value="<% out.print(age);%>"
						id="textbox" /></td>
				</tr>




				<tr>
					<td style='color: white; font-size: x-large;'>PhoneNumber :</td>
					<td><input name="phone" value="<% out.print(phone);%>"
						id="textbox" /></td>
				</tr>



				<tr>
					<td style='color: white; font-size: x-large;'>Address :</td>
					<td><input name="add" value="<% out.print(address);%>"
						id="textbox" /></td>
				</tr>



				<tr>
					<td><input class="btn" type="submit" name="btnUpdate"
						id="buttoncolor" value="change" /></td>

					<td><input class="btn" type="reset" name="btnReset"
						id="buttoncolor" value="Reset" /> <input type="button" name="back"
						value="<<back" id="buttoncolor"
						onclick="window.location.href='phome.jsp'"> <input
						type="button" name="back" value="password change" id="buttoncolor"
						onclick="window.location.href='userPrest.jsp'"></td>
				</tr>
			</table>

		</form>
	</div>

</body>
</html>