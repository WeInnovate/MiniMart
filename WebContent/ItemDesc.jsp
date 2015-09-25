<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item Details</title>
</head>
<body bgcolor="#E6E6FA">
<form action="ItemServlet1" method="post">
<center>
<table style="width:40%">
<p>This is Bike. All information of bike blow</p>
<tr>
<td>Item ID:</td>
<td>Bk10</td>
</tr>
<tr>
<td>Item Price:</td>
<td>10000</td>
</tr>
<tr>
<td><input type="submit" value="Enter"/></td>
<td><input type="button" value="Back" onClick="history.go(-1);return true;">


</table>

</center>
</form>

</body>
</html>