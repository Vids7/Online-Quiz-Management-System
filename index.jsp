<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
  
  HttpSession session1 = request.getSession();
    String email = (String)session1.getAttribute("email"); 
  
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Online Quizzes</title>
	<meta charset="UTF-8">
	<meta name="description" content="WebUni Education Template">
	<meta name="keywords" content="webuni, education, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>

	<style type="text/css">
		.sb-widget-item ul li a:hover {
	color: black; text-shadow: grey 1px 1px 1px;
}
.trends{
	background-color: green;
	padding: 5px 5px 3px 5px;
	box-sizing: border-box;
	text-align: center;
	margin-bottom: 5px;
	}
	</style>

 
<script type="text/javascript" src="js/currency-autocomplete2.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.min2.js"></script>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<a href="index.jsp"><img src="img/logo.JPG" alt=""></a>
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<% if(email==null) {  %><a href="login.jsp" class="site-btn header-btn">Login</a> <%  }else{ %>
					<a href="logout.jsp" class="header-btn btn btn-primary">Logout</a><% } %>

					<nav class="main-menu">
						<ul>
							<li><a href="index.jsp">Home</a></li>							
							<li><a href="courses.jsp">Courses</a></li>
							<li><a href="contact.jsp">Contact</a></li>
							
							<li><a href="select_subject.jsp">Create Quiz</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
		<div class="container">
			<div class="hero-text text-white">
				<h2>Create Online Quizzes & Tests Easily</h2>
			</div>
			
		</div>
	</section>
	<!-- Hero section end -->

	<!-- search section -->
<!-- 	<section class="search-section ss-other-page" style="margin-top: -200px;">
		<div class="container">
			<div class="search-warp">
				<div class="section-title text-white">
					<h2><span>Search Quiz</span></h2>
				</div>
				<div class="row">
					<div class="col-lg-10 offset-lg-1" id="searchfield">
						
						<form class="course-search-form" action="search_quizzes.jsp" method="post">
							<select name="subject">
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>
								<option></option>

								
							</select>
							<input type="submit" class="site-btn btn-dark" name="submit" value="Search Quiz">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- search section end -->
<%
            Statement st = null; 
            ResultSet rs = null;
            Connection con = null;
                  

    try{
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection("jdbc:mysql://localhost:3307/oq","root","76625362");
      }
     
       catch(Exception e2)
       {
            out.println("<script>alert('Invalid Operation')</script>");
        out.println("<script>window.location.href='index.jsp'</script>");
       }

	     try{
	            st = con.createStatement();
	            rs = st.executeQuery("select name from quizinfo order by no_of_attempts desc");
%>					
                          



<!-- Page  -->
	<section class="blog-page spad pb-0 realated-courses" style="margin-bottom: 20px !important;">
		<div class="container">
			<div class="row">
			<div class="col-lg-3 col-md-5 col-sm-9 sidebar" style="box-shadow: green 2px 3px 5px; margin-left: -80px; height: auto; box-sizing: border-box;">
					<div class="sb-widget-item" >
					  <div class="trends"><h4 class="sb-w-title" style="color: white; margin-bottom: 10px;">Trending Quizes</h4></div> 
						<ul>
							<%
							   int count=1;
                               while(rs.next() && count<=10)
                          	{  
                          		count++;
							%>
							<li><a href="attempt_quiz.jsp?&quiz_name=<%= rs.getString(1)%>"><%  out.println(rs.getString(1)); %></a></li>
							<%
                              }
                         } 
			                catch(Exception e4)
			                    {
			                        out.println("<script>alert('Invalid Operation')</script>");
			                        out.println("<script>window.location.href='index.jsp'</script>");
			                    }
                           %>   
						</ul>
					</div>
				</div>
 
				<div class="col-lg-6">
	      
			
                 </div>
				<div class="col-lg-3 col-md-5 col-sm-9 sidebar" style="box-shadow: green -2px 0px 5px; height: 350px;">
					<div class="sb-widget-item">
						<h4 class="sb-w-title">Popular Courses</h4>
						<div class="tags">
							<a href="#">Artificial Intelligence</a>
							<a href="subjects.jsp?subject=Database Management System">Database</a>
							<a href="subjects.jsp?subject=Operating System">Operating System</a>
						<a href="subjects.jsp?subject=Java Programming">Java</a>
							<a href="subjects.jsp?subject=Python">Python</a>
							<a href="subjects.jsp?subject=Javascript">JavaScript</a>
							<a href="subjects.jsp?subject=HTML">HTML 5</a>
						</div>
					</div>
				</div>
		</div>
	</div>
	</section>
	<!-- Page end -->

	<!-- signup section -->
	<section class="signup-section spad">
		<div class="signup-bg set-bg" data-setbg="img/signup-bg.jpg"></div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<div class="signup-warp">
						<div class="section-title text-white text-left">
							<h2>Sign up to became a teacher</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.</p>
						</div>
						<!-- signup form -->
						<form class="signup-form">
							<a href="register.jsp" class="site-btn">Sign Up</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- signup section end -->


	<!-- banner section -->
	<section class="banner-section spad">
		<div class="container">
			<div class="section-title mb-0 pb-2">
				<h2>Join Our Community Now!</h2>
				<p style="font-size: 20px;">Everything you want is out there waiting for you to ask. Everything you want also wants you. But you have to take action to get it.</p>
			</div>
			<div class="text-center pt-5">
				<a href="register.jsp" class="site-btn">Register Now</a>
			</div>
		</div>
	</section>
	<!-- banner section end -->


	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>Contact Info</h4>
						<ul class="contact-list">
							<li>Rajasthan Technical University, Kota</li>
							<li>+91 7568654150</li>
							<li>onlinewebexam@gmail.com</li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Core Subjects</h4>
						<ul>
							<li><a href="">Database Management System</a></li>
							<li><a href="">Operating System</a></li>
							<li><a href="">Digital Logic</a></li>
							<li><a href="">Compiler Design</a></li>
							<li><a href="">Theory of Computation</a></li>
							<li><a href="">Computer Architecture</a></li>
							<li><a href="">Data Structure</a></li>
							<li><a href="">Computer Network</a></li>
							<li><a href="">Cryptography & Network Security</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Programming Quiz</h4>
						<ul>
							<li><a href="">C Programming</a></li>
							<li><a href="">C++ Programming</a></li>
							<li><a href="">Java Programming</a></li>
							<li><a href="">Python</a></li>
							<li><a href="">JavaScript</a></li>
							<li><a href="">HTML5</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Other Useful Links</h4>
						<ul>
							<li><a href="">Artificial Intelligence</a></li>
							<li><a href="">MySQL Database</a></li>
							<li><a href="">Machine Learning</a></li>
							<li><a href="">Node JS</a></li>
							<li><a href="">React JS</a></li>
						</ul>
					</div>
					<div class="widget-item" >
						<h4>Newsletter</h4>
						<form class="footer-newslatter">
							<input type="email" placeholder="E-mail">
							<button class="site-btn">Subscribe</button>							
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-warp">
				<ul class="footer-menu">
					<li><a href="#">Terms & Conditions</a></li>
					<li><a href="#">Register</a></li>
					<li><a href="#">Privacy</a></li>
				</ul>
				
			</div>
		</div>
	</footer> 
	<!-- footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap1.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>




	<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5cbb1b66c1fe2560f3ffbbd3/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</html>