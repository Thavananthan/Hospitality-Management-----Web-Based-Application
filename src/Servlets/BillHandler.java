package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Entities.Bill;
import ServiceFiles.BillService;


/**
 * Servlet implementation class BillHandler
 */
@WebServlet("/BillHandler")
public class BillHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillHandler() {
        super();
        // TODO Auto-generated constructor stub
    }
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname=request.getParameter("pname");
		String doctorname=request.getParameter("doctorname");
		String appoinnum =request.getParameter("appoinnum");
		String amount =request.getParameter("amount");
		
		Bill bill =new Bill();
		bill.setpname( pname);
		bill.setdoctorName(doctorname);
		bill.setAppointnumber(appoinnum);
		bill.setPayment(amount);
		
		BillService regsv=new BillService();
		if(regsv.insertBill(bill))
			response.sendRedirect("login/phome.jsp");
		
		
		
		
		
	}

}
