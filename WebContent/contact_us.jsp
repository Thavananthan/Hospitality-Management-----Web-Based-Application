<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css" />
<title>contact us Page</title>
</head>
<body>
	<div class="foot">
		<b> Working hours 6.00 AM to 8.30 PM </b> <br />
	</div>
	<br />

	<div class="HDname">
		<center>
			<h1>AS HOSPITAL</h1>
		</center>
	</div>

	<div class="menu">
		<div class="topnav">
			<a class="active" href="home.jsp"> <b style="color: brown">
					HOME &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a href="service.jsp"> <b
				style="color: brown"> SERVICE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a
				href="contact_us.jsp"> <b style="color: brown"> CONTACT US
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a> <a href="aboutUs.jsp"> <b
				style="color: brown"> ABOUT US &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
			<div class="dropdown">
				<button class="dropbtn">LOGIN</button>
				<div class="dropdown-content">
					<a href="P_login.jsp">PATIENTS</a> <a href="admin/Admin_login.jsp">ADMIN</a>
					<a href="doctor/D_login.jsp">DOCTOR</a>

				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<div class="dropdown">
				<button class="dropbtn">SIGN UP</button>
				<div class="dropdown-content">
					<a href="register.jsp">REGISTER</a>

				</div>
			</div>
		</div>

	</div>

	<div class="ctable">
		<img src="photos/image3.jpg" height="10%" width="100%"
			style="border-radius: 25px;"><br />
		<br />

	</div>


	<div class="feedback">
		<center>
			<h2>
				<b style="font-size: x-large; color: white;">FEEDBACK </b>
			</h2>
		</center>
		<br>
		<form name="feed" method="post" onsubmit="feedbackValidate();"
			action="FeedbackHandler">
			<table name="feed_table" style="font-size: x-large; color: white;">
				<tr>
					<td><b> Name:</b><br />
					<br /></td>
					<td>&nbsp;&nbsp;&nbsp;<input type="text" name="name"
						placeholder="Name" id="textbox"><br />
					<br />
					</td>
				</tr>

				<tr>
					<td><b> Email:</b><br />
					<br /></td>
					<td>&nbsp;&nbsp;&nbsp;<input type="email" name="email"
						placeholder="name@gmail.com" id="textbox"> <br />
					<br />
					</td>
				</tr>

				<tr>
					<td><b> Phone Number:</b><br />
					<br /></td>
					<td>&nbsp;&nbsp;&nbsp;<input type="text" name="Pho_num"
						placeholder="0771245693" id="textbox"> <br />
					<br />
					</td>
				</tr>

				<tr>
					<td><b> Messages:</b><br />
					<br /></td>
					<td>&nbsp;&nbsp;&nbsp;<textarea name="mess" rows="5" cols="35"
							border="2px "> </textarea> <br />
					<br />
					</td>
				</tr>


				<tr float:left>
					<td></td>
					<td><input type="submit" value="  SEND  " name="SEND"
						id="buttoncolor"></td>
				</tr>

			</table>
		</form>

	</div>





	<div class="column1 box1">
		<center>
			<b style="color: white">Our Doctors. </b>
		</center>
		<br /> <img src="photos/image1.jpg" height="100%" width="100%"><br />
		<br />
		<center>
			<b style="color: white">Our Technology. </b>
		</center>
		<br /> <img src="photos/image2.jpg" height="100%" width="100%"><br />
	</div>

	<div class="column1 box1" style="color: #CFB53B">
		<center>
			<b>Office Address</b>
		</center>
		<br />
		<p>
			Ist floor, 3/3 A<br> Sardar Patel Marg,<br> Civil Lines
			Allahabad,<br> UP,colombo.
		</p>
		<br />
		<hr>

		<p>
			<b> Contact Persion -</b>Rajeev Trivedi<br /> Mobile - 7985427230
		</p>
		<p>
			<b>Office Email -</b> rt@crestworld.com admin@crestworld.com
		</p>


	</div>


	<div class="foot">
		<b> © 2018 by AS Hospital. All Rights Reserved </b> <br />
	</div>
	<br />
	<br />




</body>
<br />
</html>
<script type="text/javascript">
function feedbackValidate()
 {
	 var namef=document.forms["feedback"]["name"].value;
	 var emailf=document.forms["feedback"]["email"].value;
	 var phonef= document.forms["feedback"]["Pho_num"].value;
    
	 
	 
	 
	 if(namefvalidate(namef))
		 if(emailfvalidate(emailf))
			 if(phonefvalidate(phonef))
				 return true;
	         else 
		        return false;
	      else 
		     return false;	
       else 
		  return false;
      
		 
	
	
	
	
	
}

 function isEmpty(elemValue,field)
	{
		if(elemValue=="" || elemValue==null)
		{
			alert("Error: You Cannot Have "+ field +" Filed Empty");
			return true;
		}
		else
		{
			
			return false;
		
		}	
	}
	
 function namefvalidate(elemValue)
 {
	var exp = /^[a-zA-Z]+$/;
		if(!isEmpty(elemValue,"Name"))
		{
			if(elemValue.match(exp))
			{
				return true;
			}
			else
			{
				alert("Error: Please Enter Alphabetical Character for your Name");
				return false;
			}
		}
		else
			return false;
}	
  
  
 function emailfvalidate(elemValue)
     {
		if(!isEmpty(elemValue,"Email"))
		{
			var atops = elemValue.indexOf("@");
			var dotops = elemValue.indexOf(".");
			
			if(atops < 1 ||  dotops + 2 >= elemValue.length || atops +2 > dotops)
			{
				alert(" Enter a valid email address");
				return false;
			}
			else
				return true;
		}
		else
			return false;
	} 
	
	function phonefvalidate(elemValue)
	{
		if(!isEmpty(elemValue,"Phone Number"))
		{
			var exp = /^[0-9]+$/;
			if(!elemValue.match(exp))
			{
				alert("Error: Phone number must numbers!");
				return false;
			}
			if(elemValue.length < 10 ) 
			{
				alert("Error: Phone Number must 10 numbers");      
				return false;
			}
			if(elemValue.length > 10 ) 
			{
				alert("Error: Phone Number must 10 numbers");      
				return false;
			}
			else
			{
				return true;
			}
		}
		else
			return false;
	}
	 








</script>
