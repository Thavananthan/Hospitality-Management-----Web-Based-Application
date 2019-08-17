package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;

import Entities.Admin;

import connection.ConnectionProvider;

/**
 * Servlet implementation class AdminResetPwsService
 */

public class AdminResetPwsService  {
	public boolean UpdateRegisterPass(Admin log) {
		
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("UPDATE admin SET a_password='"+ log.getpassword()+"' where admin_id='"+log.getadminId()+"' AND  Username='"+log.getusername()+"' ");

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
