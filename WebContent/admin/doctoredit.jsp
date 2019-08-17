<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css"/>
<title>doctor edit</title>
<style type="text/css">
        th,td{
            padding-right: 80px;
            padding-left: 80px;
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
         
         ResultSet rs=st.executeQuery("select * from doctor where doctor_id='"+id+"'");
         while(rs.next())
         {
         
        
        %>
           
  </div><br><br><br>
			<div class="HDname">      
            <center>  <h1 >AS HOSPITAL</h1></center>
        </div><br/>
        
        <div align="center">
    <form method="post" action="../DoctorUpdateHandler">
        <table>
            <caption><b style="font-size:x-large;color:white;">DOCTOR DETAILS EDIT</b></caption>
            <tr></tr>
            
          
            <tr>
                <td style='color:white;font-size:x-large;'>Doctor Id</td>
                <td><input type="hidden" name="id" value="<%= rs.getString(1)%>" id="textbox" /></td>
            </tr>
                
            <tr>
                <td style='color:white;font-size:x-large;'>firstname:</td>
                <td><input type="text" name="fname"  value="<%= rs.getString(2)%>" id="textbox" /></td>
            </tr>
			
			<tr>
                <td style='color:white;font-size:x-large;'>Lastname: </td>
                <td><input type="text" name="lname" value="<%= rs.getString(3)%>" id="textbox"/></td>
            </tr>
			
			<tr>
                <td style='color:white;font-size:x-large;'>Age: </td>
                <td><input type="text" name="age" value="<%= rs.getString(4)%>" id="textbox"/></td>
            </tr>

          
            <tr>
                <td style='color:white;font-size:x-large;'>Salary :</td>
                <td><input name="salary"  value="<%= rs.getString(5)%>" id="textbox" /></td>
            </tr>
            
             <tr>
                <td style='color:white;font-size:x-large;'>payment :</td>
                <td><input name="pay" value="<%= rs.getString(6)%>" id="textbox" /></td>
            </tr>

<%} %>

            <tr>
                <td>
                   
                    <input class="btn" type="submit" name="btnUpdate" id="buttoncolor" value="Update"/>
                    
                </td>

                <td>
                 
                    <input class="btn" type="reset" name="btnReset"  id="buttoncolor" value="Reset"/>
					<input  type="button" name="back" value="<<back"  id="buttoncolor" onclick="window.location.href='admin.jsp'">
                </td>
            </tr>
        </table>

    </form>
</div>

        
        
</body>
</html>


