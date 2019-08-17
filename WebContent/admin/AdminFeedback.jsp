<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title> view feedback</title>
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
    
       
        
          <%
         Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "");
		 Statement st=conn.createStatement();
         String username=(String) session.getAttribute("username");
         if(username==null) username="";
         out.print("<p style='color:white'>Welcome :  <b><span style='color:white'>"+username+"</span></b><br>");
         String id=request.getParameter("id");
         

        
        %>
           
  </div><br><br><br>
			<div class="HDname">      
            <center>  <h1 >AS HOSPITAL</h1></center>
        </div><br/>
        
        <div align="center">
    <form method="post" action=" ">
        <table border=1>
         <tr>
                        	 	<th style='color:white; background-color:red;'>name </th>
                                <th style='color:white; background-color:red;'> email </th>
					            <th style='color:white; background-color:red;'>phone</th>
					            <th style='color:white; background-color:red;'>messages</th>
                                
                                  <th style='color:white; background-color:red;'>Delete</th>
					
                        	 
                        	 </tr>
        <% 
 try{
                         Class.forName("com.mysql.jdbc.Driver");
                 		
                         ResultSet rs=st.executeQuery("select * from feedback");
                         while(rs.next())
                        	
                             {  
                        	 
                        	
                        	 %> 
                        	 
                             <tr>	
                             	  							
                                  <td style='color:white;'><%= rs.getString(1)%> </td>
                                  <td style='color:white;'><%= rs.getString(2)%></td>
                                   <td style='color:white;'><%= rs.getString(3)%></td>
                                    <td style='color:white;'><%= rs.getString(4)%></td>
                  <td> <a href="../AdminfeedbackHandler?id=<%=rs.getString("email")%>"><button class="delete" type="button">Delete</button></a></td>                       
                        
                                   
				           </tr>	  
                             
                     
                                 
                        
                                    	
                      	
                              
               <%               
                             }         
                    }catch(Exception e1){}
       %>
        </table>

    </form>
</div>

        
        
</body>
</html>



