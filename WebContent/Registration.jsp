<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body bgcolor="#E6E6FA">
<center>
<form action="Servlet1" method="post">
<h1>Enter Details</h1>
<table style="width:20%">

<tr>
<td>UserName:</td>
<td><input type="text" name="username" value=""/></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password" value=""/></td>
</tr>
</table>
<input type="submit" name="Enter" value="Enter"/>
<input type="reset" name="Clear"/>
<a href="Login.jsp" >Login Here</a>
</form>
</center>






</body>
</html>