
package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Appointment;
import ServiceFiles.AppointmentService;


@WebServlet("/AppointmentHandler")
public class AppointmentHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		
		String department=request.getParameter("department");
		String doctor=request.getParameter("doctors");
		String fees=request.getParameter("fees");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String email=(String)session.getAttribute("username");
		
		Appointment appo=new Appointment();
		 appo.setdepartment(department);
		 appo.setdoctor(doctor);
		 appo.setfees(fees);
		 appo.setdate(date);
		 appo.settime(time);
		 appo.setemail(email);
		
		 AppointmentService ressv=new AppointmentService();
		if(ressv.insertAppointment(appo)) {
			response.sendRedirect("login/phome.jsp");}
		
		
	}

}
