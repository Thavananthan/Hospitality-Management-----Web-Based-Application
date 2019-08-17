package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Doctor;
import ServiceFiles.DoctorInsertService;

/**
 * Servlet implementation class DoctorInsertHandler
 */
@WebServlet("/DoctorInsertHandler")
public class DoctorInsertHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorInsertHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String doctid= request.getParameter("id");
		 String doctName=request.getParameter("fname");
		 String lname= request.getParameter("name");
		 String age= request.getParameter("age");
		 String salary= request.getParameter("salary");
		 String pay= request.getParameter("fees");
		 String pass=request.getParameter("password");
		 
		 Doctor doct=new Doctor();
		 doct.setId(doctid);
		 doct.setfname(doctName);
		 doct.setlname(lname);
		 doct.setage(age);
		 doct.setsalary(salary);
		 doct.setpay(pay);
		 doct.setpassword(pass);
		 
		 DoctorInsertService di=new DoctorInsertService();
		 if(di.insertDoctor(doct))
				response.sendRedirect("admin/Doctorview.jsp");
		
		
		
		
		
		
	}

}
