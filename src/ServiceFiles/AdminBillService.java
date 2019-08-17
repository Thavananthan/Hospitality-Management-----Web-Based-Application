package ServiceFiles;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;


import connection.ConnectionProvider;

/**
 * Servlet implementation class AdminBillService
 */
@WebServlet("/AdminBillService")
public class AdminBillService  {
	
public boolean deleteBill(String Billnumber) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon =ConnectionProvider.getInstance().getDBConnection();  
		
			Statement myStm= myCon.createStatement();
		
			String query = "DELETE FROM bill WHERE billnumber='"+Billnumber+"'";
		
						
			myStm.executeUpdate(query);
				return true;
			
					
		} 
	
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		return false;
	

}
}
