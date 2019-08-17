<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css" />
<title>appointment Page</title>
</head>
<body>
	<div class="log">
		<div align="right">
			<img src="photos/jt.png" height="10%" width="10%"
				style="border-radius: 25px;">

			<%
 
         Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "");
		 Statement st=conn.createStatement();
         String name=(String) session.getAttribute("username");
         if(name==null){
         	response.sendRedirect("../home.jsp"); 
         }
        
        
         out.print("<p style='color:white'>Welcome :<b><span style='color:white'>"+name+"</span></b><br>");
         
         
        %>
			<form action="../LogoutHandler" method="get">
				<input type="submit" value="signout">
			</form>
			<a href="profile.jsp" style='color: white'><b>profile</b></a>"
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<div class="HDname">
		<center>
			<h1>AS HOSPITAL</h1>
		</center>
	</div>
	<div>
		<div class="ctable"></div>



		<div class="appoint">
			<form method="post" onsubmit=" return Validate();"
				action="../AppointmentHandler" name="ap">


				<table name="appoin">

					<tr>
						<td>
							<%out.print("<p>Welcome :<b><span'>"+name+"</span></b>"); %>
						</td>
					</tr>

					<tr>
						<td><select id="department" name="department" class="textbox">
								<option value="0">Select Department</option>
								<option value="Dentist">Dentist</option>
								<option value="Cardiology">Cardiology</option>
								<option value="Pathologist">Pathologist</option>
								<option value="Radiology">Radiology</option>
								<option value="Neurologist">Neurologist</option>
						</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
						<br /></td>

						<%    
                   
    	 				      Class.forName("com.mysql.jdbc.Driver");
						 
						       ResultSet rs =st.executeQuery("select distinct fname,lname from doctor") ;   %>

						<td><select id="doctorS" name="doctors" class="textbox">
								<option value="0">Doctor Name</option>
								<%  while(rs.next()){ %>
								<option value="<%= rs.getString(1)%>"><%= rs.getString(1)%></option>


								<% } %>

						</select><br />
						<br /></td>

					</tr>


					<tr>
						<td><select id="fees" name="fees" class="textbox">
								<option value="0">Consultancy Fees</option>
								<option value="1000">1000</option>
						</select><br />
						<br /></td>

						<td><input type="text" name="date" value=""
							placeholder="dd/mm/yyyy" class="textbox" /> <br />
						<br /></td>


					</tr>
					<tr>
						<td><input type="text" name="time" value=""
							placeholder="hh:mm:am_pm" class="textbox" /> <br />
						<br /></td>
						<td><br />
						<br /></td>
					</tr>


					<tr style="float: right">
						<td></td>
						<td><input type="submit" value="BOOKING"
							name="conform appointment" onclick="myFunction()"
							id="buttoncolor"></td>
						<td><input type="submit" value="CANCEL" id="buttoncolor"
							onclick="window.location.href='phome.jsp'"></td>

					</tr>

					<script type="text/javascript">
                          
                          function myFunction() {
                        	    var txt;
                        	    var r = alert("Your booking save!");
                        	   
                        	    
                        	}
                          </script>
					<tr>



					</tr>



				</table>
			</form>



			View old appointments <a href="appointH.jsp">view</a>


		</div>


	</div>

</body>
</html>

<script type="text/javascript">
    function Validate()
    {
        var e = document.getElementById("department");
        var d= document.getElementById("doctorS");
        var t= document.getElementById("fees");

 
 

            var strUser = e.options[e.selectedIndex].value;
            var strUser3 = d.options[d.selectedIndex].value;
            var strUser5 = t.options[t.selectedIndex].value;

            var strUser1 = e.options[e.selectedIndex].text;
            var strUser2 = d.options[d.selectedIndex].text;
            var strUser4 = t.options[t.selectedIndex].text;

                if(strUser==0)
                    {
                        alert("Please select a user");
                    }
                else if(strUser3==0)
                    {
                        alert("Please select a user");   
                    }
                else if(strUser5==0)
                    {
                        alert("Please select a user");   
                    }

                var DateD=document.forms["appointment"]["date"].value;
                var TimeD=document.forms["appointment"]["time"].value;

                   if(datevalid(DateD))
                          if(timevali(TimeD))
                                     return true;
                             else
                                 return false;
                   else
                      return false;    


}



function isEmpty(elemValue,field)
	{
		if(elemValue=="" || elemValue==null)
		{
			alert("Error: You Cannot Have "+ field +" Filed Empty");
			return true;
		}
		else
		{
			
			return false;
		
		}	
	}
	
function datevalid(elemValue)
{
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!

    var yyyy = today.getFullYear();
     if(dd<10){
         dd='0'+dd;
          } 
        if(mm<10){
          mm='0'+mm;
           } 
      var today = dd+'/'+mm+'/'+yyyy;
	   if(!isEmpty(elemValue,"DATE"))
		  {
			if(elemValue>=today)
			{
				return true;
			}
	        else
			{
				alert("Error: Please enter valid date" );
				return false;
			}
		  }
	
}

        function timevali(elemValue) 
    {
        var date = new Date();
        var hours = date.getHours() > 12 ? date.getHours() - 12 : date.getHours();
        var am_pm = date.getHours() >= 12 ? "PM" : "AM";
        hours = hours < 10 ? "0" + hours : hours;
        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
       
       var time = hours + ":" + minutes + ":" +am_pm;
  
 
    if(!isEmpty(elemValue,"Time"))
		  {
			if(elemValue>time)
			{
				return true;
			}
	        else
			{
				alert("Error: Please enter valid time" );
				return false;
			}
		  }
	
    }
    
    

        
  </script>
