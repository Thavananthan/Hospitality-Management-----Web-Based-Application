<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
        <title>Admin login Page</title>
    </head>
    <body>
        <div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1></center>
        </div>
        <div align="center">
        <img src="photos/ad.png" height="10%" width="10%" style=" border-radius:25px;" >
     </div>
        
        <center>
	  <div class="login">
              <center id="fcolor4">
              <b style="font-size:x-large; color:black"> ADMIN LOGIN </b> <br><br><br><br></center>
               <form name="AD_login" method="post" action="../AdminLoginHandler" >
                 <table border="0">
                     <thead>
                         <tr>
                             <th>USERNAME: <input type="text" name="uName" value="" id="textbox"/><br/><br/> </th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <th>PASSWORD: <input type="password" name="uPassword" value="" id="textbox" /><br/><br/> </th>
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
                         <tr>
                             <td align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="LOGIN" id="buttoncolor"/> <br/><br/></td>
                             
                         </tr>
                         <tr>
                             <td> FORGET PASSWORD <a href="">RESET</a></td>
                          </tr>    
                             
                         
                         
                     </tbody>
                 </table>
               </form>
              
      						
 </div> 
 </center> 
 <div class="foot">
        <b> © 2018 by AS Hospital. All Rights Reserved </b> <br/>  
    </div>	<br/><br/>        
    </body>
</html>
