package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Register;
import ServiceFiles.RegisterService;

/**
 * Servlet implementation class RegisterHandler
 */
@WebServlet("/RegisterHandler")
public class RegisterHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String username = request.getParameter("fname");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String phone = request.getParameter("pho_num");
		String password = request.getParameter("password");
		String address = request.getParameter("address");

		Register register = new Register();
		register.setUsername(username);
		register.setAge(age);
		register.setEmail(email);
		register.setphone(phone);
		register.setPassword(password);
		register.setAddress(address);

		RegisterService regsv = new RegisterService();
		if (regsv.insertRegister(register))
			response.sendRedirect("home.jsp");
		else {
			String s = "Your mail id already used";
			session.setAttribute("error", s);
			response.sendRedirect("Register.jsp");
		}

	}

}
