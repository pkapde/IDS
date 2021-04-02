<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IDS</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2063 Wide Mode
http://www.tooplate.com/view/2063-wide-mode
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<script type="text/JavaScript" src="js/jquery-1.6.3.js"></script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "tooplate_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" href="css/slimbox2.css" type="text/css"
	media="screen" />
<script type="text/JavaScript" src="js/slimbox2.js"></script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />

</head>

<body>

	<div id="tooplate_wrapper">
		<div id="tooplate_header">
			<h1>
				<center>
					<a href="index.html"><font color="white">Intrusion
							Detection System</font></a>
				</center>
			</h1>
		</div>
		<!-- END of header -->
		<div id="tooplate_main_wrapper">
			<span class="tmw_frame tmw_framet"></span><span
				class="tmw_frame tmw_frameb"></span>
			<div id="tooplate_menu" class="ddsmoothmenu">
				<ul>
				<li><a href="adminhome.jsp" class="selected">Home</a></li>
					<li><a href="Load">Load</a></li>
					<li><a href="records.jsp">Records</a></li>
					<li><a href="Instance.jsp">Instance Selection</a></li>
					<li><a href="Feature">Feature Selection</a></li>
					<li><a href="Outlier.jsp">Outlier</a></li>
					<li><a href="AdminLogin.jsp">Logout</a></li>
				</ul>
				<br style="clear: left" />
			</div>
			<!-- end of tooplate_menu -->
			<!-- END of slider -->
			<div id="tooplate_main">
				<div id="home_about">
			<table align="center">
			<tr>
			<td><h3><a href="DOS.jsp">DOS</a></h3></td><td></td><td></td>
			<td><h3><a href="probe.jsp">Probe</a></h3></td><td></td><td></td>
			<td><h3><a href="u2r.jsp">U2R</a></h3></td><td></td><td></td>
			<td><h3><a href="r2l.jsp">R2L</a></h3></td><td></td><td></td>
			<td><h3><a href="normal.jsp">Normal</a></h3></td><td></td>
			</tr>
            </table>

  <div style="overflow: scroll; height: 500px; width: 930px; overflow: auto">
<table border="1" cellpadding="3" cellspacing="3">
<tr>
<td><h4>Sr. No</h4></td>
<td><h4>a</h4></td>
<td><h4>b</h4></td>
<td><h4>c</h4></td>
<td><h4>d</h4></td>
<td><h4>e</h4></td>
<td><h4>f</h4></td>
<td><h4>l&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>w&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>y&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>aa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ab&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ac&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ae&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>af&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ag&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ah&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ai&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>aj&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>al&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>an&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
<td><h4>ao&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>


</tr>			<% 
			Connection con = DbConnection.getConnection();
 			PreparedStatement ps = con.prepareStatement("select * from features_selection where ao = 'Neptune' or ao = 'Smurf' or ao = 'Pod' or ao = 'Teardrop' or ao = 'Land' or ao = 'Back' ");
			
 			ResultSet rs = ps.executeQuery();
 			int sr=0;
 			String a="",b="",c="",d="",e="",f="",g="",h="",i="",j="",k="",l="",m="",n="",o="",p="",q="",r="",s="",t="",u="",v="",w="",x="",y="",z="";
			String aa="",ab="",ac="",ad="",ae="",af="",ag="",ah="",ai="",aj="",ak="",al="",am="",an="",ao="",ap="",aq="";
 			while(rs.next()){
 				sr++;

%>
<tr>
<td><%=sr %></td><td><%=rs.getString("a") %></td>
<td><%=rs.getString("b") %></td><td><%=rs.getString("c") %></td><td><%=rs.getString("d") %></td><td><%=rs.getString("e") %></td>
<td><%=rs.getString("f") %></td><td><%=rs.getString("l") %></td><td><%=rs.getString("w") %></td>
<td><%=rs.getString("x") %></td><td><%=rs.getString("y") %></td><td><%=rs.getString("aa") %></td><td><%=rs.getString("ab") %></td>
<td><%=rs.getString("ac") %></td><td><%=rs.getString("ad") %></td><td><%=rs.getString("ad") %></td><td><%=rs.getString("af") %></td>
<td><%=rs.getString("ag") %></td><td><%=rs.getString("ah") %></td><td><%=rs.getString("ai") %></td>
<td><%=rs.getString("aj") %></td><td><%=rs.getString("ak") %></td><td><%=rs.getString("al") %></td>
<td><%=rs.getString("am") %></td><td><%=rs.getString("an") %></td>
<td><%=rs.getString("ao") %></td>
</tr>
<% 				
 				
 			}
 			System.out.println("DOS : "+sr);
			%>



</table>            
            </div>
            <br/>



				</div>
				
			</div>
		</div>
		<!-- END of main wrapper -->
	</div>
	<!-- END of tooplate_wrapper -->

	<div id="tooplate_footer_wrapper">
		<div id="tooplate_footer">
			<marquee>Intrusion Detection System</marquee>
					</div>
		<!-- END of tooplate_footer -->
	</div>
	<!-- END of tooplate_footer_wrapper -->

	<div id="tooplate_copyright_wrapper">
		<div id="tooplate_copyright">
			Copyright © 2048 Your Company Name | Design: <a
				href="http://www.tooplate.com">Tooplate</a>
		</div>
	</div>

	<script src="js/scroll-startstop.events.jquery.js"
		type="text/javascript"></script>
	<script type="text/javascript">
	$(function() {
		var $elem = $('#content');
		
		$('#nav_up').fadeIn('slow');
		
		$(window).bind('scrollstart', function(){
			$('#nav_up,#nav_down').stop().animate({'opacity':'0.2'});
		});
		$(window).bind('scrollstop', function(){
			$('#nav_up,#nav_down').stop().animate({'opacity':'1'});
		});
		
		$('#nav_up').click(
			function (e) {
				$('html, body').animate({scrollTop: '0px'}, 800);
			}
		);
	});
</script>

</body>
</html>