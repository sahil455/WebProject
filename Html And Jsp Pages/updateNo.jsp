<html>
<head>
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
	   	  <li>  <a href="index.html">HOME</a></li> </ul></nav>  <br/> 
<%@ page import="java.sql.*"  %>
<%
String n=request.getParameter("FNAME");
String id=request.getParameter("PHONE");



try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle");
	Statement stmt = con.createStatement();
	String query = "Update Hostler set PHONE='"+id+"' where FNAME='"+n+"'";
	stmt.executeUpdate(query);
		out.println("<h1>Sucessfully updated<h1>");
	}catch(Exception e){
		}	
	
%>
<a href="updatelogin.html"> back </a> <br/>
<a href="index.html"> Home </a><br/>
<a href="login.html"> Logout </a>   
 
</body>

</html>