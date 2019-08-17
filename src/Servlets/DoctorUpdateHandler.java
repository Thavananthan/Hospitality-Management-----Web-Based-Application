package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Doctor;

import ServiceFiles.DoctorUpdateServiceFiles;


/**
 * Servlet implementation class DoctorUpdateHandler
 */
@WebServlet("/DoctorUpdateHandler")
public class DoctorUpdateHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorUpdateHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String doctor=request.getParameter("id");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String age=request.getParameter("age");
	    String salary=request.getParameter("salary");
		String pay=request.getParameter("pay");
		
		Doctor doct=new Doctor();
		doct.setId(doctor);
		doct.setfname(fname);
		doct.setlname(lname);
		doct.setage(age);
		doct.setsalary(salary);
		doct.setpay(pay);
		
		DoctorUpdateServiceFiles regsv=new DoctorUpdateServiceFiles();
		if(regsv. UpdateDoctor(doct))
			response.sendRedirect("admin/Doctorview.jsp");
		
	}

}
