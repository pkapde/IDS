<%@page import="com.util.DbConnection"%>
<%@page import="java.net.InetAddress"%>
<%@ page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashSet"%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
  

<!DOCTYPE html>
<html lang="en">
<head>
<title>IDS</title>

<meta charset="utf-8">

<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name = "format-detection" content = "telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="css/camera.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/camera.js"></script>
<script src="js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/highcharts.js"></script>
<script src="js/Chart.js"></script>

<script>
    $(document).ready(function(){
        jQuery('.camera_wrap').camera();
    });
</script>
<script src="js/jquery.mobile.customized.min.js"></script>
   
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
          <script type="text/javascript" src="highcharts.js"></script>
</head>
<body>
<div class="global">
<!--header-->
<header>
    <div>
    <div class="container">
        <div class="row">
            <article class="span12">
                <div class="navbar navbar_ clearfix">
                    <div class="navbar-inner">      
                        <div class="clearfix">
                            <div class="nav-collapse nav-collapse_">
                                <ul class="nav sf-menu clearfix">
                                   <li><a href="adminhome.jsp" class="selected">Home</a></li>
					<li><a href="Load">Load</a></li>
					<li><a href="records.jsp">Records</a></li>
					<li><a href="Instance.jsp">Instance Selection</a></li>
					<li><a href="Feature">Feature Selection</a></li>
					<li><a href="Outlier.jsp">Outlier</a></li>
					<li><a href="AdminLogin.jsp">Logout</a></li>
					               </ul>
                            </div>
                        </div>
                    </div>
                </div>
              	<table align="center">
				<tr>
				<td><h2>Intrusion Detection by <a href="Gen">Genetic Algorithm</a></h2></td>
				
				</tr><tr>
				<td><h2>Graphical <a href="graph.jsp"> Analysis</a></h2></td>

				 </tr>
            </table>
            
                           
            </article>
        </div>
    </div>
    </div>
</header>


			<%

	 Connection con = DbConnection.getConnection();
//ArrayList arr1=new ArrayList();
ArrayList arr2=new ArrayList();


HashSet<String> arr1 = new HashSet<String>();




// HashMap<String,String> n=new  HashMap<String, String>();
Statement st;
ResultSet rs;
double send = 0;

Statement st0;
ResultSet rs0;
double dropped = 0;

Statement st1;
ResultSet rs1;
double received = 0;

double f1 =0.0,f2=0.0,f3=0.0;
String id = request.getParameter("id");

/* String sql0="SELECT * FROM network`";
st0=con.createStatement();
rs0=st0.executeQuery(sql0);
while(rs0.next())
{       
send =  rs0.getDouble("f1");
f1=f1+send;
dropped =  rs0.getDouble("f2");
f2=f2+dropped;
received =  rs0.getDouble("f3");
f3=f3+received;
}
 */
String  arr11=arr1.toString().replace("[", "").replace("]", "").replace(", ", ",");

System.out.println(arr11);

String  arr22=arr2.toString().replace("[", "").replace("]", "").replace(", ", ",");

System.out.println(arr22);

System.out.println("kiran");



%>
<div align="center">
<br><br>
<div class="entry" style="height: auto">

											<canvas id="canvas" height="450" width="800px"></canvas>
											<script>

         		var barChartData = {
         				labels : ["Send","Dropped","Received"],
         				datasets : [
         					{
         						fillColor : "rgba(0,0,225,0.4)",
         						strokeColor : "rgba(220,220,220,1)",
         						data : [<%= 3500%>,<%= 111%>,<%= 1420%>]
         					}
         				]
         				
         			}

         		var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Bar(barChartData);
         	        //var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(barChartData);
         		
	</script>
										</div>
</div>
			<div class="clear"></div>
		</div>
	
	<!-- Nav end -->
	


	<a href="checkreport.jsp"><b><h3>Back</h3></b></a>
			<a href="throughput.jsp?id=<%=id%>"><h3><b>View Overall TroughPut Analysis</h3></b></a>
		    


<!--content-->
<section class="container padBot">
    <div class="row">
        <article class="span12 moreBox">
        <div class="fullColumn main">
	
<div style="width: 308px; margin-left: auto; margin-right: auto">
				<%
             String destination=request.getParameter("destination");
				String sourceip="192.168.1.4";
			%>
 
       

<!-- 				</fieldset> -->
			</div>
			
		</div>
    </article> 
    </div>   
    </section>
    		</div>
</body>
</html>
