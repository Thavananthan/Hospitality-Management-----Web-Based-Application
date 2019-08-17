package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Doctor;
import ServiceFiles.DoctorUpdateService ;

/**
 * Servlet implementation class DoctorsUpdateHandler
 */
@WebServlet("/DoctorsUpdateHandler")
public class DoctorsUpdateHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorsUpdateHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String doid=request.getParameter("email");
		String fname=request.getParameter("fname");
	    String lname=request.getParameter("lname");
		String age=request.getParameter("age");
		
		Doctor doc=new Doctor();
		doc.setId(doid);
		doc.setfname(fname);
		doc.setlname(lname);
		doc.setage(age);
		
		DoctorUpdateService  regsv=new DoctorUpdateService();
		if(regsv.UpdateDoctor(doc))
			response.sendRedirect("doctor/Dhome.jsp");
		
	}

}
