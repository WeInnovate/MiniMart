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
<center>
<h1>Item List</h1>
<h2><% out.println("Welcome :"+request.getAttribute("abc")); %></h2>
 Item1<a href="ItemDesc.jsp"> Buy</a>
 <p>This is bike</p>
 Item2<a href="Welcome.jsp"> Buy</a>
 <p>This is car</p>
 Item2<a href="Welcome.jsp"> Buy</a>
 <p>This is van</p>
</center>
</body>
</html>