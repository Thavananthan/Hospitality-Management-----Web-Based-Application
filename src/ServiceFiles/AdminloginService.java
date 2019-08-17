package ServiceFiles;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



import Entities.Login;
import connection.ConnectionProvider;

/**
 * Servlet implementation class AdminloginService
 */

public class AdminloginService  {
	
	public boolean checkLoginAdmin(Login log) {
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			
			ResultSet result = st.executeQuery("SELECT Username,a_password FROM admin WHERE  Username ='"+log.getUsername()+"' AND a_password='"+log.getPassword()+"'");
			
			

			if(result.next()) {
				
	 			return true;
	 		}else {
	 			return false;
	 		}
			
		}
		catch(Exception e){
			System.out.println(e);
		} 
		finally {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st;
			try {
				st = con.createStatement();
				String query = "UPDATE logintemp SET UserName='"+log.getUsername()+"' where id=1";
				st.executeUpdate(query);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}

		return false;

}
}
