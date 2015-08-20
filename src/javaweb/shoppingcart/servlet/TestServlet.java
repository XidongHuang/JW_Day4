package javaweb.shoppingcart.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/testServlet")
public final class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<String> cities = Arrays.asList("Beijing","ShangHai","GuangZhou");
		
		request.setAttribute("cities", cities);
		System.out.println(cities);
		
		request.getRequestDispatcher("/path/b.jsp").forward(request, response);;
		
	}

}
