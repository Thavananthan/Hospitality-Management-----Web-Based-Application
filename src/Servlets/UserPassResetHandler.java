package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Register;
import ServiceFiles.UserpassRestService;

/**
 * Servlet implementation class UserPassResetHandler
 */
@WebServlet("/UserPassResetHandler")
public class UserPassResetHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserPassResetHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		String pass=request.getParameter("new");
		
		
		String email=(String)session.getAttribute("username");
		
		Register register=new Register();
		register.setPassword(pass);
		register.setEmail(email);
		  
		UserpassRestService user =new UserpassRestService();
		if(user.UpdateRegisterPass(register)) 
			response.sendRedirect("login/phome.jsp");
	}

}
