package ServiceFiles;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;


import connection.ConnectionProvider;

/**
 * Servlet implementation class AdminDeletePatientService
 */
@WebServlet("/AdminDeletePatientService")
public class AdminDeletePatientService {
	public boolean deletePatient(String email) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon =ConnectionProvider.getInstance().getDBConnection();  
		
			Statement myStm= myCon.createStatement();
		
			String query = "DELETE FROM register WHERE email='"+email+"'";
		
						
			myStm.executeUpdate(query);
			return true;
		
				
	} 

	catch (SQLException | ClassNotFoundException e) {
		e.printStackTrace();
	}

	return false;
		
	}
	
}
