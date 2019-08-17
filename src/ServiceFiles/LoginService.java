package ServiceFiles;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



import connection.ConnectionProvider;

import Entities.Login;

public class LoginService   {
   
	

	public boolean checkLogin(Login log) {
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			
			ResultSet result = st.executeQuery("SELECT fname,email,passwords FROM register WHERE email='"+log.getUsername()+"' AND passwords='"+log.getPassword()+"'");
			
			

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

