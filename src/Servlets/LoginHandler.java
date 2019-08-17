package Servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Login;
import ServiceFiles.LoginService;


/**
 * Servlet implementation class LoginHandler
 */
@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginHandler() {
        // TODO Auto-generated constructor stub
    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
				String username=request.getParameter("uName");
				String password=request.getParameter("uPassword");
				
				session.setAttribute("username",username); 
            	
            	
				Login login=new Login();
				login.setUsername(username);
				login.setPassword(password);
				
				LoginService regsv=new LoginService();
				 if(regsv.checkLogin(login)) {
		        response.sendRedirect("login/phome.jsp");}
				 else {
					 String s="Incorrect username or password";
		                session.setAttribute("error",s);
					 response.sendRedirect("P_login.jsp");}
					
				
				
				
				
			
	}

}
