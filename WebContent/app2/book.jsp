<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>Book Detail Page</h3>
	
	
	<%
		String bookName = request.getParameter("book");
		%>
		
		Book:<%=bookName %>
		<br>
		<%
		
		
		
		//Send the information of books to books.jsp by Cookie and delete a Cookie
		//1. Find the cookie that needs to be deleted
		//requirement: the numbers of cookie which starts with "testBook_" equal or larger than 5
		Cookie[] cookies = request.getCookies();
		
		//Keep all cookies which start with "testBook_"
		List<Cookie> bookCookies = new ArrayList<Cookie>();
		//Keep the cookie that just came in
		Cookie tempCookie = null;
		
		if(cookies != null && cookies.length >0){
			
			
			for(Cookie c:cookies){
				String cookieName = c.getName();
				if(cookieName.startsWith("testBook_"+bookName)){
					
					bookCookies.add(c);
					
				if(c.getValue().equals(bookName)){
					tempCookie = c;
					
				}
				}
				
			}
			
			
		} 
		
		
		//1.1 If the bookName that just came in is not in the list
		//then just delete the first cookie in the list
		if(bookCookies.size() >=5 && tempCookie == null){
			tempCookie = bookCookies.get(0);
		}
		
		//1.2 If in there, then delete it
		if(tempCookie != null){
			tempCookie.setMaxAge(0);
			response.addCookie(tempCookie);
		}
		
		//2. Put the book that just came in books.jsp, and send it back as a Cookie
		Cookie cookie = new Cookie("testBook_"+bookName, bookName);
		response.addCookie(cookie);
	
	%>
	
	<a href="books.jsp">Return</a>


</body>
</html>