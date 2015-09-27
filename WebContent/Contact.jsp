<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
		</ul>
		</head>
		<body>
			<div>
				<marquee>
					<font color="blue">Welcome in MiniMart</font>
				</marquee>

				<p>+91-8381015407</p>
				<p>Amar Dwivedi</p>
				<p>
				<p>er.amardwivedi@gmail.com</p>
				<p>Bangalore</p>
				<li><img alt="d" src="images/contactus.png" width="20" /></li>
			</div>
		</body>
</html>