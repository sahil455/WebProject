
<html>
<head>
<title>FORGOT PASSWORD </title>
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

 

<body bgcolor="#5A9EA0">
<nav style=" background-color:lightblue; "><ul>   
	    <li>  <a  href="About.html">ABOUT </a> </li>
	    <li>  <a href="Facility.html">FACILITIES </a> </li> 
	     <li> <a href="room.html">ROOMS </a> </li>
	   	 <li> <a href="rules.html">RULES </a></li> 
	   	  <li>  <a href="index.html">HOME</a></li></ul></nav>  <br/> 

<%@ page import="java.sql.*"  %>
 
<%
String id=request.getParameter("FNAME");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle");
	Statement stmt = con.createStatement();
	 ResultSet rs=stmt.executeQuery("select PWD from Register where FNAME='"+id+"'");
	 rs.next();
	 String pass = rs.getString("PWD");
	 out.println("Paassword : "+pass);
		out.println("<h1><h1>");
	}catch(Exception e){
		}	
	
%>
 <a href="login.html"/>LOGIN </a><br/>
 
</body>
</html>