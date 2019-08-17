<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title>Insert title here</title>

</head>

<body>
<div class="log">
    <div align="right">
     <img src="photos/ad.png" height="10%" width="10%" style=" border-radius:25px;" >
       
       
        
          <%
         
		
         String username=(String) session.getAttribute("username");
         if(username==null) username="";
         out.print("<p style='color:white'>Welcome :  <b><span style='color:white'>"+username+"</span></b><br>");
         
        %>
   <form action="../LogoutHandler" method="get">
		<input type="submit" value="signout">
	</form>
  
 </div>
</div><br><br><br><br><br><br><br>
			<div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1></center>
        </div><br/>
        
        <div align="center">
    <form name="u" method="post" action="../DoctorInsertHandler "   onsubmit="return formValidateReg();">
        <table>
            <caption><b style='color:white;font-size:x-large;'>DOCTOR DETAILS EDIT</b></caption>
            <tr></tr>
            
           
            <tr>
                <td style='color:white;font-size:x-large;'>Doctor Id:</td>
                <td><input type="text" name="id" id="textbox" /></td>
            </tr>

            <tr>
                <td style='color:white;font-size:x-large;'>firstname:</td>
                <td><input type="text" name="fname"  id="textbox"/></td>
            </tr>
			
			<tr>
                <td style='color:white;font-size:x-large;'>Lastname: </td>
                <td><input type="text" name="name" id="textbox"/></td>
            </tr>
			
			<tr>
                <td style='color:white;font-size:x-large;'>Age: </td>
                <td><input type="text" name="age" id="textbox"/></td>
            </tr>

          
            <tr>
                <td style='color:white;font-size:x-large;'>Salary:</td>
                <td><input name="salary" id="textbox" /></td>
            </tr>
            
            <tr>
                <td style='color:white;font-size:x-large;'>Fees:</td>
                <td><input name="fees" id="textbox" /></td>
            </tr>
             <tr>
                <td style='color:white;font-size:x-large;'>Password:</td>
                <td><input name="password" id="textbox" /></td>
            </tr>
              
               <td><input type="hidden" name="ff"  value="doctor" id="textbox" />


            <tr>
                <td>
                   
                    <input class="btn" type="submit" name="btnUpdate" id="buttoncolor" value="ADD"/>
                    
                </td>

                <td>
                 
                    <input class="btn" type="reset" name="btnReset"  id="buttoncolor" value="Reset"/>
					<input  type="button" name="back" value="<<back"  id="buttoncolor" onclick="window.location.href='admin.jsp'">
                </td>
            </tr>
        </table>

    </form>
</div>

        
        
</body>
</html>
<script type="text/javascript">
     function formValidateReg()
        {
    	 var id = document.forms["u"]["id"].value;	 
	var firstname = document.forms["u"]["fname"].value;
	var lastname = document.forms["u"]["lname"].value;
	var age = document.forms["u"]["age"].value;
	var salary = document.forms["u"]["salary"].value;
	var pay = document.forms["u"]["fees"].value;
	
	
	
	if(validFname(firstname))
		if(validage(age))
		   if( validlname(lastname)) 
	            if(validsalary(salary))
				   if(validpay(pay))
		                
						 { 
					       
						 return true;}
						else
							return false;
					else
						return false;
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
	
function validFname(elemValue)
{
	var exp = /^[a-zA-Z]+$/;
		if(!isEmpty(elemValue,"First Name"))
		{
			if(elemValue.match(exp))
			{
				return true;
			}
			else
			{
				alert("Error: Please Enter Alphabetical Character for your First name");
				return false;
			}
		}
		else
			return false;
}

function validlname(elemValue)
{
	var exp = /^[a-zA-Z]+$/;
		if(!isEmpty(elemValue,"First Name"))
		{
			if(elemValue.match(exp))
			{
				return true;
			}
			else
			{
				alert("Error: Please Enter Alphabetical Character for your First name");
				return false;
			}
		}
		else
			return false;
}







function validage(elemValue)
{
	if(!isEmpty(elemValue,"Contact Number"))
	{
		var exp = /^[0-9]+$/;
		if(!elemValue.match(exp))
		{
			alert("Error: must be number");
			return false;	
	    }
        else
			return true;
      }
	else
		return false;

}

function validsalary(elemValue)
{
	if(!isEmpty(elemValue,"Contact Number"))
	{
		var exp = /^[0-9]+$/;
		if(!elemValue.match(exp))
		{
			alert("Error: must be number");
			return false;	
	    }
        else
			return true;
      }
	else
		return false;

}

function validpay(elemValue)
{
	if(!isEmpty(elemValue,"Contact Number"))
	{
		var exp = /^[0-9]+$/;
		if(!elemValue.match(exp))
		{
			alert("Error: must be number");
			return false;	
	    }
        else{
        	alert("Doctor data insert sucessful");
        	return true;
			}
      }
	else
		return false;

}



   </script>

 


