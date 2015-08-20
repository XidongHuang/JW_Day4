<%@page import="javaweb.shoppingcart.domain.Customer"%>
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
		Customer customer = (Customer)session.getAttribute("customer");
		String [] books = (String[])session.getAttribute("books");
	
	%>

	<h3>Setp3: Confirmation</h3>
	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<td>Customer Name:</td>
			<td><%= customer.getName() %></td>
		
		</tr>
	
		<tr>
			<td>Address:</td>
			<td><%= customer.getAddress() %></td>
		
		</tr>
		<tr>
			<td colspan="2">Payment:</td>
		
		</tr>
		
		<tr>
			<td>Card Type:</td>
			<td><%= customer.getCardType() %></td>
		
		</tr>
		
		<tr>
			<td>Card Number:</td>
			<td><%= customer.getCardNumber() %></td>
		
		</tr>
		
		<tr>
			<td>Books:</td>
			<td><% 
					for(String book: books){
						
						out.print(book+"<br>");
						
						
					}


				%></td>
		
		</tr>
		
	
	</table>
	

</body>
</html>