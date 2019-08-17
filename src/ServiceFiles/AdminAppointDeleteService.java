package ServiceFiles;

import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;

import connection.ConnectionProvider;

public class AdminAppointDeleteService {
	
public boolean deleteUser(String UserName) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon =ConnectionProvider.getInstance().getDBConnection();  
		
			Statement myStm= myCon.createStatement();
		
			String query = "DELETE FROM appointment WHERE appointment_number='"+UserName+"'";
		
						
			myStm.executeUpdate(query);
				return true;
			
					
		} 
	
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		return false;

}
	

}
