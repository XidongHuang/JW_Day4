<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Step1: Select those books you want to buy</h3>

	<form action="<%= request.getContextPath() %>/processStep1" method="post">
	
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<td>Book</td>
				<td>Buy</td>
			</tr>		
		
			<tr>
				<td>Java</td>
				<td><input type="checkbox" name="book" value="Java"></td>
			</tr>
		
			<tr>
				<td>Oracle</td>
				<td><input type="checkbox" name="book" value="Oracle"></td>
			</tr>
			
			<tr>
				<td>Structs</td>
				<td><input type="checkbox" name="book" value="Structs"></td>
			</tr>
		
			<tr>
				<td colspan="2"><input type="submit" name="Submit" value="continue"/></td>
			</tr>
		
		</table>
	
	</form>

</body>
</html>