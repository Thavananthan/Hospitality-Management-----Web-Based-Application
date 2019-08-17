package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;


import javax.servlet.annotation.WebServlet;


import Entities.Admin;
import connection.ConnectionProvider;

/**
 * Servlet implementation class AdminAddService
 */
@WebServlet("/AdminAddService")
public class AdminAddService  {
public boolean insertAdmin(Admin ad) {
		
		
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO admin(admin_id,Username,a_password) VALUES('"+ad.getadminId()+"','"+ad.getusername()+"','"+ad.getpassword()+"')");

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
