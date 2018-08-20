<html>
 <head>
  <title> Login Jsp </title>
  </head>
   <body>
    <%@ page import="java.sql.*" %>
    <%
    
	String user=request.getParameter("FNAME");
	String pass=request.getParameter("PWD");
	Class.forName("oracle.jdbc.driver.OracleDriver");
		 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		 Statement s=con.createStatement();
		 ResultSet rs=s.executeQuery("select * from Register where FNAME='"+user+"'");

			  if(rs.next())
			  {
				  if(rs.getString(4).equals(pass))
				  {
					  out.println("welcome" +user);
					  HttpSession ses=request.getSession();
					  ses.setAttribute("uid", user);
					  %>
					  <jsp:forward page="Student.jsp"/>
					<%    
				  }
					    
				  else
				  {
					  out.println("invalid password try again");
							  %>
					   <a href="login.html">LOGIN </a>
			   <%
			      }
			  } 
			  %>
			 
       	 
    </body>
 </html>