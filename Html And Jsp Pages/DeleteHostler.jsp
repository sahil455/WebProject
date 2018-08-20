<html>
 <head>
  <title> DELETE HOSTLER Jsp </title>
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
   <body bgcolor="F79181">
     <nav style=" background-color:lightgray;"><ul>   
	    <li>  <a  href="About.html">ABOUT </a> </li>
	    <li>  <a href="Facility.html">FACILITIES </a> </li> 
	     <li> <a href="room.html">ROOMS </a> </li>
	   	 <li> <a href="rules.html">RULES </a></li> 
	   	  <li>  <a href="index.html">HOME</a></li></ul></nav>  
    <%@ page import="java.sql.*" %>
    <%
    try{ 
	      String user=request.getParameter("HID");
	      Class.forName("oracle.jdbc.driver.OracleDriver");
		  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		  Statement s=con.createStatement();
		  ResultSet rs=s.executeQuery("delete from Hostler where HID='"+user+"'");
		  out.println("<h1>Sucessfully deleted<h1>");
        }catch(Exception e){}
    
    %>


     <a href="loginadmin.html">Logout</a> <br/>
     <a href="DeleteHostler.html"> Back </a> <br/>
	 <a href="index.html"> WELCOME PAGE </a> <br/>
   </body>
</html>
