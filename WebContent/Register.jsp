<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title>Register page</title>
</head>
<body>
 <div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1></center>
        </div>
    <center>
        <div class="Register">
	    <center id="fcolor4">
                <b style="font-size:x-large;"> User Register </b><br/>
		       <b style="font-size:x-large;"> Become a member </b> <br/><br/>
                  
                <form name="reg" action="RegisterHandler" method="POST" onsubmit="return formValidateReg();"  autocomplete="off" >

                           

                <table>
                              				
                 <tr>									
                      <td> <input type="text" name="fname" placeholder=" fullname" id="textbox"><br/><br/> </td>
				</tr>	
								
				<tr>
                       <td><input type="text" name="age" placeholder="Age" id="textbox"> <br/><br/> </td>
				</tr>	
								
				<tr> 
                       <td> <input type="email" name="email" placeholder="name@email.com" id="textbox"> <br/><br/> </td>
				</tr>	  
								
				<tr>
                      <td> <input type="text" name="pho_num" placeholder="0771234569" id="textbox" autocomplete="off"><br/><br/> </td>
				</tr>	

                <tr>
                      <td> <input type="password" name="password" placeholder=" password" id="textbox"> <br/><br/> </td>
                </tr>

                 <tr>
                      <td> <textarea type="text" name="address" placeholder="address" id="textbox"></textarea> <br/><br/> </td>
                </tr>	
                       <tr><th>    
                          <p style=' color:red; font-size:x-large;'>      
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
                       </th></tr>
                            
								
                </table>

                            <div class="submit">
                                <input type="submit" value="Submit" id="buttoncolor" >
                                <input type="reset" value="RESET" id="buttoncolor" >
                            </div>
                            
                     </form>
               </div>
         
     <div class="foot">
        <b> © 2018 by AS Hospital. All Rights Reserved </b> <br/>  
    </div>	<br/><br/> 
                            


</body>
</html>
<script type="text/javascript">
     function formValidateReg()
        {
	var firstname = document.forms["reg"]["fname"].value;
	var pw = document.forms["reg"]["password"].value;
	var age = document.forms["reg"]["age"].value;
	var contactNum = document.forms["reg"]["pho_num"].value;
	var email = document.forms["reg"]["email"].value;
	
	
	
	if(validFname(firstname))
		if(validage(age))
		   if(emailValidation(email)) 
	            if(validContactNum(contactNum))
				   if(checkPassword(pw))
		                
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






function validContactNum(elemValue)
	{
		if(!isEmpty(elemValue,"Contact Number"))
		{
			var exp = /^[0-9]+$/;
			if(!elemValue.match(exp))
			{
				alert("Error: Contact number must numbers!");
				return false;
			}
			if(elemValue.length < 10 ) 
			{
				alert("Error: Contact Number must 10 numbers");      
				return false;
			}
			if(elemValue.length > 10 ) 
			{
				alert("Error: Contact Number must 10 numbers");      
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


function emailValidation(elemValue)
	{
		if(!isEmpty(elemValue,"Email"))
		{
			var atops = elemValue.indexOf("@");
			var dotops = elemValue.indexOf(".");
			
			if(atops < 1||dotops + 2 >= elemValue.length || atops +2 > dotops)
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
   


   </script>

















