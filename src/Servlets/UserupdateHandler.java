package Servlets;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Register;
import ServiceFiles.UserupdateService;

/**
 * Servlet implementation class UserupdateHandler
 */
@WebServlet("/UserupdateHandler")
public class UserupdateHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserupdateHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		
		String username=request.getParameter("fname");
		String age=request.getParameter("age");
	    String phone=request.getParameter("phone");
		String address=request.getParameter("add");
		String email=(String)session.getAttribute("username");
		
		Register register=new Register();
		register.setUsername(username);
		register.setAge(age);
		register.setEmail(email);
		register.setphone(phone);
		register.setAddress(address);
		
		UserupdateService regsv=new UserupdateService();
		if(regsv.UpdateRegister(register))
			response.sendRedirect("login/phome.jsp");
		
		
	}

}
