<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  
  <meta name="author" content="Jake Rocheleau">
 
  <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
  <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/styleess.css" rel="stylesheet">

</head>

<body>

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
				<li><a href="Aboutus.jsp">About Us</a></li>
					
						
						
							
								
							
					
				<li><a href="contactUs.jsp">Contact Us</a>
					</li>
				<li><a href="Login.jsp"> <%
			String name = (String)request.getAttribute("name");
		
			if(name == null){
				%>Login/Signup<%
			}
			else{
					out.println(request.getAttribute("name")); }%>
				</a>

				</li>
				
			</ul>
		</div>
	</nav>

    <section class="form">
    	<h1>Contact Us</h1>
        
        <form name="input" action="index.jsp" method="post"/>
        	<input type="text" name="name" placeholder="Full Name"/>
            <input type="text" name="email" placeholder="Email"/>
            <textarea name="message" placeholder="Your message..."></textarea>
            <input type="submit" value="Send Message"/>
        </form>
        
    </section>
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
   <!-- <div id="bg"></div>-->
</body>
</html>
