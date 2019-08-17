package ServiceFiles;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;


import Entities.Doctor;
import connection.ConnectionProvider;

/**
 * Servlet implementation class DoctorLoginService
 */
@WebServlet("/DoctorLoginService")
public class DoctorLoginService  {
	public boolean checkDoctorLogin(Doctor log) {
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			
			ResultSet result = st.executeQuery("SELECT fname,doctor_id,password FROM doctor WHERE fname='"+log.getfname()+"' AND doctor_id='"+log.getId()+"' AND password='"+log.getpassword()+"'");
			
			

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
				String query = "UPDATE logintemp SET UserName='"+log.getId()+"' where id=1";
				st.executeUpdate(query);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}

		return false;
	}
	
}
