<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"%>  <%--import database package --%>
    <%@ page import="java.io.*" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.Connection" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>

<%! //DECLARATION TAG
   
     Connection con =null;     
     PreparedStatement pst =null;
     Statement st =null;
     ResultSet rs = null;
   
     //Login to database details   
     String url ="jdbc:mysql://localhost:3306/pumphouse";
     String uname="root";
     String pass="3780";

    //SQL Queries to be implemented
    String query="insert into users values(?,?,?)"; //insert values
            
  %>
  
  <%
   //getting parameters 
    String username = request.getParameter("username"); 
    String password = request.getParameter("password");
    String email = request.getParameter("email");
   
    System.out.println(username +" "+password+" "+email);
  
   
   //Initializations =
  
   //1.General initializations
   Class.forName("com.mysql.jdbc.Driver"); //class forname
   con = DriverManager.getConnection(url, uname, pass);
  
   //Query initializations
   pst = con.prepareStatement(query);
   pst.setString(1, username);
   pst.setString(2, password);
   pst.setString(3,email);
   pst.executeUpdate();
  
  %>
  
  <div class="register">
     <%
      out.println(username + " has been successfully registered.<br>");
      out.println("Kindly login to the site<br>");
      out.println("<a href='login.jsp'><button class='proceedbtn2'>Proceed to login page</button></a>");
     %>
  
  </div>
  
  
</body>
</html>