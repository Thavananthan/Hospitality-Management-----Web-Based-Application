<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
        <title>about Us Page</title>
    </head>
    <body>
    <div class="log">
     <div align="right">
     <img src="photos/jt.png" height="10%" width="10%" style=" border-radius:25px;" >
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
   <a href="profile.jsp" style='color:white'><b>profile</b></a>
 </div>
</div><br><br><br><br><br><br><br>
         <div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1></center>
        </div>
        
      <div class="menu">
            <div class="topnav">
                <a class="active" href="phome.jsp"> <b style="color:brown"> HOME &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
            <a href="service.jsp"> <b style="color:brown"> SERVICE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
            <a href="contact_us.jsp"> <b style="color:brown"> CONTACT US &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
            <a href="aboutUs.jsp"> <b style="color:brown"> ABOUT US &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
             <div class="dropdown">
                <button class="dropbtn">APPOINTMENT & BILL</button>
                 <div class="dropdown-content">
                        <a href="appointment.jsp">APPOINTMENT</a>
                        <a href="bill.jsp"> BILL</a>
                        
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </div>
             
             
                    
                </div>
            </div>       
            
        
            
        <div class="ctable">
            <img src="photos/about.jpg" height="10%" width="100%"style=" border-radius:25px;"><br/><br/>
        
        </div>
        
        <div class="column box">
            <center> <b id="fcolor3" style="font-size:x-large;"> Caretorium the Ultimate dream</b></center><br>
            <p>
             Caretorium has been always an special
             product by Crestlogix to provide much
             benificial to our clients and a time 
             saving weapon. It is the revolutional 
             change in medical and health care industries.<br>
             We always try to be customize and produce
             you what you want on your requirment. 
             We are serving in medical industries over
             the years and we have succeed much more .
             We keep our clients in mind to develop more
             efficient and functionable products that's 
             grow our bussiness day by day.   
            </p>
        </div>
        <div class="about1">
             <img src="photos/doctor3.jpeg" height="10%" width="100%"style=" border-radius:25px;"><br/><br/>
              
            
        </div>
        
        <div class="column box">
            <center> <b id="fcolor3" style="font-size:x-large;">Better when you will use </b></center>
            <p>
               Caretorium is Modular but seamless, it facilitates 
               services to patients, assistance to doctors and 
               comprehensive control to administrators.We have kept
               the interface extremely User Friendly and intuitive. 
               This helps in a low learning curve a quick implementation.
            </p>
             <center> <b id="fcolor3">Say Yes to our products  </b></center>
             <p>We are offering you to practicize our products which will make
                 your work so easy and we are always available to serve you at 
                 any instance and any time. </p>
            
        </div>
        <div class="map">
            <center>  <b style="font-size:x-large;">OUR LOCATION  </b></center>
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15728.955021492106!2d80.08701469999998!3d9.74583255!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2slk!4v1507564231130" width="100%" height="100%" frameborder="0" style="border-radius:25px;" ></iframe>  
        </div>
        
        
        
        
        
        
        
        
        
              
    <div class="foot">
        <b> © 2018 by AS Hospital. All Rights Reserved </b> <br/>  
    </div>	<br/><br/>
     
        
    </body>
</html>
