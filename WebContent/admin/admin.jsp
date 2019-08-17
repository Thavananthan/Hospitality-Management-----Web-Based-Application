<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="hms.css"/>
        <title> admin Page</title>
    </head>
    <body>
    <div class="log">
     <div align="right">
     <img src="photos/ad.png" height="10%" width="10%" style=" border-radius:25px;" >
       
        
          <%
        
          String username=(String) session.getAttribute("username");
        
         if(username==null||username==""){
        	 
         	response.sendRedirect("../home.jsp");
         }
         out.print("<p style='color:white'>Welcome :  <b><span style='color:white'>"+username+"</span></b><br>");
        
        %>
      <form action="../LogoutHandler" method="get">
		<input type="submit" value="signout">
	</form>
  
 </div>
</div><br><br><br><br><br><br><br>
        <div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1></center>
        </div>
        <br><br>
            <div class="column1 box1" style=" background-image:url(photos/wd.jpg);">
             <img src="photos/DD7.png" height="40%" width="30%" style=" border-radius:25px;" >
                 <table>
                        <tr> <td> <b id="fcolor2"> Doctor Details: </b> <br><br><br></td>
                   
                 
					       
			      <td> <input type="submit" name="edit" value="VIEWS" onclick="window.location.href='Doctorview.jsp'" id="buttoncolor"><br><br><br> </td>
			      
			</tr>	
                     
                     					  
			 <tr> 
			 <img src="photos/pp.png" height="40%" width="30%" style=" border-radius:25px;" >  
			 			 
		             <td> <b id="fcolor2"> Patients Details: </b><br><br><br> </td>
			     <td> <input type="submit" name="view" value="VIEW" onclick="window.location.href='patients.jsp'" id="buttoncolor"> <br><br><br></td>
						
			</tr>	   
					   
			 <tr> 
			      <img src="photos/bill.png" height="40%" width="30%" style=" border-radius:25px;" >  
			 			
			   <td> <b id="fcolor2"> Bill Details: </b><br><br><br> </td>
			   					
			       <td> <input type="submit" name="view" value="VIEW" onclick="window.location.href='Bill.jsp'" id="buttoncolor"> <br><br><br> </td>
			 					
			 </tr>	
					  
			</table>
            </div>
            
        <div class="column1 box1" style=" background-image:url(photos/wd.jpg);">
        
        
        
          <img src="photos/ad.png" height="100%" width="100%" style=" border-radius:25px;" >
        
        
        
        </div>
        
        
        
        <div class="column1 box1"  style=" background-image:url(photos/wd.jpg);">
          <table>
          <img src="photos/app.png" height="40%" width="30%"  > 
          <img src="photos/nurse.png" height="40%" width="30%"  >
          <img src="photos/sss.png" height="40%" width="30%"  > 
                        <tr> <td> <b id="fcolor2"> Appointment: </b> <br><br><br></td>
                        
					       
			      <td> <input type="submit" name="edit" value="VIEW" onclick="window.location.href='adminappointview.jsp'" id="buttoncolor"><br><br><br> </td>
					 
			</tr>	
                       					  
			 <tr> 
		             <td> <b id="fcolor2">Reset Password:</b> <br><br><br> </td>
			     <td> <input type="submit" name="RESET" value="reset" onclick="window.location.href='adrestpass.jsp'" id="buttoncolor"> <br><br><br></td>
			</tr>	
			<tr> 
		             <td> <b id="fcolor2">Add Admin:</b> <br><br><br> </td>
			     <td> <input type="submit" name="RESET" value="ADD" onclick="window.location.href='addadmin.jsp'" id="buttoncolor"> <br><br><br></td>
			</tr>	
			
			<tr> 
		             <td> <b id="fcolor2">View Feedback:</b> <br><br><br> </td>
			     <td> <input type="submit" name="VIEW" value="VIEW" onclick="window.location.href='AdminFeedback.jsp'" id="buttoncolor"> <br><br><br></td>
			</tr>	
			</table>      
        </div>
                
            
        
    </body>
</html>
