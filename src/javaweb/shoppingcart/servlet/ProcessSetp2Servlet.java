package javaweb.shoppingcart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaweb.shoppingcart.domain.Customer;


@WebServlet("/processStep2")
public class ProcessSetp2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.getParameterValues("")
		System.out.println("Hello, step2");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String cardType = request.getParameter("cardType");
		String cardNumber = request.getParameter("card");
		System.out.println(cardNumber);
//		request.getSession().setAttribute("name", name);
//		request.getSession().setAttribute("address",address);
//		request.getSession().setAttribute("cardType", cardType);
//		request.getSession().setAttribute("cardNumber", cardNumber);
		
		Customer customer = new Customer(name, address, cardType, cardNumber);
		request.getSession().setAttribute("customer", customer);
		
		response.sendRedirect(request.getContextPath()+"/shoppingCart/confirm.jsp");
	}

}
