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
<%if(session.getAttribute("username")!=null)
{
	
}
	 %>
	  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.util.*"%>
     <%@page import="com.*"%>
    <%@page import="java.sql.*"%>
    <%@ page  import=" org.jsoup.nodes.Document" %>
  <%@ page  import=" org.jsoup.nodes.Element" %>
  <%@ page  import=" org.jsoup.select.Elements" %>
   <%@ page  import="org.jsoup.Jsoup" %>
   <%@ page  import="java.util.*" %>

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
	
 }
 
 %>
 
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
				
				
				<li><a href="adminlogin.jsp" accesskey="2" title="">Admin</a></li>
				
				
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
			</ul>
		</div>
	</div>

<!---header-wrap--->
<div class="clear"></div>
<br></br>
<div class="">
<center>
  <div class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/iids.gif" height="400px" width="900px"alt="banner" /> </div>
</div>
</center>

 <div class="panel">
    <div class="title">
    <div align="center">
         <div class="title">
     <h1>Web Search Result</h1> 
      <br></br>
<%
/* String searchquery=request.getParameter("searchquery"); */

String searchquery=session.getAttribute("websearch").toString();
SendData s=new SendData();
s.send("web");
/* SendData s=new SendData();
s.send() */
 
searchquery = searchquery.replaceAll(" ", "+").toLowerCase();

  String GOOGLE_SEARCH_URL = "https://www.google.com/search";
  String searchTerm=searchquery;
int num=20;
 
String searchURL = GOOGLE_SEARCH_URL + "?q="+searchTerm+"&num="+num;
//without proper User-Agent, we will get 403 error
Document doc = Jsoup.connect(searchURL).userAgent("Mozilla/5.0").get();
 
//below will print HTML data, save it to a file and open in browser to compare
// System.out.println(doc.html());
 
//If google search results HTML change the <h3 class="r" to <h3 class="r1"
//we need to change below accordingly
Elements results = doc.select("h3.r > a");

  for (Element result : results)
  {
    String linkHref = result.attr("href");
    String linkText = result.text();
    
   // String l=linkHref.substring(6, linkHref.indexOf("&"));
String k= linkHref.substring(7, linkHref.indexOf("&")); 
		
		
		
	    
    out.println("<html>");
	out.println("<body>");
	out.println("<center>");	
	String h="<a href='"+k+"'</a>";
	
    out.println(h+linkText);
	 
	out.println("<center>");
	out.println("</body>");
	out.println("</html>");  
    out.println("<br>");
      
    %>
     
 <%   } 
  %>
   
</div></div></div>
</div>

<div class="footer-wrap">
      </div>
</body>
</html>
