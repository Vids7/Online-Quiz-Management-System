<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
  HttpSession session1 = request.getSession();
    String email = null; 
    email = (String)session1.getAttribute("email");
     String category = (String)session1.getAttribute("category");

    if(email==null)
    {
        out.println("<script>alert('Login First')</script>");
        out.println("<script>window.location.href='login.jsp'</script>");
    }
    
   else if(category.equals("student"))
    {
        out.println("<script>alert('Students can not create quiz!')</script>");
        out.println("<script>window.location.href='profile.jsp'</script>");
    }
    else{


%>

<html>
<head>
<title>Choose Subject</title>

<link href="css1/style.css" rel="stylesheet" type="text/css" media="all"/>

     <!--  FOR HEADER AND FOOTER  -->


	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap1.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>



<!--  FOR HEADER AND FOOTER  -->

<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Reset Password Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!--google fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>

<style type="text/css">	
.form-style-3{
	max-width: 450px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-3 label{
	display:block;
	margin-bottom: 10px;
}
.form-style-3 label > span{
	float: left;
	width: 100px;
	color: #F072A9;
	font-weight: bold;
	font-size: 13px;
	text-shadow: 1px 1px 1px #fff;
}
.form-style-3 fieldset{
	border-radius: 10px;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	margin: 0px 0px 10px 0px;
	border: 1px solid #FFD2D2;
	padding: 20px;
	background: #FFF4F4;
	box-shadow: inset 0px 0px 15px #FFE5E5;
	-moz-box-shadow: inset 0px 0px 15px #FFE5E5;
	-webkit-box-shadow: inset 0px 0px 15px #FFE5E5;
}

.form-style-3 select{
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border: 1px solid #FFC2DC;
	outline: none;
	color: #F072A9;
	padding: 5px 8px 5px 8px;
	box-shadow: inset 1px 1px 4px #FFD5E7;
	-moz-box-shadow: inset 1px 1px 4px #FFD5E7;
	-webkit-box-shadow: inset 1px 1px 4px #FFD5E7;
	background: #FFEFF6;
	width:50%;
}
.form-style-3  input[type=submit],
.form-style-3  input[type=button]{
	background: #EB3B88;
	border: 1px solid #C94A81;
	padding: 5px 15px 5px 15px;
	color: #FFCBE2;
	box-shadow: inset -1px -1px 3px #FF62A7;
	-moz-box-shadow: inset -1px -1px 3px #FF62A7;
	-webkit-box-shadow: inset -1px -1px 3px #FF62A7;
	border-radius: 3px;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;	
	font-weight: bold;
}
.required{
	color:red;
	font-weight:normal;
}

</style>
</head>

<body style="background-color: #9a7be8;">
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
                    <a href="logout.jsp" class="btn btn-primary" style="float: right; margin-top: 10px;">Logout</a>
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
    
<div class="elelment" style="margin-bottom: 200px !important; margin-top: 300px;">
<div class="element-main">
		<h1 style="margin-bottom: 30px !important; color: black;">Select Subject</h1>
		
		<div class="form-style-3">

			<%
			         Connection con=null;
                     Statement st=null;                    
                     ResultSet rs = null;

                      try{
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3307/oq","root","76625362");
                  }
                  catch(ClassNotFoundException e)
                  {
                  	out.println(e);
                  }
                  catch(SQLException e1)
                  {
                  	out.println(e1);
                  }
                  
                  try{
                  st = con.createStatement();
                  rs = st.executeQuery("select subject from subjects");     

			%>

<form name="form1" action="select_topic.jsp">
	<fieldset>
<label for="subject"><span>Subject</span><select name="subject" class="select-field" required="">
	<% while(rs.next())
           {
           	%>
	<option>
		<%= rs.getString(1)       %>        
	</option>
	<%
           }
       }
        catch(SQLException e3)
     {
        out.println(e3);
       }
       catch(Exception e4)
       {
           out.println(e4);
       }
		%>
</select></label><br>

<label><span> </span><input type="submit" value="Next" /></label>
</fieldset>
</form>
</div>
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
</body>
</html>
<%
}
%>