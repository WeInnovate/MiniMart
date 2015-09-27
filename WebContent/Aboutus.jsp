<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SmartShop - Online shopping solution</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="js/modernizr.custom.js"></script>

<!--Navigation resource import  -->
<link rel="stylesheet" type="text/css" media="all"
	href="resources/naviagtion/css/styles.css">
<script type="text/javascript"
	src="resources/naviagtion/js/jquery-1.11.1.min.js"></script>

<title>MiniMart</title>

<script>
var itemArray = new Array();
var i = 0;
function myFunction(productName) {
	itemArray[i] = productName;
	i++;
}

//post('/contact/', {name: 'Johnny Bravo'});
function myFunction2(path, params, method) {
	params = {name:itemArray.toString()}
    method = method || "post"; // Set method to post by default if not specified.

    // The rest of this code assumes you are not using a library.
    // It can be made less wordy if you use one.
    var form = document.createElement("form");
    form.setAttribute("method", method);
    form.setAttribute("action", path);

    for(var key in params) {
        if(params.hasOwnProperty(key)) {
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", key);
            hiddenField.setAttribute("value", params[key]);

            form.appendChild(hiddenField);
         }
    }

    document.body.appendChild(form);
    form.submit();
}
</script>
</head>
<body>

	<%-- <%@ include file="navigation.jsp" %> --%>


	<nav>
	<div class="wrapper">
		<ul id="menu" class="clearfix">
			<li><a href="#">Home</a></li>
			<li><a href="#">Social</a>
				<ul>
					<li><a href="#">History</a></li>
					<!-- <li><a href="#">The Team</a></li> -->
					<li><a href="#">Our Mission</a></li>
				</ul></li>
			<li><a href="Aboutus.jsp">About Us</a>
				<ul>
					<li class="purple"><a href="#">Design</a>
						<ul>
							<li><a href="#">Photoshop</a></li>
							<li><a href="#">Illustrator</a></li>
							<li><a href="#">InDesign</a></li>
						</ul></li>
					<li class="green"><a href="#">Writing</a>
						<ul>
							<li><a href="#">Copywriting</a></li>
							<li><a href="#">Journalism</a></li>
							<li><a href="#">Poetry</a></li>
							<li><a href="#">Storytelling</a></li>
						</ul></li>
					<li class="aqua"><a href="#">Accounting</a>
						<ul>
							<li><a href="#">Taxes</a></li>
							<li><a href="#">Credit</a></li>
							<li><a href="#">Asset Management</a></li>
						</ul></li>
					<li class="red"><a href="#">Marketing</a>
						<ul>
							<li><a href="#">Print</a></li>
							<li><a href="#">Digital</a></li>
							<li><a href="#">Branding</a></li>
							<li><a href="#">Presenting</a></li>
							<li><a href="#">Social Media</a></li>
						</ul></li>
					<li class="blue"><a href="#">Development</a>
						<ul>
							<li><a href="#">HTML5/CSS3</a></li>
							<li><a href="#">jQuery</a></li>
							<li><a href="#">PHP</a></li>
							<li><a href="#">Ruby on Rails</a></li>
						</ul></li>
					<li class="gold"><a href="#">Photography</a>
						<ul>
							<li><a href="#">Mechanics</a></li>
							<li><a href="#">Composition</a></li>
						</ul></li>
				</ul></li>
			<li><a href="Contact.jsp">Contact Us</a>
				<ul>
					<li><a href="www.facebook.com">Facebook</a></li>
					<li><a href="www.twitter.com">Twitter</a></li>
					<li><a href="www.youtube.com">YouTube</a></li>
					<li><a href="www.Instagram.com">Instagram</a></li>
					<li><a href="#"></a></li>
				</ul></li>
			<li><a href="Login.jsp"> <%
			String name = (String)request.getAttribute("name");
		
			if(name == null){
				%>Login/Signup<%
			}
			else{
					out.println(request.getAttribute("name")); }%>
			</a></li>
			</head>
			<body>

				<marquee>
					<font color="blue">Welcome in MiniMart</font>
				</marquee>
				<h3>A team of experts dedicated to product quality and customer
					satisfaction.</h3>
					<h1 id="post-title" class="post-10 page type-page status-publish hentry entry-title">About Us </h1>
																		<div id="article">
							<p><strong>MiniMart</strong> brings to you <strong>Surprising Fashion and Grocery Online at Friendly Prices</strong>.</p>
<p><strong>MiniMart</strong> offers the best in fashion for Men, Women and Kids across formal wear, casual wear, ethnic wear, and footwear &amp; fashion accessories and in Grocery also.</p>
<p><strong>MiniMart</strong> serves your needs across food, grocery, personal care, home furnishing and other household categories.<br />
<strong>MiniMart </strong>is dedicated to offer the best value and fresh fashion to its million customers at affordable prices.</p>
				<li><img alt="d" src="images/aboutus.png" width="20" /></li>

			</body>
</html>