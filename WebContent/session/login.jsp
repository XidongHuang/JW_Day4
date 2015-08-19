<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	SessionID:<%= session.getId() %>
	<br><br>
	IsNew:<%= session.isNew() %>
	<br><br>
	MaxInactiveInternal:<%= session.getMaxInactiveInterval() %>
	<br><br>
	CreateTime:<%= session.getCreationTime() %>
	<br><br>
	LastAccessTime:<%= session.getLastAccessedTime() %>
	<br><br>
	<%
		Object userName = session.getAttribute("userName");
		if(userName == null){
			userName="";
		}
	%>
	
	
	<form action="<%= response.encodeURL("hello.jsp") %>" method="post">
		username:<input type="text" name="userName" 
		value="<%= userName %>"/>
		<input type="submit" name="Submit"/>
	
	
	</form>

</body>
</html>