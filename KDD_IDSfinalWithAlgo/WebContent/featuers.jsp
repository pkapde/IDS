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
		mainmenuid : "tooplate_menu", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		//customtheme: ["#1c5a80", "#18374a"],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
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
					<li><a href="feature.jsp">Feature Selection</a></li>
					
					<li><a href="AdminLogin.jsp">Logout</a></li>

				</ul>
				<br style="clear: left" />
			</div>
			<!-- end of tooplate_menu -->
			<!-- END of slider -->
			<div id="tooplate_main">
				<div id="home_about">
					<h1>Intrusion Detection System</h1>


					<div
						style="overflow: scroll; height: 500px; width: 930px; overflow: auto">
						<table align="center" border="1" cellspacing="1" cellpadding="1"
							align="center">

							<tr>
								<td><font color="black">Sr. No</font></td>
								<td><font color="black">a</font></td>
								<td><font color="black">b</font></td>
								<td><font color="black">c</font></td>
								<td><font color="black">d</font></td>
								<td><font color="black">e</font></td>
								<td><font color="black">f</font></td>
<!-- 								<td><font color="black">g</font></td> -->
<!-- 								<td><font color="black">h</font></td> -->
<!-- 								<td><font color="black">i</font></td> -->
<!-- 								<td><font color="black">j</font></td> -->
<!-- 								<td><font color="black">k</font></td> -->
								<td><font color="black">l</font></td>
								<!-- <td><font color="black">m</font></td>
								<td><font color="black">n</font></td>
								<td><font color="black">o</font></td>
								<td><font color="black">p</font></td>
								<td><font color="black">q</font></td>
								<td><font color="black">r</font></td>
								<td><font color="black">s</font></td>
								<td><font color="black">t</font></td>
								<td><font color="black">u</font></td>
								<td><font color="black">v</font></td> -->
								<td><font color="black">w</font></td>
								<td><font color="black">x</font></td>
								<td><font color="black">y</font></td>
								<!-- <td><font color="black">z</font></td> -->
								<td><font color="black">aa</font></td>
								<td><font color="black">bb</font></td>
								<td><font color="black">cc</font></td>
								<td><font color="black">dd</font></td>
								<td><font color="black">ee</font></td>
								<td><font color="black">ff</font></td>
								<td><font color="black">gg</font></td>
								<td><font color="black">hh</font></td>
								<td><font color="black">ii</font></td>
								<td><font color="black">jj</font></td>
								<td><font color="black">kk</font></td>
								<td><font color="black">ll</font></td>
								<td><font color="black">mm</font></td>
								<td><font color="black">nn</font></td>
<!-- 								<td><font color="black">oo</font></td> -->
<!-- 								<td><font color="black">pp</font></td> -->
<!-- 								<td><font color="black">qq</font></td> -->

							</tr>
							<%
								Connection con = DbConnection.getConnection();
								PreparedStatement ps = con
										.prepareStatement("select * from features_selection");
								ResultSet rs = ps.executeQuery();
								int sr = 0;
								String a = "", b = "", c = "", d = "", e = "", f = "", g = "", h = "", i = "", j = "", k = "", l = "", m = "", n = "", o = "", p = "";
								String q = "", r = "", s = "", t = "", u = "", v = "", w = "", x = "", y = "", z = "", aa = "", ab = "", ac = "", ad = "", ae = "";
								String af = "", ag = "", ah = "", ai = "", aj = "", ak = "", al = "", am = "", an = "", ao = "", ap = "", aq = "", ar = "";
								while (rs.next()) {
									sr++;
							%>
							<tr>
								<td><%=sr%></td>
								<td><%=rs.getString("a")%></td>
								<td><%=rs.getString("b")%></td>
								<td><%=rs.getString("c")%></td>
								<td><%=rs.getString("d")%></td>
								<td><%=rs.getString("e")%></td>
								<td><%=rs.getString("f")%></td>
							<%-- 	<td><%=rs.getString("g")%></td>
								<td><%=rs.getString("h")%></td>
								<td><%=rs.getString("i")%></td>
								<td><%=rs.getString("j")%></td>
								<td><%=rs.getString("k")%></td> --%>
								<td><%=rs.getString("l")%></td>
							<%-- 	<td><%=rs.getString("m")%></td>
								<td><%=rs.getString("n")%></td>
								<td><%=rs.getString("o")%></td>
								<td><%=rs.getString("p")%></td>
								<td><%=rs.getString("q")%></td>
								<td><%=rs.getString("r")%></td>
								<td><%=rs.getString("s")%></td>
								<td><%=rs.getString("t")%></td>
								<td><%=rs.getString("u")%></td>
								<td><%=rs.getString("v")%></td> --%>
								<td><%=rs.getString("w")%></td>
								<td><%=rs.getString("x")%></td>
								<td><%=rs.getString("y")%></td>
<%-- 								<td><%=rs.getString("z")%></td> --%>
								<td><%=rs.getString("aa")%></td>
								<td><%=rs.getString("ab")%></td>
								<td><%=rs.getString("ac")%></td>
								<td><%=rs.getString("ad")%></td>
								<td><%=rs.getString("ae")%></td>
								<td><%=rs.getString("af")%></td>
								<td><%=rs.getString("ag")%></td>
								<td><%=rs.getString("ah")%></td>
								<td><%=rs.getString("ai")%></td>
								<td><%=rs.getString("aj")%></td>
								<td><%=rs.getString("ak")%></td>
								<td><%=rs.getString("al")%></td>
								<td><%=rs.getString("am")%></td>
								<td><%=rs.getString("an")%></td>
<%-- 								<td><%=rs.getString("ao")%></td> --%>
<%-- 								<td><%=rs.getString("ap")%></td> --%>
<%-- 								<td><%=rs.getString("aq")%></td> --%>



							</tr>
							<%
								}
							%>
						</table>


					</div>
					<br />



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

			$(window).bind('scrollstart', function() {
				$('#nav_up,#nav_down').stop().animate({
					'opacity' : '0.2'
				});
			});
			$(window).bind('scrollstop', function() {
				$('#nav_up,#nav_down').stop().animate({
					'opacity' : '1'
				});
			});

			$('#nav_up').click(function(e) {
				$('html, body').animate({
					scrollTop : '0px'
				}, 800);
			});
		});
	</script>

</body>
</html>