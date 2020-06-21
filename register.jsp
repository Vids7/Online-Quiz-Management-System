<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>

<%
    
    HttpSession session1 = request.getSession();
    HttpSession session2 = request.getSession();
    String email = (String)session1.getAttribute("email");
    String category = (String)session2.getAttribute("category");

    if(email==null)
    	{

%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	 <link href="profile/css/style.css" rel="stylesheet">
<!--===============================================================================================-->

<!--  FOR HEADER -->
 <link href="img/favicon.ico" rel="shortcut icon"/>

<script>
       function check() 
       {
	var letters = /^[A-Za-z]+$/;
	  var digits = /^[0-9]+$/;
  if(document.form1.fname.value.match(letters))
  {    
  	if(document.form1.lname.value.match(letters))
  { 
                var x = document.forms['form1']['email'].value;
              var atpos = x.indexOf('@');
              var dotpos = x.lastIndexOf('.');
              if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) 
                 {
                      alert('Not a valid e-mail address');
                      return false;
                  }
               else{
          
               return true;
           
            else{
  	                  alert('contact number is not valid');
  	                  return false;
                }
                   }
               }
               else
               {
               	alert('Last Name is not valid');
               }

  }
  else
  {
  alert('First Name must have alphabets only'); 
  return false;
  }
}
        
    </script>
    <style type="text/css">
		.main-menu ul li a:hover {
	color: gray !important;
}


	</style>
	

</head>
<body >

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
	
	<div class="limiter" style="margin-top: 200px !important;">
		<div class="container-login100" >
		    <div class="wrap-login100" style="margin-top: 60px !important; box-shadow: green 2px 3px 15px;">
				<form class="login100-form validate-form" action="mailing.jsp" name="form1" onsubmit="return check();" ng-app="">
					<span class="login100-form-title p-b-26" style="text-shadow: green 2px 3px 5px; margin-bottom: 10px;">
					Register Here
					</span>					

					<div class="wrap-input100 validate-input" >
					<span style="font-weight: bold; text-align: center">First Name : </span>	<input class="input100" type="text" name="fname" required="" >
						<span class="focus-input100" ></span>
					</div>
					<div class="wrap-input100 validate-input">
						<span style="font-weight: bold; text-align: center">Last Name : </span>
						<input class="input100" type="text" name="lname" required="">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input">
						<span style="font-weight: bold; text-align: center">Email : </span>
						<input class="input100" type="email" name="email" required="" ng-model="text">
						<span ng-show="form1.email.$error.email">Not a valid e-mail address</span>
						<span class="focus-input100" ></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span style="font-weight: bold; text-align: center">Password : </span>
						<input class="input100" type="password" name="password" required="">
						<span class="focus-input100"></span>
					</div>

					<div class="form-group w3ls-opt">
					<label for="Phone" class="control-label" style="font-weight: bold;">Gender</label><br>

					<label class="w3layouts">
						<input type="radio" name="work" id="hire" value="male" checked>Male
					</label>
					<label class="w3layouts label2">
						<input type="radio" name="work" id="work" value="female">Female
					</label>
				</div>
					<div class="form-group w3ls-opt">
					<label for="Phone" class="control-label" style="font-weight: bold;">Select Category</label><br>

					<label class="w3layouts">
						<input type="radio" name="category" id="hire" value="faculty" checked>Faculty
					</label>
					<label class="w3layouts label2">
						<input type="radio" name="category" id="work" value="student">Student
					</label>
				</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
						<button class="login100-form-btn">
								Register
							</button>
						</div>
					</div>

					<div class="text-center p-t-115" style="margin-top: -70px;">
						<span class="txt1"  style="font-size: 20px !important;">
							Already have an account?
						</span>

						<a class="txt2" href="login.jsp"  style="font-size: 20px !important;">
							Login
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
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
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main2.js"></script>
	<script src="angular/angular.js"></script>
	<script src="angular/angular.min.js"></script>
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

</body>
</html>

<%
  }
  else{
  response.sendRedirect("profile.jsp");
}

%>