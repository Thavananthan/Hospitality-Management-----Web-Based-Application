package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;


import Entities.Appointment;
import connection.ConnectionProvider;

public class AppointmentService {
		public boolean insertAppointment(Appointment res) {
		
		
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO appointment(department,doctor,fees,date,time ,email) VALUES('"+res.getdepartment()+"','"+res.getdoctor()+"','"+res.getfees()+"','"+res.getdate()+"','"+res.gettime()+"','"+res.getemail()+"')");


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
