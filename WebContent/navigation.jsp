<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*"%>
<nav>
	<div class="wrapper">
		<ul id="menu" class="clearfix">
			<li><a href="#">Home</a></li>
			<li><a href="#">Contact Us</a>
				<ul>
					<li><a href="#">History</a></li>
					<!-- <li><a href="#">The Team</a></li> -->
					<li><a href="#">Our Mission</a></li>
				</ul></li>
			<li><a href="#">About Us</a>
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
			<li><a href="#">Social</a>
				<ul>
					<li><a href="www.facebook.com">Facebook</a></li>
					<li><a href="www.twitter.com">Twitter</a></li>
					<li><a href="www.youtube.com">YouTube</a></li>
					<li><a href="www.Instagram.com">Instagram</a></li>
					<li><a href="#"></a></li>
				</ul></li>
			<li><a href="Login.jsp"> ${param.name} </a></li>
		</ul>
	</div>
</nav>