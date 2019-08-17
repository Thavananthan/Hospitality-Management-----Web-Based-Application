package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ServiceFiles.AdmindeleteDoctorService;

/**
 * Servlet implementation class AdmindeleteDoctorHandler
 */
@WebServlet("/AdmindeleteDoctorHandler")
public class AdmindeleteDoctorHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdmindeleteDoctorHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String doctor=request.getParameter("id");
		
		AdmindeleteDoctorService del= new AdmindeleteDoctorService();
		if(del.deleteDoctor(doctor))
			response.sendRedirect("admin/admin.jsp");
		
	}

	

}
