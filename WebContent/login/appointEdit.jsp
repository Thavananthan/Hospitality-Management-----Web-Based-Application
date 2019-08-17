<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String id=request.getParameter("id");
	String url="jdbc:mysql://localhost:3306/hms";  
	String username="root";  
	String password=""; 

	try {		
			Class.forName("com.mysql.jdbc.Driver");
		} 

	catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="hms.css" />
<title>appointmentEdit</title>
</head>
<body>
	<div class="appoint">
		<form name="AdminrUpdate" method="post"
			action="../UserEditAppointmentHandler" onsubmit=" return Validate();">
			<%

			
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();
	 		       	String query  ="SELECT * FROM appointment WHERE appointment_number='"+id+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			    resultSet.next();
      			    
      			    String de= resultSet.getString(5);
      			   String dr= resultSet.getString(6);
      			  
      			
    	  
    	  
%>


			<table align="center">
				<input type="hidden" name="id" value="<%out.print(id); %>"
					placeholder="hh:mm:am_pm" class="textbox" />

				<tr>
					<td><select id="department" name="department"
						value="<%out.print(de); %>" class="textbox">
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
						 
						       ResultSet rs =myStm.executeQuery("select distinct fname from doctor") ;   %>

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

					<td><input type="text" name="date" value="<%out.print(de); %>"
						placeholder="dd/mm/yyyy" class="textbox" /> <br />
					<br /></td>


				</tr>
				<tr>
					<td><input type="text" name="time" value="<%out.print(dr); %>"
						placeholder="hh:mm:am_pm" class="textbox" /> <br />
					<br /></td>
					<td><br />
					<br /></td>
				</tr>


				<tr style="float: right">
					<td></td>
					<td><input type="submit" value="BOOKING"
						name="conform appointment" onclick="myFunction()" id="buttoncolor">
					</td>
					<td><input type="submit" value="CANCEL" id="buttoncolor"
						onclick="window.location.href='phome.jsp'"></td>
				</tr>

				<tr>

					<td></td>

				</tr>
				<script type="text/javascript">
                          
                          function myFunction() {
                        	    var txt;
                        	    var r = alert("changed your appoiment!");
                        	   
                        	    
                        	}
                          </script>
























			</table>
		</form>
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
