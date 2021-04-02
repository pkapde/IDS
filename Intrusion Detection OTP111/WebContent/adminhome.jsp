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
 
 if(request.getParameter("success")!=null)
 {
 	out.println("<script> alert('Login Succesfully')</script>");
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
   <%--  <form action="" method="post">	
       
     
			<table cellspacing="15">
			<tr><td><font size="5" color="black">User Name</font></td><td><font size="5" color="black">Give Restriction</font></td></tr>
		 
		 <% Connection con=DbConnection.getConnection();
		 	PreparedStatement ps=con.prepareStatement("select * from usermem_info");
		 	ResultSet rs=ps.executeQuery();
		 	while(rs.next())
		 	{%>  
		 			
		 		<tr   style="color: blue">
		        <td><%=rs.getString("username")%></td>
		         <td><a href="restriction.jsp?username=<%= rs.getString("username") %>"><font size="5" color="Red">Give Restriction</font></a></td>
				<%} %> 
			    
            </tr>
           </table><br/>
  
   
  </form>   --%>
  <form action="adhome" method="post">
    <br></br>	
     <font size="20"><center>Select User</center></font>
     <center>
<style>
table,th,td
{
   border:0px solid black;
margin-left:300px;
width:600px;
   }

</style>
</center>
      <table>
                
               
                    <tr>
                        <td align="center"></td>
                 <td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name="receiver" required
							class="required input_field">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<option value="" >----- Select User -----</option>
								<%
									//String username = (String) session.getAttribute("firstname");
									//System.out.println("username : " + username);
									Connection con = DbConnection.getConnection();
									String sql = "select * from usermem_info";
									PreparedStatement ps = con.prepareStatement(sql);
									ResultSet rs = ps.executeQuery();
									while (rs.next()) {
									String username=rs.getString("username");
									session.setAttribute("username",username);
								%>

								<option value="<%=username%>"><%=username%></option>
								<%
									String ss = rs.getString("username");
										System.out.println("re " + ss);
								%>

								<%
									}
								%>
						</select></td>
                        
                    </tr>
                   
                   <td></td>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    
                 
                   
               
            </table>
            <center><input type="submit" size="20%" value="Submit" /></center>
  </form>  
    </div>
    </center>
    </div>
     
<div class="footer-wrap">
      </div>
</body>
</html>
