package ServiceFiles;

import java.sql.Statement;

import java.sql.Connection;
import java.sql.SQLException;



import connection.ConnectionProvider;


/**
 * Servlet implementation class AdmindeleteDoctorService
 */

public class AdmindeleteDoctorService  {
    
	public boolean deleteDoctor(String doctor) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon =ConnectionProvider.getInstance().getDBConnection();  
		
			Statement myStm= myCon.createStatement();
		
			String query = "DELETE FROM doctor WHERE doctor_id='"+doctor+"'";
		
						
			myStm.executeUpdate(query);
			return true;
		
				
	} 

	catch (SQLException | ClassNotFoundException e) {
		e.printStackTrace();
	}

	return false;

		
		
		
		
		
	}
	
	
	
}
