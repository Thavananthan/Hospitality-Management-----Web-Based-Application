<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title>patients</title>
<style type="text/css">
        th,td{
            padding-right:40px;
            padding-left:40px;
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
        
          <div align="left">
       <form action="">
      <input type="text" placeholder="Patient" name="search" id="textbox">
      <button type="submit" id="buttoncolor">Search</button>
    </form>
    </div>
         <center id="fcolor1"><b style="font-size:x-large;">PATIENTS DETAILS DELETE.</b> </center><br/>
        <form method="post" action="">
        <center>
        <table border=3px;>

							<tr>
                        	 	<th style='color:white; background-color:red;'>firstName</th>
                                <th style='color:white; background-color:red;'> Age  </th>
					            <th style='color:white; background-color:red;'> email </th>
					            <th style='color:white; background-color:red;'>Phone Number</th>
                                <th style='color:white; background-color:red;'>password</th>
                                <th style='color:white; background-color:red;'>Address</th>
                                <th style='color:white; background-color:red;'>Delete</th>
					   	 <% 
 						try{
                         Class.forName("com.mysql.jdbc.Driver");
                         String name=request.getParameter("search");
                         if(name==null||name==""){
                    		 
                    		 out.print("<center> <h1 style='color:white;'>EMPTY PATIENTS DETALIS</h1>");
                    	 }
                    	 else{
                 		
                         ResultSet rs=st.executeQuery("select * from register where fname LIKE '%"+name+"%'");
                         while(rs.next())
                             { 
                        	 
                        	 
                        	 %> 
                        	 
                        	 </tr>
                        	 
                     
                        	    
                             <tr>	
                             	  							
                                 <td style='color:white;'><%= rs.getString(1)%> </td>
                                 <td style='color:white;'><%= rs.getString(2)%></td>
                                 <td style='color:white;'><%= rs.getString("email")%></td>
                                 <td style='color:white;'><%= rs.getString(4)%></td>
                                 <td style='color:white;'><%= rs.getString(5)%></td>
                                 <td style='color:white;'><%= rs.getString(6)%></td>
                                 <td><a href="../AdminPatients?id=<%=rs.getString("email")%>"><button class="delete" type="button">Delete</button></a></td>
                                   
                                   
				           </tr>	
				         
				          
				           
                             
                     
                                 
                        
                                    	
                      	
                              
              		 <%     
                        	 }
                             }         
                    }catch(Exception e1){}
      			 %>
                        	 
          </table>
          </center>
          </form>
         
          <input  type="button" name="back" value="<<back"  id="buttoncolor" onclick="window.location.href='admin.jsp'">


</body>
</html>