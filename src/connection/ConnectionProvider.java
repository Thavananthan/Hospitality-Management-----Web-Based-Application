package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//singleton class
public class ConnectionProvider { 
	private static ConnectionProvider CPIsntance;
	private static Connection connection; 

	// This works according to singleton pattern
	private ConnectionProvider(){
		
	}
	
	public static ConnectionProvider getInstance(){
	    if(CPIsntance==null){
	    	CPIsntance= new ConnectionProvider();
	    }
		return CPIsntance;
	}
	    
	public Connection getDBConnection(){ 
		
		//This create new connection objects when connection is closed or it is null
		try{  
			String driver ="com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/hms"; 
			String username = "root"; 
			String password = "";
			  
			if(connection == null || connection.isClosed())
			{
				Class.forName(driver);  //load driver
				connection = DriverManager.getConnection(url,username,password); //creating connection
			}
			
		} catch(ClassNotFoundException | SQLException e){
			System.out.println(e);
		}
		return connection;  
	}  
	
}  