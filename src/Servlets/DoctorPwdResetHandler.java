package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Doctor;
import ServiceFiles.DoctorPwdResetService;

/**
 * Servlet implementation class DoctorPwdResetHandler
 */
@WebServlet("/DoctorPwdResetHandler")
public class DoctorPwdResetHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorPwdResetHandler() {
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
		String oldpass=request.getParameter("old");
		
		
		Doctor doc= new Doctor();
		
		doc.setId(oldpass);
		doc.setpassword(pass);
		
		DoctorPwdResetService ds= new DoctorPwdResetService();
		if(ds.UpdateDoctorPass(doc)) {
			response.sendRedirect("doctor/Dhome.jsp");}
		
		else { 
			String s="Incorrect Doctor id or password";
            session.setAttribute("error",s);
			response.sendRedirect("doctor/DocPwdRest.jsp");
		}
		
		
		
		
		
	}

}
