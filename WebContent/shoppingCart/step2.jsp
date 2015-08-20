<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Step2: Personal Information</h3>
	<form action="<%= request.getContextPath() %>/processStep2" method="post">
		<table board="1" cellpadding="10" cellspacing="0">
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="name"/></td>
			</tr>
			
			<tr>
				<td>Deliver Address</td>
				<td><input type="text" name="address" value="address"/></td>
			</tr>
			
			<tr>
				<td colspan="2">Payment</td>
			</tr>
			
			<tr>
				<td>Type</td>
				<td>
					<input type="radio" name="cardType" value="visa"/>Visa
					<input type="radio" name="cardType" value="master"/>Master
				</td>
			</tr>
			
			<tr>
				<td>Card Number</td>
				<td><input type="text" name="card" value="cardNumber"/></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" name="Submit" value="continue"/></td>
			</tr>
		
		
		</table>
	</form>

</body>
</html>