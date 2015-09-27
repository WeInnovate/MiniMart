<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Work+Sans:400,600,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/reset.css">
<!-- CSS reset -->
<link rel="stylesheet" href="css/style.css">
<!-- Resource style -->
<script src="js/modernizr.js"></script>
<!-- Modernizr -->

<!--Navigation resource import  -->
<link rel="stylesheet" type="text/css" media="all"
	href="resources/naviagtion/css/styles1.css">
<script type="text/javascript"
	src="resources/naviagtion/js/jquery-1.11.1.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item</title>
</head>
<body >
	<!-- <form action="" method="post"> -->
	<nav>
		<div class="wrapper">
			<ul id="menu" class="clearfix">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="#">Category</a>
					<ul>
						<li><a href="#">Clothes</a></li>
						<!-- <li><a href="#">The Team</a></li> -->
						<li><a href="#">Grocery</a></li>
					</ul></li>
				<li><a href="Aboutus.jsp">About Us</a>
			
				<li><a href="contactUs.jsp">Contact Us</a>
					</li>
				<li><a href="Login.jsp"> <%
			String name = (String)request.getAttribute("name");
		
			if(name == null){
				%>Login/SignUp<%
			}
			else{
					out.println(request.getAttribute("name")); }%>
				</a>

				</li>
				
			</ul>
		</div>
	</nav>
		
<!-- <table align="right"> -->


            Product ID: <% out.println(request.getAttribute("abc")); %>
            Product Name:<%out.println(request.getAttribute("bcd"));%>
			Product Cost:<%out.println(request.getAttribute("efc"));%>
			
      <img src="<%out.println((String)request.getAttribute("img")); %>" alt="Preview image" align="left">
		
			
			<%-- <img src="<%out.println((String)request.getAttribute("img")); %>" alt="Preview image" align="left"> --%>
		
		

	
</body>
</html>