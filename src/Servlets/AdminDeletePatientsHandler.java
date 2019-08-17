package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ServiceFiles. AdminDeletePatientService;

/**
 * Servlet implementation class AdminPatients
 */
@WebServlet("/AdminPatients")
public class AdminDeletePatientsHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeletePatientsHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email=request.getParameter("id");
		
		 AdminDeletePatientService auds = new  AdminDeletePatientService();
		
		if(auds.deletePatient(email))
			response.sendRedirect("admin/patients.jsp");
		
		
		
		
	}

	

}
