package ServiceFiles;


import java.sql.Statement;

import java.sql.Connection;

import Entities.Register;

import connection.ConnectionProvider;


public class UserupdateService  {
	
       
	public boolean UpdateRegister(Register reg) {
		
		

		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("UPDATE register SET fname='"+ reg.getUsername()+"',age ='"+reg.getAge()+"',phone_number='"+reg.getphone()+"',address='"+reg.getAddress()+"' where email='"+reg.getEmail()+"'  ");

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
