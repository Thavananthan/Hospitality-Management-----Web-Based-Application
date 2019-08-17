package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;
import connection.ConnectionProvider;

import Entities.Register;

public class RegisterService {
	
	public boolean insertRegister(Register reg) {
		
		
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO register(fname,age,email,phone_number,passwords,address) VALUES('"+reg.getUsername()+"','"+reg.getAge()+"','"+reg.getEmail()+"','"+reg.getphone()+"','"+reg.getPassword()+"','"+reg.getAddress()+"')");

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
