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
	out.println("<script> alert('Successfully Login')</script>");
}


if(request.getParameter("fail")!=null)
{
	out.println("<script> alert('Incorrect Login Details')</script>");
}

%>

</head>
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
				<li><a href="index.jsp">Home</a></li>    
        <li> <a href="#">Contact Us </a> </li> 
			</ul>
		</div>
	</div>


<!---header-wrap--->
<div class="clear"></div>
<div class="">
<br></br>
<center>
  <div class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/iids.gif" height="500px" width="1000px"alt="banner" /> </div>
</div>
</center>


  <div class="">
    <div class="title">
    <form action="adminlogin" method="post"/>	
       <center>
      <h1>Admin Login</h1>
    </div>
    
    <div class="">
      <form>
        <label>
      <center>  User Name: <input type="text" class="input_text" name="username" id="username" placeholder ="Enter Username"/>
        </center>
        </label>
        <br></br>
        <label>
        <center>
        Password: <input type="password" class="input_text" name="password" id="password" placeholder ="Enter Password"/>
       </center>
        </label>
       <center> <input type="submit" class="button" value="Submit" /></center>
        </form>
</center>
    </div>
  </div>

<!---page-wrap-end--->
<div class="footer-wrap">
      </div>
</body>
</html>
