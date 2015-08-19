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
		Cookie[] cookies = request.getCookies();
		String cookiePathVal = null;

		if (cookies != null && cookies.length > 0) {

			for (Cookie c : cookies) {
				if (c.getName().equals("cookiePath")) {

					cookiePathVal = c.getValue();

				}

			}

		}

		if (cookiePathVal != null) {
			out.println(cookiePathVal);

		} else {

			out.println("No any cookie path "+"<br>");

		}
	%>
	
	<a href="cookiepath.jsp">To get cookie</a>

</body>
</html>