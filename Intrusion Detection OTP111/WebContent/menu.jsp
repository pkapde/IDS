 <%
 if(session.getAttribute("username")!=null)
 {
	 %> <ul>
      <li><a class="active" href="index.jsp">Home</a></li>
      <li><a href="register.jsp">Register</a></li>
     <li><a href="Logout">Logout</a></li>
       
    </ul>
    
    	 <%
	 } else
		 {%>
		 
		 <ul>
      <li><a class="active" href="index.jsp">Home</a></li>
      <li><a href="adminlogin.jsp">Admin</a></li>
      <li><a href="register.jsp">Register</a></li>
       <!-- <li><a href="Logout">Logout</a></li> -->
        
    </ul>
		 
		 
		 
		 <%}%>