<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home page</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,600,700" rel="stylesheet" />
		<script src="js/jquery.min.js"></script>
		<script src="js/config.js"></script>
		<script src="js/skel.min.js"></script>
		
		<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		<style>
			#pass
			
	{
	 display: block;
    height: 45px;
    margin-bottom: 10px;
    text-align: center;
    line-height: 20px;
    width: 100px;
    margin: 20px;
    font-size:20px;

    color: #FFF;
    text-align: center;
    border: solid #427AA8 1px;
    border-radius: 5px;
    text-decoration: none;

    /* Gradient */
    background: #427AA8;
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIxJSIgc3RvcC1jb2xvcj0iIzU5YTNlMCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM0MjdhYTgiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
    background: -moz-linear-gradient(top,  #59A3E0 1%, #427AA8 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(1%,#59A3E0), color-stop(100%,#427AA8));
    background: -webkit-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: -o-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: -ms-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: linear-gradient(to bottom,  #59A3E0 1%,#427AA8 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#59A3E0', endColorstr='#427AA8',GradientType=0 );

    text-shadow: 1px 1px 0 rgba(0,0,0,0.25);
    box-shadow: 0 1px 0 rgba(255,255,255, 0.3), inset 0 1px 0 rgba(255,255,255, 0.3);
}

.button:hover {
    background: #59A3E0;
    text-decoration: none;
    filter: none;
}
			
		</style>
			
</head>
<body onload="noBack();" >
<!-- Nav -->
			<nav id="nav">
				<ul class="container">
					<li><a href="index.jsp">Home</a></li>
					
					<li><a href="About.jsp">About</a></li>
					<li><a href="Contact.jsp">Contact</a></li>
				</ul>
			</nav>

		<!-- Home -->
			<div class="wrapper wrapper-style1 wrapper-first">
				<article class="container" id="top">
					<div class="row">
						
						<div class="8u">
						<table border="0" align="center"><tr>
							<td><td></td><td></td><img src="aircel_logo.jpg"  style="margin-left:100px;width:304px;height:228px; border-radius:50%;"></td></tr>
							<td><p>Welcome to <strong>Visitors Management System</strong></p></td></tr></table>
							
						</div>
						<div class="4u">
							<br/>
							<br/>
							<br/>
							<form action="userLogin.jsp">
							<table border="1px" width="350px" height="300px">
								<tr><td><b>User Name&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="uname" /></b></td> </tr>
								<tr><td><b>Password&nbsp;&nbsp;&nbsp;</td><td><input type="password" name="pass" /></b></td> </tr>
								<tr><td></td><td><b><input type="submit" id="pass" name="signin" value="Login"/></b></td> </tr>
							</table>
							</form>
						</div>
					</div>
				</article>
			</div>

		
		<!-- Portfolio -->
			<div class="wrapper wrapper-style3">
				<article id="about">
					<header>
						<h2>About VMS</h2>
						<span>VMS is a web-based application that can be easily accessed from any system connected via
						network using a standard web-browser. <br>
						The software is basically developed for tracking and
						maintaining the visiting details of visitors, vendors as well as office offrole-employees
						easily and accurately. 
					</span>
					</header>
						<span>VMS is powered by HTML, CSS, JSP and ORACLE .</span>
					<footer>
						
						<a href="#contact" class="button button-big">Contact</a>
					</footer>
				</article>
			</div>

		<!-- Contact -->
			<div class="wrapper wrapper-style4">
				<article id="contact" class="container small">
					<header>
						<h2>Contact</h2>
						<span>Your feedback is valuable for us...</span>
					</header>
					<div>
						<div class="row">
							<div class="12u">
								<form method="post" action="#">
									<div>
										<div class="row half">
											<div class="6u">
												<input type="text" name="name" id="name" placeholder="Name" />
											</div>
											<div class="6u">
												<input type="text" name="email" id="email" placeholder="Email" />
											</div>
										</div>
										<div class="row half">
											<div class="12u">
												<input type="text" name="subject" id="subject" placeholder="Subject" />
											</div>
										</div>
										<div class="row half">
											<div class="12u">
												<textarea name="message" id="message" placeholder="Message"></textarea>
											</div>
										</div>
										<div class="row">
											<div class="12u">
												<a href="#" class="button form-button-submit">Send Message</a>
												<a href="#" class="button button-alt form-button-reset">Clear Form</a>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					<hr />
					</div>
					<footer>
						<div id="apis_footer">
    
        <a href="#"></a> 
    
    </div> <!-- end of apis_footer -->
					</footer>
				</article>
			</div>


</body>
</html>