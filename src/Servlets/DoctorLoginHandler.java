package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Doctor;
import ServiceFiles. DoctorLoginService;

/**
 * Servlet implementation class DoctorLoginHandler
 */
@WebServlet("/DoctorLoginHandler")
public class DoctorLoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorLoginHandler() {
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
		String fname=request.getParameter("Name");
		String password=request.getParameter("uPassword");
		
		session.setAttribute("username",fname); 
		session.setAttribute("id",username); 
		
		 
    	
    	
		Doctor login=new Doctor();
		login.setId(username);
		login.setfname(fname);
		login.setpassword(password);
		
		
		 DoctorLoginService regsv=new  DoctorLoginService();
		 if(regsv.checkDoctorLogin(login)) {
			   
        response.sendRedirect("doctor/Dhome.jsp");}
		 else {
			 String s="Incorrect username or password";
             session.setAttribute("error",s);
			 response.sendRedirect("doctor/D_login.jsp");}
			
		
		
		
		
	}

}
