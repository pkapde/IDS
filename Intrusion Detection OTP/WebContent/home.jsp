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
<%@page import="com.datech"%>
 
<%@page import="com.Allcom"%>
<%if(session.getAttribute("username")!=null)
{
	
}
	 %>

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
  <div class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/iids.gif" height="400px" width="1000px"alt="banner" /> </div>


</center>
 <div class="panel">
    <div class="title">
    <div align="center">
         <div class="title">
     <h1> IIDPS System Started Successfully</h1> 
      
<form action="searchresult.jsp" method="post">	
       
    
			<table cellspacing="5">
		 
			<tr>
			<center>
		 <td><input type="text" name="websearch" class="input_text" required placeholder="Search Here"/></td>
           <br><tr><tr></tr></tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Search" class="button"/></td>
           </center>
      </tr>
            
            
  </table><br/>
  
   
  </form>  
                  
      </div></div>
 </div></div>
 
   
<div class="footer-wrap">
      </div>
</body>
</html>
