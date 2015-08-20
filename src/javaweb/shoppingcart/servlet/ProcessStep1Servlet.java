package javaweb.shoppingcart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/processStep1")
public class ProcessStep1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hello, step1");
		//1. Gain the information of books that are selected
		String [] books = request.getParameterValues("book");
		
		//2. Put those information in HttpSession 
		request.getSession().setAttribute("books", books);
		
		//3. Redirect to another page
		response.sendRedirect(request.getContextPath()+"/shoppingCart/step2.jsp");
	}

}
