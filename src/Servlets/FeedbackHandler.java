package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entities.Feedback;
import ServiceFiles.FeedbackService;

/**
 * Servlet implementation class FeedbackHandler
 */
@WebServlet("/FeedbackHandler")
public class FeedbackHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		    
		String name=request.getParameter("name");
		String mail=request.getParameter("email");
		int phone=Integer.parseInt(request.getParameter("Pho_num"));
		String mess=request.getParameter("mess");
		
		Feedback fb=new Feedback();
		fb.setname(name);
		fb.setemail(mail);
		fb.setphone(phone);
		fb.setmessage(mess);
		
		 FeedbackService  fbs=new FeedbackService();
		 if(fbs.InsertFeedback(fb)) {
			 response.sendRedirect("contact_us.jsp");
		 }
			 
		
	}

}
