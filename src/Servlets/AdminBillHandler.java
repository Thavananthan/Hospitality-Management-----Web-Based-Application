package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ServiceFiles.AdminBillService;


/**
 * Servlet implementation class AdminBillHandler
 */
@WebServlet("/AdminBillHandler")
public class AdminBillHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminBillHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String billnumber=request.getParameter("id");
	  
		AdminBillService del= new AdminBillService();
		if(del.deleteBill(billnumber))
			response.sendRedirect("admin/admin.jsp");
	}

	
}
