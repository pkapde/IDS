<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

<link rel="stylesheet" href="css/slimbox2.css" type="text/css"
	media="screen" />
<script type="text/JavaScript" src="js/slimbox2.js"></script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"
	media="screen" />
<script src="js/jquery.mobile.customized.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
          <script type="text/javascript" src="highcharts.js"></script>
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
				<td><h2>Intrusion Detection by <a href="Gen">Genetic Algorithm</a></h2></td>
				
				</tr><tr>
				<td><h2>Graphical <a href="graph.jsp"> Analysis</a></h2></td>

				 </tr>
            </table>

<br></br>
<table align="center" border="1" cellpadding="6" cellspacing="6">
<tr align="center">
<th>Attributes</th>
<td>Total Records</td>
<td>Malicious</td>
<td>DOS</td>
<td>Probe</td>
<td>UR2</td>
<td>R2L</td>
<td>Normal</td>

</tr>

<tr align="center">
<th>Count</th>
<td>3500</td>
<td>1497</td>
<td>698</td>
<td>131</td>
<td>1</td>
<td>99</td>
<td>1183</td>

</tr>
</table>            
            <br/>
											<canvas id="canvas" height="450" width="800px"></canvas>
											<script>
         		var barChartData = {
         				labels : ["Total","Malicious","DOS","Probe","UR2","R2L","Normal"],
         				datasets : [
         					{
         						fillColor : "rgba(0,0,225,0.4)",
         						strokeColor : "rgba(220,220,220,1)",
         						data : [<%= 3500%>,<%= 1497%>,<%= 698%>,<%= 131%>,<%= 1%>,<%=99%>,<%= 1183%>]
         					}
         				]
         				
         			}

         		var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Bar(barChartData);
         	        //var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(barChartData);
         		
	</script>

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