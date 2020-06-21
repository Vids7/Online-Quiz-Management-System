<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>


<%
    String quiz_name = request.getParameter("quiz_name");

    HttpSession session1 = request.getSession();
    String email = (String)session1.getAttribute("email");

    if(email==null)
    {
        out.println("<script>alert('Login First')</script>");
        out.println("<script>window.location.href='login.jsp'</script>");
    }
    else{


         Statement st = null;
            ResultSet rs = null;
             Statement st1 = null;
            ResultSet rs1 = null;
            Connection con = null;
            int QID = 0;
            String emailOfFaculty = null;


    try{
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection("jdbc:mysql://localhost:3307/oq","root","76625362");
      }

       catch(Exception e2)
       {
            out.println("<script>alert('Invalid Operation')</script>");
        out.println("<script>window.location.href='login.jsp'</script>");
       }

       try{

              st = con.createStatement();
              rs = st.executeQuery("select qid, email from quizinfo where name = '"+quiz_name+"'");
              rs.next();
              QID = rs.getInt(1);
              emailOfFaculty = rs.getString(2);
              rs = st.executeQuery("select question, option1, option2, option3, option4, answer from quizques where qid = '"+QID+"'");
              int count = 0;

%>

<!DOCTYPE html>
<html>
   <head>
      <title>C Programming Language Output this code Quizzes 1</title>
    
          <link rel="stylesheet" type="text/css" href="css/quiz.css" />
          <link rel="stylesheet" href="quiz_list/css/bootstrap.min.css">
          <script src="table_in_profile/vendor/bootstrap/js/bootstrap.min.js"></script>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" type="text/css" href="css/fastlearning.css">
           
 
    <script src="http://www.Fastlearning.in/controller/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/fastlearning.js"></script>
    
     <script type="text/javascript">
  $(document).ready(function() {
    $('label').click(function() {
        $('label').removeClass('worngans');
        $(this).addClass('worngans');
    });
});


  </script>
   <style type="text/css">
    .head_block{
      height: auto;
       border-bottom: 2px black ridge; 
       text-shadow: lightgreen 2px 2px 3px;
       text-align: center;
       box-sizing: border-box;
       background-color: #d1edf2;
    }
     .head_block span{
     
       font-size: 22px;
     }
     label{
      font-weight: lighter;
     font: 15px arial, sans-serif;
     }
    
   </style>
    
   </head>
   <body style="padding: 0px; margin: 0px;  background-color: #d1edf2;">
    <div class="head_block row conatiner-fluid">
      <div class="col-sm-2 col-12" style="padding-top: 10px;">
          <a href="all_quizes.jsp" class="btn btn-primary fa fa-arrow-circle-left"> Back</a>
      </div>
      <div class="col-sm-5 col-12 personal_detail">       
        <span style="font-weight: bold;">Created By -</span><span><% out.println(emailOfFaculty); %></span>    
      </div>
      <div class="col-sm-5 col-12">
        <span style="font-weight: bold;">Time Left - </span><span id="time" ></span><br>
        <span style="font-weight: bold;"> Quiz Name -</span> <span><% out.println(quiz_name); %></span>
     </div>
    </div>


<div class="conatiner-fluid">
<div class="row"> 
 <div class="col-sm-3 col-3"> </div>

 <div class="scp-quizzes-main col-sm-6 col-6 " style="box-shadow: grey -1px -1px 3px;">

  <%

         while(rs.next())
      {
        count++;

  %>
<div class="scp-quizzes-data">
  <h3 style="font-weight: bold;">Question <% out.println(count); %>:-</h3><h4> <% out.println(rs.getString(1)); %></h4>
  
<br/>

    <%   if(rs.getString(6).equals("1")) 
    { %>
    <input type="radio" id="Fastlearning<%= count%>" >
       <label for="Fastlearning<%= count%>">1. <% out.println(rs.getString(2)); %></label><br/>
      <% }else{  %>
       <input type="radio" >
       <label >1. <% out.println(rs.getString(2)); %></label><br/>
      <%  } %> 

      <%  if(rs.getString(6).equals("2")) 
    { %>
    <input type="radio" id="Fastlearning<%= count%>" >
       <label for="Fastlearning<%= count%>">2. <% out.println(rs.getString(3)); %></label><br/>
      <% }else{  %>
       <input type="radio" >
       <label >2. <% out.println(rs.getString(3)); %></label><br/>
      <%  } %> 

      <%   if(rs.getString(6).equals("3")) 
    { %>
    <input type="radio" id="Fastlearning<%= count%>" >
       <label for="Fastlearning<%= count%>">3. <% out.println(rs.getString(4)); %></label><br/>
      <% }else{  %>
       <input type="radio" >
       <label >3. <% out.println(rs.getString(4)); %></label><br/>
      <%  } %> 

      <%   if(rs.getString(6).equals("4")) 
    { %>
    <input type="radio" id="Fastlearning<%= count%>" >
       <label for="Fastlearning<%= count%>">4. <% out.println(rs.getString(5)); %></label><br/>
      <% }else{  %>
       <input type="radio" >
       <label >4. <% out.println(rs.getString(5)); %></label><br/>
      <%  } %> 

   
 </div>


 <%

   }

 }
 catch(Exception e)
 {
     out.println("<script>alert('Invalid Operation')</script>");
     out.println("<script>window.location.href='login.jsp'</script>");
 }

 %>  
</div>
<div class="col-sm-3 col-3"> </div>
</div>
</div>
<script type="text/javascript">
  var a = 180;
        var t, b=0;
        var n;
        function f1()
        {
            b=a%60;
            n=Math.floor(a/60);
            document.getElementById('time').innerHTML="0"+n+" : "+b;
            if(a==0)
            {
                window.location.href="all_quizes.jsp"
            }
            a=a-1;

            t = setTimeout("f1()",1000)
        }
        f1();

</script>
</body>
</html>

<%
}
%>