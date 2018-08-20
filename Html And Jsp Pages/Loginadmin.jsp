<html>
 <head>
  <title> Login ADMIN Jsp </title>
 <style type="text/css">
   nav ul li,
   nav ul,li,a
    {
      display:inline-block;
      color:green;
    }
    nav ul li a:link,
    nav ul li a:visited
     {
      text-decoration:none;
      padding:10px;
      transition:all;
     }
     nav ul li a:hover,
     nav ul li  a:active
      {
       background-color:#dc7fcb;
      }
 
 </style>
  </head>
   <body bgcolor="D03043">
    <nav style=" background-color:lightblue; "><ul>   
	    <li>  <a  href="About.html">ABOUT </a> </li>
	    <li>  <a href="Facility.html">FACILITIES </a> </li> 
	     <li> <a href="room.html">ROOMS </a> </li>
	   	 <li> <a href="rules.html">RULES </a></li> 
	   	  <li>  <a href="index.html">HOME</a></li></ul></nav>  <br/> 
  <center> <img  src="addstu.jpg" width="30%" height="100px"> </center>
  
  <a href="loginadmin.html">Logout </a>
				          	 
    <%@ page import="java.sql.*" %>
    <%
    
	String admin=request.getParameter("ID");
	String pass=request.getParameter("PASSWORD");
	Class.forName("oracle.jdbc.driver.OracleDriver");
		 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		 Statement s=con.createStatement();
		 ResultSet rs=s.executeQuery("select * from Admin where ID='"+admin+"'");

			  if(rs.next())
			  {
				  if(rs.getString(2).equals(pass))
				  {
					  out.println("<h1>welcome<h1>" +admin);
					  %>
					   <br/>
					   	    <a href="view.html">VIEW</a> <br/><br/>
					          <a href="AddHostler.html">ADD HOSTLER</a> <br/><br/>
		         			  <a href="DeleteHostler.html">DELETE HOSTLER </a> <br/><br/>
		         			  <a href="UpdateHostler.html">UPDATE HOSTLER</a> <br/><br/>
		         			   <a href="search.html">SEARCH HOSTLER </a> <br/><br/>
		         			    <a href="AddStaff.html">ADD STAFF </a> <br/><br/>
		         			     <a href="DeleteStaff.html">DELETE STAFF </a> <br/><br/>
		         			      <a href="UpdateStaff.html">UPDATE STAFF </a>	<br/><br/>			  
		         	            	<a href="searchStaff.html">SEARCH STAFF </a> 
		         	<% 		  
				  }
					    
				  else
				  {
					  out.println("invalid password try again");
				   
			      }
			   }	 
			  
			
			%>
			
			
    </body>
 </html>