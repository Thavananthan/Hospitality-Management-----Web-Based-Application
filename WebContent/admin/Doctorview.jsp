<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title>doctor details</title>
    <style type="text/css">
        th,td{
            padding-right: 40px;
            padding-left: 40px;
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
         out.print("<p style='color:white'>Welcome :  <b><span style='color:white'>"+username+"</span></b>");
        
        %>
   <form action="../LogoutHandler" method="get">
		<input type="submit" value="signout">
	</form>
  
 </div>
</div><br><br><br><br><br><br><br>
		<div class="HDname">      
            <center>  <h1>AS HOSPITAL</h1></center>
        </div>
        <center id="fcolor1"><b style="font-size:x-large;">DOCTORS DETAILS.</b> </center><br/>
<center>
			
<table border=3px;>

					<tr>
                        	 	<th style='color:white; background-color:red;'> Doctor Id</th>
                                <th style='color:white; background-color:red;'>  firstName </th>
					            <th style='color:white; background-color:red;'>  LastName </th>
					            <th style='color:white; background-color:red;'>Age</th>
                                <th style='color:white; background-color:red;'>Salary</th>
                                <th style='color:white; background-color:red;'>Fees</th>
                                 <th style='color:white; background-color:red;'>Update</th>
                                  <th style='color:white; background-color:red;'>Delete</th>
					
                        	 
                        	 </tr>
<% 
 try{
                         Class.forName("com.mysql.jdbc.Driver");
                 		
                         ResultSet rs=st.executeQuery("select * from doctor");
                         while(rs.next())
                        	
                             {  
                        	 
                        	 String salary=rs.getString(6);
                        	 session.setAttribute("salary",salary);
                        	 %> 
                        	 
                             <tr>	
                             	  							
                                  <td style='color:white;'><%= rs.getString(1)%> </td>
                                  <td style='color:white;'><%= rs.getString(2)%></td>
                                   <td style='color:white;'><%= rs.getString(3)%></td>
                                    <td style='color:white;'><%= rs.getString(4)%></td>
                                     <td style='color:white;'><%= rs.getString(5)%></td>
                                      <td style='color:white;'><%out.print(salary); %></td>
                        <td><a href="doctoredit.jsp?id=<%=rs.getString("doctor_id")%>"><button class="update" type="button">Update</button></a></td>               
                        <td><a href="../AdmindeleteDoctorHandler?id=<%=rs.getString("doctor_id")%>"><button class="delete" type="button">Delete</button></a></td>
                                   
				           </tr>	  
                             
                     
                                 
                        
                                    	
                      	
                              
               <%               
                             }         
                    }catch(Exception e1){}
       %>
                  

</table> <br/><br/>
					<input class="btn" type="submit" name="btnInsert" id="buttoncolor" value="Insert" onclick="window.location.href='doctorinsert.jsp'"/>
                  
</center>
           <input type="button" value="<<BACK" onclick="window.location.href='admin.jsp'" id="buttoncolor" style="float:left">  
           <br/><br/> 
</body>
</html>