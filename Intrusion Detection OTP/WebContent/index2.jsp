<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
if(request.getParameter("fail")!=null)
{
	out.println("<script> alert('Incorrect Login Details')</script>");
}

%>

</head>
<body>
<div class="header-wrap">
  <div class="logo">
    <h1>IIDS </h1>
  </div>
 
  <div class="menu"> <img src="images/menu-left.png" alt="image"/>
    	<ul class="sf-menu" id="example">
        <li><a href="index.jsp">Home</a></li>
         <li><a href="register.jsp">Register</a></li>
        <li> <a href="adminlogin.jsp">Admin </a> </li>   
        <li> <a href="#">Contact Us </a> </li>      
      </ul>
    <img src="images/menu-right.png" alt="image"/> </div>
</div>


<!---header-wrap--->
<div class="clear"></div>
<div class="banner-wrap">
  <div class="banner">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/show.gif" height="400px" width="900px"alt="banner" /> </div>
</div>


  <div class="enquiry-wrap">
    <div class="title">
    <form action="login" method="post"/>	
      <h1>User Login</h1>
    </div>
    <div class="enquiry-form">
      <form>
        <label>
        <input type="text" class="input_text" name="username" id="username" placeholder ="Enter Username"/>
        </label>
        <label>
        <input type="password" class="input_text" name="password" id="password" placeholder ="Enter Password"/>
        </label>
        <input type="submit" class="button" value="Submit" />
        <a href="register.jsp"><input type="button" class="button" name ="Register" value="Register" /></a>   
       </form>

    </div>
  </div>

<!---page-wrap-end--->
<div class="footer-wrap">
      </div>
</body>
</html>
