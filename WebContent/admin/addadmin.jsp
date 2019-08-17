<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title> add admin</title>
</head>
<body>
<div class="log">
     <div align="right">
     <img src="photos/ad.png" height="10%" width="10%" style=" border-radius:25px;" >
   
 <%
 
         Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "");
		 Statement st=conn.createStatement();
         String name=(String) session.getAttribute("username");
        

         if(name==null||name==""){
        	 
         	response.sendRedirect("../home.jsp");
         }
         out.print("<p style='color:white'>Welcome :<b><span style='color:white'>"+name+"</span></b><br>");
         
         
        %>
        <form action="../LogoutHandler" method="get">
		<input type="submit" value="signout">
	</form>
   <a href="profile.jsp" style='color:white'><b>profile</b></a>"
   </div>
</div><br><br><br><br><br><br><br>


        <div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1></center>
        </div>
        
        <div align="center">
    <form name="u" method="post" action="../AdminAddHandler "   onsubmit="return formValidateReg();">
        <table>
            <caption><b style='color:white;font-size:x-large;'>ADD ADMIN</b></caption>
            <tr></tr>
            
           
            <tr>
                <td style='color:white;font-size:x-large;'>Admin ID</td>
                <td><input type="text" name="id" id="textbox" /></td>
            </tr>

            <tr>
                <td style='color:white;font-size:x-large;'>Name</td>
                <td><input type="text" name="fname"  id="textbox"/></td>
            </tr>
			
			<tr>
                <td style='color:white;font-size:x-large;'>password </td>
                <td><input type="text" name="lname" id="textbox"/></td>
            </tr>
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
			
              
              <input type="hidden" name="ff"  value="doctor" id="textbox" />


            <tr>
                <td>
                   
                   
                    
                </td>

                <td>
                 
                    <input class="btn" type="submit" name="add"  id="buttoncolor" value="ADD"/>
					<input  type="button" name="back" value="<<back"  id="buttoncolor" onclick="window.location.href='admin.jsp'">
                </td>
            </tr>
        </table>

    </form>
</div>
        

<script type="text/javascript">

function formValidateReg()
   {
		 
var firstname = document.forms["u"]["lname"].value;
var lastname = document.forms["u"]["fname"].value;
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



}

</script>



  

 






























</body>
</html>