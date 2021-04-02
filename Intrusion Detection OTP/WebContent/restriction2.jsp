<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IIDS</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Lobster+Two' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Rokkitt' rel='stylesheet' type='text/css'>

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
 if(request.getParameter("ok")!=null)
 {
	 out.println("<script>alert('Privileges Assign Successfull ')</script>");
 }
 
 %>
 
 <%
 if(request.getParameter("no")!=null)
 {
	 out.println("<script>alert('Privileges Not Assign Successfull ')</script>");
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
        <li> <a href="#"> </a> </li> 
    	<li> <a href="#"> </a> </li>
        <li><a href="index.jsp">Home</a></li>    
        <li> <a href="Logout">Logout </a> </li> 
        <li> <a href="#"> </a> </li>    
        <li> <a href="#"> </a> </li>      
      </ul>
    <img src="images/menu-right.png" alt="image"/> </div>
</div>


<!---header-wrap--->
<div class="clear"></div>
<div class="banner-wrap">
 <div class="banner">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/show.gif" height="400px" width="900px"alt="banner" /> </div>
</div>


 <div class="panel">
    <div class="title">
      <h2><font size="8">Welcome Administrator</font></h2>
    </div>
    <% String user=request.getParameter("username");
        	session.setAttribute("user", user);
        %>
   <form action="restriction" method="post">	
       
     
			<table cellspacing="15">
			<tr><td><font size="4" color="black">USB</font></td><td><font size="4" color="black">Date</font></td><td><font size="4" color="black">Web Search</font></td><td><font size="4" color="black">Directory</font></td></tr>
			
		  <tr>
		  <td><select name="usb" required >
		  <option value="">---Select---</option>
		  <option value="yes">Yes</option>
		  <option value="no">No</option>
		  </select></td>
		  
		  <td><select name="date" required >
		  <option value="">---Select---</option>
		  <option value="yes">Yes</option>
		  <option value="no">No</option>
		  </select></td>
		  
		  <td><select name="web" required >
		  <option value="">---Select---</option>
		  <option value="yes">Yes</option>
		  <option value="no">No</option>
		  </select></td>
		  
		  <td><select name="directory" required >
		  <option value="">---Select---</option>
		  <option value="yes">Yes</option>
		  <option value="no">No</option>
		  </select></td>
		  
	
		    </table>
  	    <div class="enquiry-form">
	<div class="banner">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/show.gif" height="400px" width="900px"alt="banner" /> </div>
	<input type="submit" class="button" value="Submit" />
       
       </div>
		  
   
  </form>  
 
 </div>  
     
<div class="footer-wrap">
      </div>
</body>
</html>
