<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css" />
<title>User password reset</title>
<style type="text/css">
th, td {
	padding-right: 80px;
	padding-left: 80px;
	height: 60px;
}
</style>
</head>
<body>
	<div class="logo">
		<div align="right">
			<img src="photos/jt.png" height="20%" width="30%"
				style="border-radius: 25px;">
			<%
 
         
         String username=(String) session.getAttribute("username");
         String name=(String) session.getAttribute("fName");
         if(username==null){
         	response.sendRedirect("../home.jsp"); 
         }
         out.print("<p style='color:white'>Welcome :<b><span style='color:white'>"+username+"</span></b><br>");
         
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





	<form name="upr" action=" ../UserPassResetHandler" method="post"
		onsubmit="return formValidateReg();">
		<table>
			<caption>
				<b style="font-size: x-large; color: white;">Change Password</b><br>
				<br>
			</caption>
			<tr style='color: white;'>
				<td>Enter your mail</td>
				<td><input type="text" name="mail" id="textbox"
					value="<% out.print(username);%>"></td>
			</tr>

			<tr style='color: white;'>
				<td>New Password</td>
				<td><input type="password" name="new" id="textbox"></td>
			</tr>
			<tr style='color: white;'>
				<td>Confirm Password</td>
				<td><input type="password" name="confirm" id="textbox"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Change" id="buttoncolor"></td>
			</tr>





			<tr>
				<td><input type="button" value="<<BACK"
					onclick="window.location.href='phome.jsp'" id="buttoncolor"
					style="float: left">
			</tr>
			</td>
		</table>

	</form>




</body>
</html>

<script type="text/javascript">

function formValidateReg()
   {
		 
var firstname = document.forms["upr"]["new"].value;
var lastname = document.forms["upr"]["confirm"].value;



if(checkPassword(firstname))
	 if(confirmPassword(lastname)) 
           { return true;}
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
     
function checkPassword(elemValue)
{
    if(elemValue != "" || elemValue==null) 
	{
		if(elemValue.length < 8) 
		{
			alert("Error: Password must contain at least eight characters!");
			return false;
		}
		exe = /[0-9]/;
		if(!exe.test(elemValue)) 
		{
			alert("Error: password must contain at least one number (0-9)!");
			return false;
		}
		exe = /[a-z]/;
		if(!exe.test(elemValue)) 
		{
			alert("Error: password must contain at least one lowercase letter (a-z)!");
			return false;
		}
		exe = /[A-Z]/;
		if(!exe.test(elemValue)) 
		{
			alert("Error: password must contain at least one uppercase letter (A-Z)!");      
			return false;
		}
		else
			{
			 
			return true;
			}
	}
	else 
	{
		alert("Error: Please check that you've entered and confirmed your password!");
		return false;
	}
}


function confirmPassword(elemValue)
{
	if(elemValue == document.forms["upr"]["new"].value) 
	{
		alert("Your  password is changed");
		return true;
	}
	else
	{
		alert("Error: Please check cofirmed password");
		return false;
	}
}

</script>
