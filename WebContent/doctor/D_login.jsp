<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
        <title>login Page</title>
    </head>
    <body>
         <div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1>
        </div>
        
         <div class="menu">
            <div class="topnav">
                <a class="active" href="../home.jsp"> <b style="color:brown"> HOME &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
            <a href="../service.jsp"> <b style="color:brown"> SERVICE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
            <a href="../contact_us.jsp"> <b style="color:brown"> CONTACT US &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
            <a href="../aboutUs.jsp"> <b style="color:brown"> ABOUT US &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
            
            
            </div>  
             </div>  
             <div align="center">
     				<img src="photos/app.png" height="10%" width="10%" style=" border-radius:25px;" >
       </div>
         <center>
	  <div class="login">
              <center id="fcolor4">
              <b style="font-size:x-large; color:black"> Please enter your login details to process </b> <br><br><br><br>
             <form name="login" action="../DoctorLoginHandler" method="post"  >
                 <table border="0">
                     <thead>
                         <tr>
                             <th style="color:black">DOCTOR ID: <input type="text" name="uName" value="" id="textbox" /><br/><br/> </th>
                         </tr>
                     </thead>
                      <thead>
                         <tr>
                             <th style="color:black">FIRST NAME: <input type="text" name="Name" value="" id="textbox" /><br/><br/> </th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <th style="color:black">PASSWORD: <input type="password" name="uPassword" value="" id="textbox" /><br/><br/> </th>
                         </tr> <tr><th>    
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
                         
                       
                       </th></tr>
                         <tr>
                             <td align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="LOGIN" id="buttoncolor" /> <br/><br/></td>
                             
                         </tr>
                         <tr>
                             <td style="color:black"> FORGET PASSWORD <a href="">RESET</a></td>
                          </tr>    
                             
                         
                         
                     
                 </table>
                 
                 
 </form>

 </div>
 <div class="foot">
        <b> © 2018 by AS Hospital. All Rights Reserved </b> <br/>  
    </div>	<br/><br/> 
 

                 
 </body>
 </html>                
                 