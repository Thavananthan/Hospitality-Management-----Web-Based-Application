<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title>Appointment Views</title>
 <style type="text/css">
        th,td{
            padding-right: 20px;
            padding-left: 20px;
            height: 60px;
        }
    </style>
</head>
<body>
<div class="log">
    <div align="right">
     <img src="photos/d2.png" height="10%" width="10%" style=" border-radius:25px;" >
       
       
       
        
          <%
         Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "");
		 Statement st=conn.createStatement();
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
        <center id="fcolor1"><b style="font-size:x-large;">APPOINTMENT DETAILS.</b> </center><br/>
<center>
			
<table border=3px;>

					<tr>
                        	 	<th style='color:white; background-color:red;'>Appointment Number</th>
                                <th style='color:white; background-color:red;'>Departments </th>
					            <th style='color:white; background-color:red;'>Doctors </th>
					            <th style='color:white; background-color:red;'>Fees</th>
                                <th style='color:white; background-color:red;'>Date</th>
                                <th style='color:white; background-color:red;'>Time</th>
                                <th style='color:white; background-color:red;'>Email</th>
                                 <th style='color:white; background-color:red;'>Delete</th>
					
                        	 
                        	 </tr>
<% 
 try{
                         Class.forName("com.mysql.jdbc.Driver");
                 		 
                         ResultSet rs=st.executeQuery("select * from appointment where doctor='"+username+"'");
                         while(rs.next())
                        	 
                             {  
                        	 %> 
                        	 
                             <tr>	
                             	  							
                                  <td style='color:white; '><%= rs.getString("appointment_number")%> </td>
                                  <td style='color:white; '><%= rs.getString(2)%></td>
                                   <td style='color:white; '><%= rs.getString(3)%></td>
                                    <td style='color:white; '><%= rs.getString(4)%></td>
                                     <td style='color:white; '><%= rs.getString(5)%></td>
                                     <td style='color:white; '><%= rs.getString(6)%></td>
                                     <td style='color:white; '><%= rs.getString(7)%></td>
                                    
                                     <td><a href="../AdminAppointDeleteHandler?id=<%=rs.getString("appointment_number")%>"><button class="delete" type="button">Cancle</button></a></td>
                                   
				           </tr>	  
                             
                     
                                 
                        
                                    	
                      	
                              
               <%      
               
                             }         
                    }catch(Exception e1){}
       %>
                  

</table> <br/><br/>
					
                   
</center>
           <input type="button" value="<<BACK" onclick="window.location.href='Dhome.jsp'" id="buttoncolor" style="float:left">  
           <br/><br/> 

</body>
</html>