package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ServiceFiles.AdminAppointDeleteService;
/**
 * Servlet implementation class AdminAppointDeleteHandler
 */
@WebServlet("/AdminAppointDeleteHandler")
public class AdminAppointDeleteHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAppointDeleteHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UserName=request.getParameter("id");
		AdminAppointDeleteService ad=new AdminAppointDeleteService();
		if(ad.deleteUser(UserName))
			response.sendRedirect("admin/adminappointview.jsp");
		
	}

}
