<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="UTF-8">
<title>Login</title>




<link rel="stylesheet" href="resources/naviagtion/css/style.css">

<script type="text/javascript">
        function display() {
                document.getElementById("case").style.display='block';
                document.getElementById("login").style.display='none';
                document.getElementById("new").style.display='none';
                document.getElementById("reg").style.display='block';
        }
        </script>

</head>
<body>

	<div class="wrapper">
		<div class="container">
			<h1>Welcome</h1>

			<form action="Servlet1" method="post" class="form">
				<div align="center">
					<input type="text" name="name" id="case" style="display: none"
						placeholder="Full Name"> <input type="text"
						name="username" placeholder="Username"> <input
						type="password" name="password" placeholder="Password">
					<button type="submit" id="login" style="display: block">Login</button>
					<br>
					<button type="button" id="new" onclick="display()"
						style="display: block">New User</button>
					<button type="submit" id="reg" onclick="display()"
						style="display: none">Register Me</button>
				</div>
			</form>
		</div>
		<ul class="bg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/index.js"></script>

</body>
</html>