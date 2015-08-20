package javaweb.shoppingcart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import javaweb.shoppingcart.domain.TokenProcessor;


@WebServlet("/tokenServlet")
public final class TokenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String name = request.getParameter("name");
		
		System.out.println(name);
		
//		
//		HttpSession session = request.getSession();
//		
//		Object token = session.getAttribute("token");
//		
//		String tokenV = request.getParameter("token");
//		
//		if(token != null && token.equals(tokenV)){
//			
//			session.removeAttribute("token");
//			
//		} else {
//			
//			response.sendRedirect(request.getContextPath()+"/token/re-upload.jsp");
//			return;
//		}
		
		boolean valid = TokenProcessor.getInstance().isTokenValid(request);
		
		if(valid){
			TokenProcessor.getInstance().resetToken(request);
		} else {
			response.sendRedirect(request.getContextPath()+"/token/re-upload.jsp");
			return;
		}
		
		
		request.getRequestDispatcher("/token/sucess.jsp").forward(request,response);
		
		
	}

}
