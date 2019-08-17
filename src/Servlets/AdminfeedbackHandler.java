package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ServiceFiles.AdminfeeddeleteService;

/**
 * Servlet implementation class AdminfeedbackHandler
 */
@WebServlet("/AdminfeedbackHandler")
public class AdminfeedbackHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminfeedbackHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        String mail=request.getParameter("id");
		
        AdminfeeddeleteService del= new AdminfeeddeleteService();
		if(del.deleteFeedback(mail))
			response.sendRedirect("admin/admin.jsp");
	}


}
