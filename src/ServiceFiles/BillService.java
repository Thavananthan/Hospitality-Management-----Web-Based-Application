package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;

import Entities.Bill;
import connection.ConnectionProvider;

public class BillService{
	
	public boolean insertBill(Bill bill) {
		
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO bill(p_name,doctor_name,appointnumber,amount ) VALUES('"+bill.getpname()+"','"+bill.getdoctorName()+"','"+bill.getAppointnumber()+"','"+bill.getPayment()+"')");

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
