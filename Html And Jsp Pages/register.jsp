<%@ page import="java.sql.*" %>
<html>
<head>
 <title> Register Jsp </title>
 
 </head>

  <body>
  
    <%   
    
	
	
	String fname=request.getParameter("FNAME");
	String lname=request.getParameter("LNAME");
	String email=request.getParameter("EMAIL"); 
	String pass=request.getParameter("PWD"); 
	String no=request.getParameter("PHONE");
	String age=request.getParameter("AGE");
	String city=request.getParameter("CITY");
	Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	Statement s=con.createStatement();
	int res=s.executeUpdate("insert into Register values('"+fname+"','"+lname+"','"+email+"','"+pass+"','"+no+"','"+age+"','"+city+"')");
	
	 HttpSession ses=request.getSession();
	  ses.setAttribute("name", fname);
	  %>
	  
	  <jsp:forward page="Afterregister.jsp"/>
	  
	

	<br/>
	
	<br/>
	 <a href="index.html"> WELCOME PAGE </a>
   </body>
 </html>