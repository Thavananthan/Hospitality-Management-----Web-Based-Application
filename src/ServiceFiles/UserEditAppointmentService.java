package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;

import Entities.Appointment;

import connection.ConnectionProvider;
/**
 * Servlet implementation class UserEditAppointmentService
 */
@WebServlet("/UserEditAppointmentService")
public class UserEditAppointmentService  {
public boolean UpdateAppointment(Appointment ap) {
		
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("UPDATE appointment SET department ='"+ap.getdepartment()+"', 	doctor='"+ap.getdoctor()+"',fees ='"+ap.getfees()+"', 	date='"+ap.getdate()+"',time ='"+ap.gettime()+"' where appointment_number='"+ap.getid()+"'");

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
