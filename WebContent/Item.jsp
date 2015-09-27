<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item</title>
</head>
<body bgcolor="#E6E6FA">
	<form action="" method="post"></form>
	<left>
		<h1>Item List</h1>
		<h2>
		
			<% out.println("ItemId :"+request.getAttribute("abc")); 
			out.println("ItemName :"+request.getAttribute("bcd"));
			out.println("price :"+request.getAttribute("efc"));
			%>
			<img src="<%out.println((String)request.getAttribute("img")); %>" alt="Preview image">
		</h2>
		
	</left>
</body>
</html>