package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;



import Entities.Register;

import connection.ConnectionProvider;



public class UserpassRestService  {
	public boolean UpdateRegisterPass(Register reg) {
		

		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("UPDATE register SET passwords ='"+ reg.getPassword()+"' where email='"+reg.getEmail()+"'  ");

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


