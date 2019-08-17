package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Login;
import ServiceFiles.AdminloginService;

/**
 * Servlet implementation class AdminLoginHandler
 */
@WebServlet("/AdminLoginHandler")
public class AdminLoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		String username=request.getParameter("uName");
		String password=request.getParameter("uPassword");
		
		session.setAttribute("username",username);
		

		Login login=new Login();
		login.setUsername(username);
		login.setPassword(password);
		
		AdminloginService regsv=new AdminloginService();
		 if(regsv.checkLoginAdmin(login)) {
       response.sendRedirect("admin/admin.jsp");}
		 else {
			 String s="Incorrect username or password";
             session.setAttribute("error",s);
			 response.sendRedirect("admin/Admin_login.jsp");
		 }
	}

}
