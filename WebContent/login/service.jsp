<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css" />
<title>service Page</title>
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

	<div class="menu">
		<div class="topnav">
			<a class="active" href="phome.jsp"> <b style="color: brown">
					HOME &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a href="service.jsp"> <b
				style="color: brown"> SERVICE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a
				href="contact_us.jsp"> <b style="color: brown"> CONTACT US
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a href="*"> <b
				style="color: brown"> ABOUT US &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
			<div class="dropdown">
				<button class="dropbtn">APPOINTMENT & BILL</button>
				<div class="dropdown-content">
					<a href="appointment.jsp">APPOINTMENT</a> <a href="bill.jsp"> BILL</a>

				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>

		</div>
	</div>

	<div class="ctable">
		<img src="photos/news1.jpg" height="10%" width="100%"
			style="border-radius: 25px;"><br />
		<br />

	</div>

	<div class="column box">
		<center>
			<b style="font-size: x-large;">OPD Management</b>
		</center>
		<br> <img src="photos/fac1.jpg" height="20%" width="100%"><br />
		<br />
		<p>This module controls all activities related to OPD from
			registration, precscription and collection. Out Patient visit, Out
			Patient Registration, OPD cash Collection, Out Patient Pathology
			Registration, Out Patient Radiology Registration, Out Patient
			Pathology Invoice Generation, Out Patient Radiology Invoice
			Generation</p>
		<br />
	</div>

	<div class="column box">
		<center>
			<b style="font-size: x-large;">IPD Management</b>
		</center>
		<br> <img src="photos/fac2.jpg" height="20%" width="100%"><br />
		<br />
		<p>IPD Registration, Advance Deposit, Advance Status, Patient's
			Medicine, Patient's diagnosis, Graphical Ward Representation, Patient
			Prescribe Test (Investigation), History and Findings, Patients Record
			Review, Pathology and Radiology Invoices, Ward Shift, Room Shift,
			Discharge Draft, Final Discharge, Final Bill, Discharge Patients
			Records.</p>
		<br />
	</div>
	<div class="column box">
		<center>
			<b style="font-size: x-large;">Pathology Management</b>
		</center>
		<br> <img src="photos/fac3.jpg" height="20%" width="100%"><br />
		<br />
		<p>This module manages all the Pathology Record.Areas managed by
			Pathology Management. Fill Patients Result, Test Reports,Emergency
			Patient Registration,Master Data.This section provides all type of
			pathology test like as HB, OPERATION and ANAESTHESIA, CBC, BLOOD
			GROUP RH, RBS, S CREATININE, S UREA,</p>
		<br />
	</div>

	<div class="column box">
		<center>
			<b style="font-size: x-large;">Radiology Management</b>
		</center>
		<br> <img src="photos/fac4.jpg" height="20%" width="100%"><br />
		<br />
		<p>This module manages all type of Radiology Record, ultrasound
			reports. Areas managed by Radiology Management. USG Whole Abdomen,
			Abdominal Ultrasound, Mammogram, Previous Radiology Reports, Ultra
			Sound Pending List, Emergency Patient Registration .</p>

	</div>

	<div class="column box">
		<center>
			<b style="font-size: x-large;">Account Management</b>
		</center>
		<br> <img src="photos/fac6.jpg" height="20%" width="100%"><br />
		<br />
		<p>This module controls all activities related to accounts such as
			bill Cash Payment Master,Cheque Payment Master.Cash Payment Master,
			Cheque Payment Master, Cash Receipt Master, Cheque Receipt Master,
			Bank To Cash Master, View Ledger Master, Trial Balance, Cash Book
			Master,Opening Balance.</p>

	</div>







	<div class="foot">
		<b> © 2018 by AS Hospital. All Rights Reserved </b> <br />
	</div>
	<br />
	<br />

</body>
</html>
