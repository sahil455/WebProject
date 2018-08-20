<html>
 <head>
 	<title>SEARCH</title>
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
 	 <%@ page import="java.sql.*" %>
 	 <body>
 	 <nav style=" background-color:lightblue; "><ul>   
	    <li>  <a  href="About.html">ABOUT </a> </li>
	    <li>  <a href="Facility.html">FACILITIES </a> </li> 
	     <li> <a href="room.html">ROOMS </a> </li>
	   	 <li> <a href="rules.html">RULES </a></li> 
	   	  <li>  <a href="index.html">HOME</a></li></ul></nav>  <br/> 
 	   
 	 	<%
 	 	 String id=request.getParameter("SID");
           try
           {
               
              
            	   
            	 out.println(" <b> SEARCH SUCESSFUL </b> ");
               Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
                Statement s=con.createStatement();
		        ResultSet rs=s.executeQuery("select * from Staff where SID='"+id+"'");
		          rs.next();
		         
	             
		          String name = rs.getString("SNAME");
		          String mob = rs.getString("SMOBILE");
		          String sal = rs.getString("SALARY");
		         
		          out.println("<br/><br/>");
		           out.println("NAME: "+name);
		           out.println("<br/><br/>");
		           out.println("MOBILE: "+mob);
		           out.println("<br/><br/>");
		           out.println("SALARY: "+sal);
		          
               
           }catch(Exception e)
           {}
          
 	 	%>

<a href="updatelogin.html"> back </a> <br/>

<a href="login.html"> Logout </a>   
 

 	 </body>
</html>