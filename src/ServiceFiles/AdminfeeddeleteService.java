package ServiceFiles;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;


import connection.ConnectionProvider;

/**
 * Servlet implementation class AdminfeeddeleteService
 */
@WebServlet("/AdminfeeddeleteService")
public class AdminfeeddeleteService  {
	public boolean deleteFeedback(String mail) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon =ConnectionProvider.getInstance().getDBConnection();  
		
			Statement myStm= myCon.createStatement();
		
			String query = "DELETE FROM feedback WHERE email='"+mail+"'";
		
						
			myStm.executeUpdate(query);
			return true;
		
				
	} 

	catch (SQLException | ClassNotFoundException e) {
		e.printStackTrace();
	}

	return false;


}
}
