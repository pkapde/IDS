<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Reciprocal 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140119

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Varela+Round" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IIDS</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Lobster+Two' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Rokkitt' rel='stylesheet' type='text/css'>

<!---menu--->
<link rel="stylesheet" href="css/superfish.css" media="screen">
<script src="js/jquery-1.9.0.min.js"></script>
<script src="js/hoverIntent.js"></script>
<script src="js/superfish.js"></script>
<!---menu--->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.datech"%>
 
<%@page import="com.Allcom"%>
<%if(session.getAttribute("username")!=null){} %>

<link rel="stylesheet" href="css/superfish.css" media="screen">
<script src="js/jquery-1.9.0.min.js"></script>
<script src="js/hoverIntent.js"></script>
<script src="js/superfish.js"></script>
<script>

		// initialise plugins
		jQuery(function(){
			jQuery('#example').superfish({
				//useClick: true
			});
		});

		</script>
 <%
if(request.getParameter("success")!=null)
{
	out.println("<script> alert('Login Succesfully')</script>");
}
%> 
 <script type="text/javascript">
 function start1()
 {
	 document.getElementById("start2").style.display="block";
	 var a=window.open("start1.jsp");
	 document.getElementById("start1").style.display="none";
	 Thread.sleep(4000); 
 }
 </script>
 
 
 <script type="text/javascript">
 function start2()
 {
	 document.getElementById("start3").style.display="block";
	 var b=window.open("start2.jsp");;
	 document.getElementById("start2").style.display="none";
	// b.close();
  }
 
 </script>
 
</head>
<body>

<%
 if(request.getParameter("err")!=null)
 {
	 out.println("<script>alert('OTP Does Not Match')</script>");
 }
 
 %>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header" class="container">
		<br><br></br></br>
			<div align="center"><h2><a href="#"><h1><font color ="white" size="40">IIDS</font></h1></a></h2></div>
			<div id="social">
				
			</div>
		</div>
		<div id="menu" class="container">
			<ul>
				<li class="current_page_item"><a href="index.jsp" accesskey="1" title="">Home</a></li>
				  
        <li> <a href="Logout">Logout </a> </li> 
			</ul>
		</div>
	</div>


<!---header-wrap--->
<div class="clear"></div>
<br></br>
<center>
 <div class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/iids.gif" height="400px" width="900px"alt="banner" /> </div>

</center>

 <div class="panel">
    <div class="title">
    <div align="center">
         <div class="title">
     <h1> Welcome <%=(String)session.getAttribute("username") %></h1> 
      <div class="panel" id="start1" > 
        
        <h1>You Will Receive OTP in few Seconds </h1>
        <input type="button" value="Proceed" class="button" onclick="start1()"/>
        </div>
        
        <div  id="start2" style="display: none">
         <h1>Click Proceed to Enter OTP </h1>
        <input type="button" value="Proceed" class="button" onclick="start2()" style="color: red"/>
        </div>
        
        </div></div></div></div>
        
        
       <div id="start3"  style="display: none">
 <form action="otpconfirm" method="post">	
       <div align="center">
      <h1>Enter OTP</h1>
      <br>
			<table cellspacing="5">
		 
			<tr>
		 <td><input type="text" name="otp" class="input_text" required placeholder="Enter One Time Password"/></td>
            </div> 
            <tr></tr><tr></tr>
            <div align="center">
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  font size="10px" value="Submit" class="button"/></td>
         </div>
      </tr>
            
            
  </table><br/>
  
   
  </form>
 
                            
      </div>
 
 
   
<div class="footer-wrap">
      </div>
</body>
</html>
