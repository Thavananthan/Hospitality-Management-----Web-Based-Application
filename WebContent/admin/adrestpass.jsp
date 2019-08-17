<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title>admin password reset</title>
<style type="text/css">
        th,td{
            padding-right: 80px;
            padding-left: 80px;
            height: 60px;
        }
    </style>
</head>
<body>
<div class="log">
     <div align="right">
     <img src="photos/ad.png" height="10%" width="10%" style=" border-radius:25px;" >
       
       
        
          <%
         Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "");
		 Statement st=conn.createStatement();
		 String username=(String) session.getAttribute("username");
		
		 
         if(username==null) username="";
         out.print("<p style='color:white'>Welcome :  <b><span style='color:white'>"+username+"</span></b><br>");
         ResultSet rs=st.executeQuery("select * from admin where Username='"+username+"'");
 		  rs.next();
 		   String ad=rs.getString("admin_id");
 		   String name=rs.getString(2);
 		   
         
        %>
   <form action="../LogoutHandler" method="get">
		<input type="submit" value="signout">
	</form>
  
 </div>
</div><br><br><br><br><br><br><br>
      <div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1></center>
        </div>
        
     <form action="../AdminResetPwsHandler" method="post" name="repa" onsubmit="return formValidateReg();" >
     	<table>
     		
			
			<tr><td style='color:white;font-size:x-large;'> your mail</td><td style='color:white;font-size:x-large;'><% out.print(name);%></td></tr>
			<tr><td style='color:white;font-size:x-large;'>Admin Id</td><td><input type="password" name="id" id="textbox"></td></tr>
			<tr><td style='color:white;font-size:x-large;'>New Password</td><td><input type="password" name="new" id="textbox"></td></tr>
			<tr><td style='color:white;font-size:x-large;'>Confirm Password</td><td><input type="password" name="confirm" id="textbox"></td></tr>
			<tr>
								<th>
									<p style='color: red; font-size: x-large;'>
										<% String error=(String ) session.getAttribute("error");
                         
                         if(null==error)
                         {
                        	 out.print("<br>");
                         }
                         else
                        	 out.println(error);
                           session.setAttribute("error",null);
                         
                         
                         
                         %>

									</p>
								</th>
							</tr>
			
			
			<tr><td><input type="submit" value="Change Password" id="buttoncolor"></td></tr>
		</table>
		 <input  type="button" name="back" value="<<back"  id="buttoncolor" onclick="window.location.href='admin.jsp'">
		
		
		
		
	
	</form>



		
</body>
</html>
<script type="text/javascript">

function formValidateReg()
   {
		 
var firstname = document.forms["repa"]["new"].value;
var lastname = document.forms["repa"]["confirm"].value;
var name = document.forms["repa"]["id"].value;




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
			
			return true;
	}
	else 
	{
		alert("Error: Please check that you've entered and confirmed your password!");
		return false;
	}
}


function confirmPassword(elemValue)
{
	if(elemValue == document.forms["repa"]["new"].value ) 
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



        