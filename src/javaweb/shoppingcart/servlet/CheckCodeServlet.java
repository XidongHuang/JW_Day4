package javaweb.shoppingcart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckCodeServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//1.Gain request parameter: CHECK_CODE_PARAM_NAME
		String paramCode = request.getParameter("CHECK_CODE_PARAM_NAME");
		
		//2. Gain attribute CHECK_CODE_KEY from session
		String sessionCode = (String)request.getSession().getAttribute("CHECK_CODE_KEY");
		System.out.println(paramCode);
		System.out.println(sessionCode);
		//3. Compare attribute with parameter, 
		if(paramCode != null && paramCode.equalsIgnoreCase(sessionCode)){
			//if not, re-upload
			request.getSession().removeAttribute("CHECK_CODE_KEY");
			request.getRequestDispatcher("/token/sucess.jsp").forward(request, response);
		} else { 
		
		//if they are same, response.sendRedirect;
		request.getSession().setAttribute("message", "Check code is not same!");
		
		response.sendRedirect(request.getContextPath()+"/token/re-upload.jsp");
		return;
		
		}

	} 
}