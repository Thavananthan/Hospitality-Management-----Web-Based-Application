package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;




import Entities.Doctor;
import connection.ConnectionProvider;


/**
 * Servlet implementation class DoctorInsertService
 */

public class DoctorInsertService  {
	public boolean insertDoctor(Doctor doc) {
		
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO doctor(doctor_id,fname,lname,age,salary,fees,password) VALUES('"+doc.getId()+"','"+doc.getfname()+"','"+doc.getlname()+"','"+doc.getage()+"','"+doc.getsalary()+"','"+doc.getpay()+"','"+doc.getpassword()+"')");

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
