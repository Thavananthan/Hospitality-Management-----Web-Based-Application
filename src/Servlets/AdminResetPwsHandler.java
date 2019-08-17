package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Admin;
import ServiceFiles.AdminResetPwsService;

/**
 * Servlet implementation class AdminResetPwsHandler
 */
@WebServlet("/AdminResetPwsHandler")
public class AdminResetPwsHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminResetPwsHandler() {
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
		String ad=request.getParameter("id");       
		String email=(String) session.getAttribute("username");
		
		
		
		
		
		Admin register=new Admin();
		register.setadminId(ad);
		register.setusername(email);
		register.setpassword(pass);
		
		
		  
		AdminResetPwsService user =new AdminResetPwsService();
		if(user.UpdateRegisterPass(register)) { 
			response.sendRedirect("admin/admin.jsp");}
		else{
			 String s="Incorrect Doctor Id or password";
             session.setAttribute("error",s);
			response.sendRedirect("admin/adrestpass.jsp");
		}
	}

}
