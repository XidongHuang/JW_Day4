<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="book.jsl" method="post">
		<h3>Books Page</h3>
		
		<a href="book.jsp?book=JavaWeb">Java Web</a>
		<br><br>
		<a href="book.jsp?book=Java">Java</a>
		<br><br>
		<a href="book.jsp?book=Oracle">Oracle</a>
		<br><br>
		<a href="book.jsp?book=Ajax">Ajax</a>
		<br><br>
		<a href="book.jsp?book=JavaScript">Java Script</a>
		<br><br>
		<a href="book.jsp?book=Android">Android</a>
		<br><br>
		<a href="book.jsp?book=Jbpm">Jbpm</a>
		<br><br>
		<a href="book.jsp?book=Struts">Struts</a>
		<br><br>
		<a href="book.jsp?book=Hibernate">Hibernate</a>
		<br><br>
		<a href="book.jsp?book=Spring">Spring</a>
		
		<br><br>
	
	<%
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null && cookies.length >0){
			for(Cookie cookie: cookies){
				
				if(cookie.getName().startsWith("testBook")){	
				
					out.println(cookie.getValue());
					out.print("<br>");
				
				}
				
			}
			
			
			
			
		}
	
	%>
	
	
	
	</form>
	

</body>
</html>