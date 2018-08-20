<!DOCTYPE html >
<html>
<head>
<title>View Registration</title>
<style type="text/css">
 body{
   background-image:url('or.jpg');
   background-size:cover;
   
   }
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
<body>
 <center> <h1> VIEW REGISTRATION </h1>
 
<nav style=" background-color:lightblue; "><ul>   
	    <li>  <a  href="About.html">ABOUT </a> </li>
	    <li>  <a href="Facility.html">FACILITIES </a> </li> 
	     <li> <a href="room.html">ROOMS </a> </li>
	   	 <li> <a href="rules.html">RULES </a></li>
	   	  <li>  <a href="index.html">HOME</a></li> </ul></nav>  <br/> 
	   	  	   	  <img src="view2.png"/> <br/>
	   	   <nav style=" background-color:gray; "><ul>   
	    <li>  <a  href="viewHostlers.jsp"> Hostlers </a> </li>
	    <li>  <a href="viewRegister.jsp">Registration </a> </li> 
	     <li> <a href="viewStaff.jsp">Staff </a> </li>
	    </ul></nav>  <br/> 
	   	  <table border="5px" width="1000px">
	   	  <tr> 
	   	  <th> First Name</th>
	   	  <th>Last Name</th>
	   	  <th>Email</th>
	   	 
	   	  <th>phone</th>
	   	  <th>Age</th>
	   	  <th>City</th>
	   	  
	   	  </tr>
	   	   <%@ page import="java.sql.*" %>
	   	  <%
 	 	 
           try
           {
               
              
            	   
            	 out.println(" <h3><b> Registration </b></h3> ");
               Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
                Statement s=con.createStatement();
		        ResultSet rs=s.executeQuery("select * from Register");
		         while(rs.next())
		         
		         {
		         
		 			
		          %>
		          <tr>
		          <td> <%= rs.getString(1) %> </td> 
		          <td> <%= rs.getString(2) %> </td> 
		          <td> <%= rs.getString(3) %> </td> 
		         
		          <td> <%= rs.getString(5) %> </td>
		          <td> <%= rs.getString(6) %> </td>
		          <td> <%= rs.getString(7) %> </td>
		         
		          </tr>
		          <%
		         }
           }catch(Exception e)
           {}
          
 	 	%>
</table>
<a href="view.html"> back </a> <br/>

<a href="loginadmin.html"> Logout </a>   
 
	   	  
	   	  </center>
</body>
</html>