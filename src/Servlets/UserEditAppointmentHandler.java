package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Appointment;
import ServiceFiles.UserEditAppointmentService;

/**
 * Servlet implementation class UserEditAppointmentHandler
 */
@WebServlet("/UserEditAppointmentHandler")
public class UserEditAppointmentHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserEditAppointmentHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String department=request.getParameter("department");
		String doctor=request.getParameter("doctors");
		String fees=request.getParameter("fees");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		int id=Integer.parseInt(request.getParameter("id"));
		
		Appointment ap= new Appointment();
		ap.setId(id);
		ap.setdepartment(department);
		ap.setdoctor(doctor);
		ap.setfees(fees);
		ap.setdate(date);
		ap.settime(time);
		
		UserEditAppointmentService ueas= new UserEditAppointmentService();
		if(ueas. UpdateAppointment(ap))
			response.sendRedirect("login/appointment.jsp");
		
		
		
		
		
	}

}
