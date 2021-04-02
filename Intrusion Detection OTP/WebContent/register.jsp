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


<script>
		// initialise plugins
		jQuery(function(){
			jQuery('#example').superfish({
				//useClick: true
			});
		});

		function validate(){  
			
			if(document.getElementById("fname").value=="")
		   	{
		   		alert("First name should not be blank");
		   		document.getElementById("fname").focus();
		   		return false;
		   	}
			else
				{
			       
			    	var fname = document.myform.fname; 
			    var letters = /^[A-Za-z]+$/;  
			    if(!fname.value.match(letters))   
			    {  
			    alert('First name must have alphabet characters only');  
			    document.getElementById("fname").focus();  
			    return false;  
			    }  
			      
				}
			if(document.getElementById("lname").value=="")
		   	{
		   		alert("Last name should not be blank");
		   		document.getElementById("lname").focus();
		   		return false;
		   	}
			else
			{
		       
		    	var lname = document.myform.lname.value; 
		    var letters = /^[A-Za-z]+$/;  
		    if(!lname.match(letters))   
		    {  
		    alert('Last name must have alphabet characters only');  
		    document.getElementById("lname").focus();  
		    return false;  
		    }  
		      
			}
			if(document.getElementById("dob").value=="")
		   	{
		   		alert("Date of Birth should not be blank");
		   		document.getElementById("dob").focus();
		   		return false;
		   	}
			if(document.getElementById("gender").value=="")
		   	{
		   		alert("Gender should not be blank");
		   		document.getElementById("gender").focus();
		   		return false;
		   	}
			if(document.getElementById("email").value=="")
		   	{
		   		alert("Email should not be blank");
		   		document.getElementById("email").focus();
		   		return false;
		   	}
			
			if(document.getElementById("mobile").value=="")
		   	{
		   		alert("Mobile Number should not be blank");
		   		document.getElementById("mobile").focus();
		   		return false;
		   		
		   	}
			
			if(document.getElementById("username").value=="")
		   	{
		   		alert("username should not be blank");
		   		document.getElementById("username").focus();
		   		return false;
		   	}
			if(document.getElementById("password").value=="")
		   	{
		   		alert("password should not be blank");
		   		document.getElementById("password").focus();
		   		return false;
		   	}
			 
		}  
		
		
		</script>

<script type="text/javascript">
function loadXMLDoc()
{
	
var xmlhttp;
var k=document.getElementById("username").value;
var urls="pass.jsp?ver="+k;
 
if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4)
    {
        //document.getElementById("err").style.color="red";
        var ss=xmlhttp.responseText;
        if(ss.match("Name already taken"))
        	{
        	document.getElementById("mySubmit").disabled = true;
        	document.getElementById("err").innerHTML=xmlhttp.responseText;
        	}
        else{
        	document.getElementById("mySubmit").disabled = false;
        document.getElementById("err").innerHTML=xmlhttp.responseText;
        }
    }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
</script>


</head>
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
				
       
				   
        <li> <a href="#">Contact Us </a> </li> 
			</ul>
		</div>
	</div>

<!---header-wrap--->
<div class="clear"></div>



 <center>
 <br><br></br></br>
 <div id="page" class="container">
		<div><a href="#" class="image image-full"><img src="images/iids.gif" width="100px" height="400px" alt="" /></a></div>
		
	
    <div class="title">
    <form action="userregisterservlet" method="post" id="myform" name="myform" onsubmit="return validate()"/>

      <h1><font color="black">User Registration</font></h1>
    </div>
    <div class="enquiry-form">
      <form>
        <label>
      <input style="width:400px" type="text"   name="fname" id="fname" placeholder ="First Name" class="input_text"/>
        </label>
        
        <label>   
      <input style="width:400px" type="text"  name="lname" id="lname" placeholder ="Last Name" class="input_text"/>
         </label>
         
         
         <label>   
         <input style="width:400px" type="date"  name="dob" id="dob" placeholder ="Date Of Birth" onfocus="showCalendarControl(this);" class="input_text"/>
         </label>
        
        <label>
       <font color="black">Gender &nbsp;&nbsp;&nbsp;&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female</font>&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></h1>
		</label>
		
		
		 <label>   
         <input style="width:400px" type="email"  name="email" id="email" placeholder ="Email ID" class="input_text"/>
         </label>
         
         <label>   
         <input style="width:400px" type="text"  name="mobile" id="mobile" pattern="[789][0-9]{9}" maxlength="10" title=" Only Number allowed Start with 7 or 8 or 9" placeholder ="Mobile Number" class="input_text"/>
         <span id="mobile1" ></span>
         </label>
         
         <label>   
         <input style="width:400px" type="text"  name="username" id="username" placeholder ="Username" class="input_text"/>
         <span id="err"></span>
         </label>
		
      	<label>   
         <input style="width:400px" type="password"  name="password" id="password" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})" maxlength="8" placeholder ="Password" class="input_text"/>
         <span id="err"></span>
         </label>
		
      
        <input type="submit" name="submit" class="button" value="Submit" id="mySubmit" />
        <input type="reset" value="Reset" class="button"/>
</form>

    </div>
    </div>
  </center>

<!---page-wrap-end--->
<div class="footer-wrap">
      </div>
</body>
</html>
