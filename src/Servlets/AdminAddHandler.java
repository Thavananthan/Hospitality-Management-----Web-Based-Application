package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Admin;
import ServiceFiles.AdminAddService;

/**
 * Servlet implementation class AdminAddHandler
 */
@WebServlet("/AdminAddHandler")
public class AdminAddHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	/* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		String id=request.getParameter("id");
		String name=request.getParameter("fname");
		String password=request.getParameter("lname");
		
		Admin ad=new Admin();
		ad.setadminId(id);
		ad.setusername(name);
		ad.setpassword(password);
		
		AdminAddService regsv=new AdminAddService();
		if(regsv.insertAdmin(ad))
			response.sendRedirect("admin/admin.jsp");
		else
		{
			String s="Invalid ADMIN id";
            session.setAttribute("error",s);
			response.sendRedirect("admin/addadmin.jsp");
		}
		
		
	}

}
