<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IIDS</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Lobster+Two' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Rokkitt' rel='stylesheet' type='text/css'>
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
	 out.println("<script>alert('OTP Does Not Match')</script>");
 }
 
 %>
 
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
    <div align="center">
         <div class="title">
     <h1>Web Search Result</h1> 
      <br></br>
 <%
/* String searchquery=request.getParameter("searchquery"); */

String searchquery=request.getParameter("websearch");

session.setAttribute("websearch", searchquery);
searchquery="https://www."+searchquery+".com";



String tempserch=searchquery.toLowerCase();
Connection con=DbConnection.getConnection();
PreparedStatement ps=con.prepareStatement("select sitename from blocksite where sitename=?");
ps.setString(1, tempserch);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
  response.sendRedirect("confirm.jsp");
}else
{
 
//String searchquery=session.getAttribute("searchquery").toString();


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
		//System.out.println(k);
		/*  
		String part[]=k.split("/");
		List<String> splitList = new ArrayList<String>(Arrays.asList(part));
		System.out.println(splitList);
		if(splitList.contains("www.facebook.com"))
		{
		System.out.println("Match Found");	
		splitList.clear();
		break;
		}
	  // System.out.println(splitList);
	    
		
		 */
		
		
	    
    out.println("<html>");
	out.println("<body>");
	out.println("<center>");	
	String h="<a href='"+k+"'</a>";
	
    out.println(h+linkText);
	//System.out.println(h+linkText);
	 
	out.println("<center>");
	out.println("</body>");
	out.println("</html>");  
    out.println("<br>");
      
    %>
    
   <!--  <a href="Text::" + linkText + ", URL::" + linkHref.substring(6, linkHref.indexOf("&"))"></a><br> -->
    
 <%   } } 
  %>
                            
      </div></div>
      </div></div>

<div class="footer-wrap">
      </div>
</body>
</html>
