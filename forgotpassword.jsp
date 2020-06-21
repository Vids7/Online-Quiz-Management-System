<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%

HttpSession session1 = request.getSession();
    String email = (String)session1.getAttribute("email");

    if(email==null)
    {
%>



<!DOCTYPE HTML>
<html>
<head>
<title>Reset Password </title>
<link href="css1/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Reset Password Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!--google fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	 <link href="profile/css/style.css" rel="stylesheet">

<script type="text/javascript">
	function f1()
	{
		 var x = document.forms['form1']['email'].value;
              var atpos = x.indexOf('@');
              var dotpos = x.lastIndexOf('.');
              if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) 
                 {
                      alert('Not a valid E-mail address');
                      return false;
                  }
                  else
                  {

                  	return true;
                  }
	}
</script>
</head>


<body style="background-color: white !important;">
	 <header class="header-section" style="background: url(img/page-top-bg.jpg); height: 200px !important">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="site-logo">
                    <a href="index.jsp">    <img src="img/logo.png" alt=""></a>
                    </div>
                    <div class="nav-switch">
                        <i class="fa fa-bars"></i>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                   
                    <nav class="main-menu">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>                           
                            <li><a href="courses.jsp">Courses</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                                                   
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
<!--element start here-->
<div class="elelment" style="margin-bottom: 200px !important; ">
	
	<div class="element-main" style="box-shadow: green 2px 3px 15px; margin-top: 220px !important;">
		<h1 style="margin-bottom: 30px !important; color: black; text-shadow: green 2px 3px 5px;">Forgot Password</h1>
		
		<form name="form1" onsubmit="return f1()" action="mailingotp.jsp">
			<input type="text" placeholder="Your e-mail address" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your e-mail address';}" required="">
			<div class="form-group w3ls-opt">
					<label for="Phone" class="control-label">Select Category</label><br>

					<label class="w3layouts">
						<input type="radio" name="category" id="hire" value="faculty" checked>Faculty
					</label>
					<label class="w3layouts label2">
						<input type="radio" name="category" id="work" value="student">Student
					</label>
				</div>
			<input type="submit" value="submit" onclick="f1();">
		</form>
	</div>
</div>
<footer class="footer-bottom" style="background-color: #d8214e !important;">
    <!-- Container Start -->
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-12">
          <!-- Copyright -->
          <div class="copyright">
            <p>Copyright © 2019. All Rights Reserved</p>
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <!-- Social Icons -->
          <ul class="social-media-icons text-right">
              <li><a class="fa fa-facebook" href=""></a></li>
              <li><a class="fa fa-twitter" href=""></a></li>
              <li><a class="fa fa-pinterest-p" href=""></a></li>
              <li><a class="fa fa-vimeo" href=""></a></li>
            </ul>
        </div>
      </div>
      <div class="footer-warp" >
                <ul class="footer-menu" >
                    <li><a href="#" style="color: lightblue;">Terms & Conditions</a></li>
                    <li><a href="#" style="color: lightblue;">Register</a></li>
                    <li><a href="#" style="color: lightblue;">Privacy</a></li>
                </ul>
            </div>
    </div>
    
    <!-- Container End -->
    <!-- To Top -->   
</footer>

<!--element end here-->
</body>

	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap1.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</html>

<%
}
else{
	 out.println("<script>window.location.href='profile.jsp'</script>");
}

%>