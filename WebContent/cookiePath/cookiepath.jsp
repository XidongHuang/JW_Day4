<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Cookie cookie = new Cookie("cookiePath","cookiePathVal");
		cookie.setPath(request.getContextPath());
		response.addCookie(cookie);
		
	
	%>

	<a href="../cookie2.jsp">Read the cookie</a>
	
</body>
</html>