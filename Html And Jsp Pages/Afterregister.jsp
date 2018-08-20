<html>
 <head>
  <title> Register JSP</title>
   <style>
    div{
     width: 280px;
      position: absolute;
      top: 20%;
      left: 50%;
      transform: translate(-50%,-50%);
     
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
   <body bgcolor="20D3EF">
     <nav style=" background-color:lightgray;"><ul>   
	    <li>  <a  href="About.html">ABOUT </a> </li>
	    <li>  <a href="Facility.html">FACILITIES </a> </li> 
	     <li> <a href="room.html">ROOMS </a> </li>
	   	 <li> <a href="rules.html">RULES </a></li> </ul></nav>  
   <img src="loginPhoto.ico"/>
    <%@ page import="java.sql.*" %>
    <%
    
       try 
      {   
    
    	     HttpSession ses=request.getSession(false);
    	    if(ses==null)
    	      response.sendRedirect("register.html");
    	     String n=(String)ses.getAttribute("name");  
	     Class.forName("oracle.jdbc.driver.OracleDriver");
		 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		 Statement s=con.createStatement();
		 ResultSet rs=s.executeQuery("select * from Register where FNAME='"+n+"'");
		 rs.next();
		  
		  String fname = rs.getString("FNAME");
		  String lname= rs.getString("LNAME");
		  String email = rs.getString("EMAIL");
		  //String pwd = rs.getString("PWD");
		  String no = rs.getString("PHONE");
		  String a = rs.getString("AGE");
		  String city = rs.getString("CITY"); 
		  %>
  <div>    
   <%
  
  out.println("<h1>Registred</h1>");
   out.println("<br></br>");
   out.println("your details are:");
   out.println("<br></br>");
  out.println("fname  : "+fname);
  out.println("<br></br>");
  out.println("lname :"+lname);
  out.println("<br></br>");
  out.println("id  : "+email);
 // out.println("<br></br>");
  //out.println("password : "+pwd);
  out.println("<br></br>");
  out.println("mobile no:"+no);
  out.println("<br></br>");
  out.println("age:"+a);
  out.println("<br></br>");
  out.println("city:"+city);
  
  
  %> </div>
   
  
  <%
  
  
}catch(Exception e){}
  
   %>
     
     <a href="register.html"> Back </a> <br/>
	 <a href="index.html"> WELCOME PAGE </a> <br/>
        </body>
        </html>
   
  
    
		 

