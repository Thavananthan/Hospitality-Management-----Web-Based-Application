package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;

import Entities.Doctor;
import connection.ConnectionProvider;

/**
 * Servlet implementation class DoctorPwdResetService
 */
@WebServlet("/DoctorPwdResetService")
public class DoctorPwdResetService {
public boolean UpdateDoctorPass(Doctor doc) {
		

		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("UPDATE doctor SET password ='"+doc.getpassword()+"' where doctor_id='"+doc.getId()+"'  ");

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
