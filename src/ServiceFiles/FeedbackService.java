package ServiceFiles;

import java.sql.Connection;

import java.sql.Statement;

import javax.servlet.annotation.WebServlet;

import Entities.Feedback;

import connection.ConnectionProvider;

/**
 * Servlet implementation class FeedbackService
 */
@WebServlet("/FeedbackService")
public class FeedbackService {
	public boolean InsertFeedback(Feedback fb) {
		try {
			Connection con = ConnectionProvider.getInstance().getDBConnection();
			Statement st = con.createStatement();

			int i = st.executeUpdate("INSERT INTO feedback(name,email,phone,messages ) VALUES('" + fb.getname() + "','" + fb.getemail() + "','"+ fb.getphonenumber() + "','" + fb.getmessages() + "')");

			if (i > 0) {
				return true;
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return false;
	}

}
