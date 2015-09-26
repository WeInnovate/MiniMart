<%@page language="java" session="true" %>
<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Work+Sans:400,600,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"> <!-- Resource style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
  	
  	<!--Navigation resource import  -->
  	<link rel="stylesheet" type="text/css" media="all" href="resources/naviagtion/css/styles.css">
  <script type="text/javascript" src="resources/naviagtion/js/jquery-1.11.1.min.js"></script>
  	
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
			<li><a href="Login.jsp">
			<%
			String name = (String)request.getAttribute("name");
		
			if(name == null){
				%>Login/Signup<%
			}
			else{
					out.println(request.getAttribute("name")); }%>
			</a></li>
		</ul>
	</div>
</nav>
	
	
	
		<a href="#0" class="cd-cart"  onclick="myFunction2('ViewCart', {name: 'Johnny Bravo'})">
		<span>0</span>
	</a>

	<ul class="cd-gallery">
		<li>
			<div class="cd-single-item">
				<a href="#0">
					<ul class="cd-slider-wrapper">
						<li><img src="img/thumb-1.jpg" alt="Preview image"></li>
						<li class="selected"><img src="img/thumb-2.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-3.jpg" alt="Preview image"></li>
					</ul>
				</a>

				<div class="cd-customization">
					<div class="color selected-2" data-type="select">
						<ul>
							<li class="color-1">color-1</li>
							<li class="color-2 active">color-2</li>
							<li class="color-3">color-3</li>
						</ul>
					</div>
					
					<div class="size" data-type="select">
						<ul>
							<li class="small active">Small</li>
							<li class="medium">Medium</li>
							<li class="large">Large</li>
						</ul>
					</div>

					<button class="add-to-cart" onclick="myFunction('Product1')">
						<em>Add to Cart</em>
						<svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
							<path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
						</svg>
					</button>
				</div> <!-- .cd-customization -->

				<button class="cd-customization-trigger">Customize</button>
			</div> <!-- .cd-single-item -->

			<div class="cd-item-info">
				<b><a href="#0">Product1</a></b>
				<em>$1</em>
			</div> <!-- cd-item-info -->
		</li>

		<li>
			<div class="cd-single-item">
				<a href="#0">
					<ul class="cd-slider-wrapper">
						<li class="selected"><img src="img/thumb-1.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-2.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-3.jpg" alt="Preview image"></li>
					</ul>
				</a>

				<div class="cd-customization">
					<div class="color" data-type="select">
						<ul>
							<li class="color-1 active">color-1</li>
							<li class="color-2">color-2</li>
							<li class="color-3">color-3</li>
						</ul>
					</div>
					
					<div class="size" data-type="select">
						<ul>
							<li class="small active">Small</li>
							<li class="medium">Medium</li>
							<li class="large">Large</li>
						</ul>
					</div>

					<button class="add-to-cart"  onclick="myFunction('Product2')">
						<em>Add to Cart</em>
						<svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
							<path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
						</svg>
					</button>
				</div> <!-- .cd-customization -->

				<button class="cd-customization-trigger">Customize</button>
			</div> <!-- .cd-single-item -->

			<div class="cd-item-info">
				<b><a href="#0">Product2</a></b>
				<em>$2</em>
			</div> <!-- cd-item-info -->
		</li>

		<li>
			<div class="cd-single-item">
				<a href="#0">
					<ul class="cd-slider-wrapper">
						<li><img src="img/thumb-1.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-2.jpg" alt="Preview image"></li>
						<li class="selected"><img src="img/thumb-3.jpg" alt="Preview image"></li>
					</ul>
				</a>

				<div class="cd-customization">
					<div class="color selected-3" data-type="select">
						<ul>
							<li class="color-1">color-1</li>
							<li class="color-2">color-2</li>
							<li class="color-3 active">color-3</li>
						</ul>
					</div>
					
					<div class="size" data-type="select">
						<ul>
							<li class="small active">Small</li>
							<li class="medium">Medium</li>
							<li class="large">Large</li>
						</ul>
					</div>

					<button class="add-to-cart" onclick="myFunction('Product3')">
						<em>Add to Cart</em>
						<svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
							<path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
						</svg>
					</button>
				</div> <!-- .cd-customization -->

				<button class="cd-customization-trigger">Customize</button>
			</div> <!-- .cd-single-item -->

			<div class="cd-item-info">
				<b><a href="#0">Product3</a></b>
				<em>$3</em>
			</div> <!-- cd-item-info -->
		</li>

		<li>
			<div class="cd-single-item">
				<a href="#0">
					<ul class="cd-slider-wrapper">
						<li class="selected"><img src="img/thumb-1.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-2.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-3.jpg" alt="Preview image"></li>
					</ul>
				</a>

				<div class="cd-customization">
					<div class="color" data-type="select">
						<ul>
							<li class="color-1 active">color-1</li>
							<li class="color-2">color-2</li>
							<li class="color-3">color-3</li>
						</ul>
					</div>
					
					<div class="size" data-type="select">
						<ul>
							<li class="small active">Small</li>
							<li class="medium">Medium</li>
							<li class="large">Large</li>
						</ul>
					</div>

					<button class="add-to-cart"  onclick="myFunction('Product4')">
						<em>Add to Cart</em>
						<svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
							<path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
						</svg>
					</button>
				</div> <!-- .cd-customization -->

				<button class="cd-customization-trigger">Customize</button>
			</div> <!-- .cd-single-item -->

			<div class="cd-item-info">
				<b><a href="#0">Product4</a></b>
				<em>$4</em>
			</div> <!-- cd-item-info -->
		</li>

		<li>
			<div class="cd-single-item">
				<a href="#0">
					<ul class="cd-slider-wrapper">
						<li><img src="img/thumb-1.jpg" alt="Preview image"></li>
						<li class="selected"><img src="img/thumb-2.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-3.jpg" alt="Preview image"></li>
					</ul>
				</a>

				<div class="cd-customization">
					<div class="color selected-2" data-type="select">
						<ul>
							<li class="color-1">color-1</li>
							<li class="color-2 active">color-2</li>
							<li class="color-3">color-3</li>
						</ul>
					</div>
					
					<div class="size" data-type="select">
						<ul>
							<li class="small active">Small</li>
							<li class="medium">Medium</li>
							<li class="large">Large</li>
						</ul>
					</div>

					<button class="add-to-cart"  onclick="myFunction('Product5')">
						<em>Add to Cart</em>
						<svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
							<path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
						</svg>
					</button>
				</div> <!-- .cd-customization -->

				<button class="cd-customization-trigger">Customize</button>
			</div> <!-- .cd-single-item -->

			<div class="cd-item-info">
				<b><a href="#0">Product5</a></b>
				<em>$5</em>
			</div> <!-- cd-item-info -->
		</li>

		<li>
			<div class="cd-single-item">
				<a href="#0">
					<ul class="cd-slider-wrapper">
						<li class="selected"><img src="img/thumb-1.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-2.jpg" alt="Preview image"></li>
						<li><img src="img/thumb-3.jpg" alt="Preview image"></li>
					</ul>
				</a>

				<div class="cd-customization">
					<div class="color" data-type="select">
						<ul>
							<li class="color-1 active">color-1</li>
							<li class="color-2">color-2</li>
							<li class="color-3">color-3</li>
						</ul>
					</div>
					
					<div class="size" data-type="select">
						<ul>
							<li class="small active">Small</li>
							<li class="medium">Medium</li>
							<li class="large">Large</li>
						</ul>
					</div>

					<button class="add-to-cart"  onclick="myFunction('Product6')">
						<em>Add to Cart</em>
						<svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
							<path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
						</svg>
					</button>
				</div> <!-- .cd-customization -->

				<button class="cd-customization-trigger">Customize</button>
			</div> <!-- .cd-single-item -->

			<div class="cd-item-info">
				<b><a href="#0">Product6</a></b>
				<em>$6</em>
			</div> <!-- cd-item-info -->
		</li>
	</ul> <!-- cd-gallery -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->

<!--Navigation scripts  -->
<script type="text/javascript">
$(function(){
  $('a[href="#"]').on('click', function(e){
    e.preventDefault();
  });
  
  $('#menu > li').on('mouseover', function(e){
    $(this).find("ul:first").show();
    $(this).find('> a').addClass('active');
  }).on('mouseout', function(e){
    $(this).find("ul:first").hide();
    $(this).find('> a').removeClass('active');
  });
  
  $('#menu li li').on('mouseover',function(e){
    if($(this).has('ul').length) {
      $(this).parent().addClass('expanded');
    }
    $('ul:first',this).parent().find('> a').addClass('active');
    $('ul:first',this).show();
  }).on('mouseout',function(e){
    $(this).parent().removeClass('expanded');
    $('ul:first',this).parent().find('> a').removeClass('active');
    $('ul:first', this).hide();
  });
});
</script>

</body>
</html>