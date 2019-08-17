package ServiceFiles;

import java.sql.Statement;

import java.sql.Connection;

import Entities.Doctor;

import connection.ConnectionProvider;
/**
 * Servlet implementation class DoctorUpdateServiceFiles
 */

public class DoctorUpdateServiceFiles  {
	public boolean UpdateDoctor(Doctor doc) {
		
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("UPDATE doctor SET fname='"+ doc.getfname()+"',lname ='"+doc.getlname()+"',age ='"+doc.getage()+"',salary='"+doc.getsalary()+"',fees='"+doc.getpay()+"' where doctor_id='"+doc.getId()+"'  ");

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
