<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<form action="Item.jsp" method="post">
		<center>
			<h1>Hello!</h1>
			<h2>
				<% out.println("Welcome :"+request.getAttribute("abc")); %>
			</h2>
			<h5>
				Update Profile<a href="Update.jsp">Update</a>
			</h5>
			<table style="width: 20%">
				<tr>
					<td>item 1:</td>
					<td><input type="checkbox" name="Itrm1" value="Bike">You
						select<br></td>
				</tr>
				<tr>
					<td>item 2:</td>
					<td><input type="checkbox" name="Itrm2" value="Car">You
						select<br></td>
				</tr>
				<tr>
					<td>item 3:</td>
					<td><input type="checkbox" name="Itrm3" value="Van">You
						select<br></td>
				</tr>
				<tr>
					<td><input type="submit" value="Enter" /></td>
					<td><input type="reset" value="Clear" /></td>
			</table>
			<table width="400" border="0" align="center" cellpadding="3"
				cellspacing="1">
				<tr>
					<td>Contact Form</td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>