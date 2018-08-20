<%@ page import="java.sql.*" %>
<html>
<head>
 
 
 <title> Register Jsp </title>
<style=type="text/css">
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
  <body bgcolor="gray">
    <nav style=" background-color:lightgray; "><ul>   
	    <li>  <a  href="About.html">ABOUT </a> </li>
	    <li>  <a href="Facility.html">FACILITIES </a> </li> 
	     <li> <a href="room.html">ROOMS </a> </li>
	   	 <li> <a href="rules.html">RULES </a></li> 
	   	  <li>  <a href="index.html">HOME</a></li></ul></nav>  
  
    <%   
    
	
    String id=request.getParameter("HID");
    String pwd=request.getParameter("PIN");
	String fname=request.getParameter("FNAME");
	String lname=request.getParameter("LNAME");
	String age=request.getParameter("AGE");	
	String no=request.getParameter("PHONE");
	String room=request.getParameter("HROOM");
	String city=request.getParameter("CITY");
	Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	Statement s=con.createStatement();
	int res=s.executeUpdate("insert into Hostler values('"+id+"','"+pwd+"','"+fname+"','"+lname+"',"+age+",'"+no+"','"+room+"','"+city+"')");
	
	out.println("<h1>Sucessfully Added</h1>");
	  %>
	  
	 
	

	<br/>
	
	<br/>
	 <a href="loginadmin.html">Logout</a> <br/>
     <a href="AddHostler.html"> Back </a> <br/>
	 
   </body>
 </html>