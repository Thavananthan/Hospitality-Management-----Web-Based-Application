<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title>appointment history</title>
<style type="text/css">
        th,td{
            padding-right: 50px;
            padding-left: 50px;
            height: 40px;
        }
    </style>
</head>
<body>
     
      <div class="log">
      <div align="right">
      <img src="photos/jt.png" height="10%" width="10%" style=" border-radius:25px;" >
   
        <%
 
         Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "");
		 Statement st=conn.createStatement();
         String username=(String) session.getAttribute("username");
         
         if(username==null){
         	response.sendRedirect("../home.jsp"); 
         }
         out.print("<p style='color:white'>Welcome :<b><span style='color:white'>"+username+"</span></b><br>");
         
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
      
      <center>
	<form method="post" >		
<table border=3px;>

					<tr>
                        	 	<th style='color:white; background-color:red;'>Appointment number</th>
                                <th style='color:white; background-color:red;'>Department </th>
                                <th style='color:white; background-color:red;'>Doctor</th>
					            <th style='color:white; background-color:red;'>Date </th>
					            <th style='color:white; background-color:red;'>Time</th>
					            <th style='color:white; background-color:red;'>fees</th>
					            <th style='color:white; background-color:red;'>Action</th>
					             <th style='color:white; background-color:red;'>Update</th>
                                
					
                        	 
                        	 </tr>
<% 
 try{
                         Class.forName("com.mysql.jdbc.Driver");
                 		
                         ResultSet rs=st.executeQuery("select * from appointment where email='"+username+"'");
                         while(rs.next())
                             {  
                        	 String id =rs.getString(1);
                       	 	 session.setAttribute("id",id);
                       	 	 String dcname= rs.getString(3);
                       	 	 session.setAttribute("dcname",dcname);
                       	 	 int f=rs.getInt(4);
                       	     session.setAttribute("f",f);
                        	 
                        	 %> 
                        	 
                             <tr>	
                             	  							
                                  <td style='color:white; ' ><%out.print(id);%> </td>
                                  <td style='color:white'><%= rs.getString(2)%></td>
                                   <td style='color:white'><%out.print(dcname);%></td>
                                   
                                    <td style='color:white'><%= rs.getString(5)%></td>
                                   <td style='color:white'><%= rs.getString(6)%></td>
                                   <td style='color:white'><%out.print(f);%></td>
                                     <td><a href="../AdminAppointDeleteHandler?id=<%=rs.getString("appointment_number") %>"><button type="button" class="delete">Delete</button></a></td>
                                     <td><a href="appointEdit.jsp?id=<%=rs.getString("appointment_number") %>"><button type="button" >Edit</button></a></td>
                                   
				           </tr>	  
                             
                     
                                 
                  
                                    	
                      	
                              
               <%    
                
               
                             }
                       
                         
                    	 
              
                            
                          
                         	
                    }catch(Exception e1){}
       %>
                  

</table> <br/><br/>
		<input type="button" value="<<BACK" onclick="window.location.href='appointment.jsp'" id="buttoncolor" style="float:left">  
           <br/><br/> 
</form>
</center>
      

</body>
</html>