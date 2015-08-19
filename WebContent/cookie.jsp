<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//In JavaWeb stander, use cookie in Cookie class
		
		
		
		//1. Gain Cookie
		Cookie [] cookies = request.getCookies();
		
		if(cookies != null && cookies.length >0){
			for(Cookie cookie: cookies){
				out.print(cookie.getName()+": " + cookie.getValue());
				out.println("<br>");
			}
			
		} else {
			out.print("No cookie, creating one and returning it");
			
			//1. create a Cookie instance
			Cookie cookie = new Cookie("name","Tony");	
			
			cookie.setMaxAge(5);
			
			//2. Invoke a method in response to send Cookie to client
  			response.addCookie(cookie);
			
		}
	
	
	%>


</body>
</html>