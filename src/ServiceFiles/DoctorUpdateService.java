package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;

import Entities.Doctor;

import connection.ConnectionProvider;

/**
 * Servlet implementation class DoctorUpdateService
 */
@WebServlet("/DoctorUpdateService")
public class DoctorUpdateService  {
public boolean UpdateDoctor(Doctor doc) {
		
		

		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("UPDATE doctor SET fname ='"+doc.getfname()+"',lname='"+doc.getlname()+"',age='"+doc.getage()+"' where doctor_id='"+doc.getId()+"'  ");

			if(i>0) {
				return true;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		} 

		return false;
		
		
		
		
	}
		}

	


