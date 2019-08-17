<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css" />
<title>AS Page</title>
</head>
<body>
	<div class="log">
		<div align="right">
			<img src="photos/jt.png" height="10%" width="10%"
				style="border-radius: 25px;">
			<% 
      
     
	  String name=(String)session.getAttribute("username");
    if(name==null){
    	response.sendRedirect("../home.jsp"); 
    }
    
   
    out.print("<p style='color:white'>Welcome :<b><span style='color:white'>"+name+"</span></b>");
  
   
    
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
	<div class="log"></div>
	<div class="menu">
		<div class="topnav">
			<a class="active" href="phome.jsp"> <b style="color: brown">
					HOME &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a href="service.jsp"> <b
				style="color: brown"> SERVICE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a
				href="contact_us.jsp"> <b style="color: brown"> CONTACT US
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a href="aboutUs.jsp"> <b
				style="color: brown"> ABOUT US &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
			<div class="dropdown">
				<button class="dropbtn">APPOINTMENT & BILL</button>
				<div class="dropdown-content">
					<a href="appointment.jsp">APPOINTMENT</a> <a href="bill.jsp">BILL</a>

				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>

		</div>
	</div>

	<div class="ctable">

		<img src="photos/doctor.jpg" height="10%" width="100%"
			style="border-radius: 25px;"><br />
		<br />
		<!--  <img src="photos/f2.jpg" height="10%" width="100%" style=" border-radius:25px;" >-->



	</div>

	<div class="ctable"></div>



	<div class="column box">
		<center id="fcolor1">
			<b style="font-size: x-large;">Why Choose Us</b>
		</center>
		<br /> <img src="photos/h1.jpg" style="width: 100%; height: 70%;">
		<br />
		<p id="fcolor2">Caretorium is a advance web technology which full
			fill the reqiurments for the hospital management system. We provide
			full software demonstration on site and online. We are available 24/7
			hours of services at any instance for our clients.</p>

	</div>

	<div class="column box">

		<center id="fcolor1">
			<b style="font-size: x-large;">Patient Management</b>
		</center>
		<br /> <img src="photos/fac1.jpg" style="width: 100%; height: 70%;">
		<br />
		<p id="fcolor2">We have the best service of patient managment
			system incluiding Opd registration, prescription,collection, Ipd
			registration,deposits,ward managment, discharge card and final bill
			section.</p>

	</div>

	<div class="column box">
		<center id="fcolor1">
			<b style="font-size: x-large;">Doctor Management</b>
		</center>
		<br /> <img src="photos/fac3.jpg" style="width: 100%; height: 70%;">
		<br />
		<p id="fcolor2">We have the best module of doctor managment also,
			Incluiding Doctor Master,Doctor login, Doctor attendence and all
			others module to related facility.</p>
	</div>





	<div class="foot">
		<b> © 2018 by AS Hospital. All Rights Reserved </b> <br />
	</div>
	<br />
	<br />

</body>
</body>
</html>
