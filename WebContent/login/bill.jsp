<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css" />
<title>BILL</title>
</head>
<body>
	<div class="log">
		<div align="right">
			<img src="photos/jt.png" height="10%" width="10%"
				style="border-radius: 25px;">

			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "");
				Statement st = conn.createStatement();

				String username = (String) session.getAttribute("username");

				String appointnumber = (String) session.getAttribute("id");

				ResultSet r = st.executeQuery("select *  from register where email='" + username + "'");
				r.next();
				String name = r.getString(1);

				ResultSet sr = st.executeQuery("select fees,doctor  from appointment where appointment_number='"
						+ appointnumber + "'AND email='" + username + "'");
				sr.next();
				int fees = Integer.parseInt(sr.getString(1));
				String doctor = sr.getString(2);

				ResultSet rs = st.executeQuery("select fees  from doctor where fname='" + doctor + "'");
				rs.next();
				int f = Integer.parseInt(rs.getString(1));

				int total = fees + f;

				if (username == null) {

					response.sendRedirect("../home.jsp");
				}

				out.print("<p style='color:white'>Welcome :<b><span style='color:white'>" + username + "</span></b><br>");
			%>

			<form action="../LogoutHandler" method="get">
				<input type="submit" value="signout">
			</form>
			<a href="profile.jsp" style='color: white'><b>profile</b></a>"
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
	<br>
	<br>
	<br>

	<div class="appoint">
		<form name="bi" method="post" onsubmit="" action="../BillHandler">

			<center>
				<h2>PAY BILL</h2>
			</center>
			<table name="appointment">



				<tr>
					<td>Patient Name:<br /> <br /> <br /></td>

					<td><input type="text" name="pname"
						value="<%out.print(name);%>" class="textbox" /><br /> <br /> <br /></td>

				</tr>

				<tr>
					<td>Doctor Name:<br /> <br /> <br /></td>
					<td><input type="text" name="doctorname"
						value="<%out.print(doctor);%>" class="textbox" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <br /></td>

				</tr>
				<tr>
					<td>Appointment Number :<br /> <br /> <br /></td>
					<td><input type="text" name="appoinnum"
						value="<%out.print(appointnumber);%>" class="textbox" /><br /> <br />
						<br /></td>


				</tr>

				<tr>
					<td>Total Price:<br /> <br /> <br /></td>
					<td><input type="text" name="amount"
						value="<%out.print(total);%>" class="textbox" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <br /></td>
				</tr>

				<tr style="float: right">
					<td><input type="submit" value="CANCEL" id="buttoncolor"
						onclick="window.location.href='phome.jsp'"></td>
					<td><input type="submit" value="PAYBILL"
						name="conform appointment" id="buttoncolor"></td>

				</tr>


			</table>
		</form>
	</div>

</body>
</html>