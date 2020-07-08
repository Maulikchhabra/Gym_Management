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
<title>Machine maintenance</title>
</head>
<body>

   <div class="heading">
        
        <h1>Pump Place</h1>
        
    </div>


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
    String query="insert into damaged values (?,?)"; //insert values
            
  %>
  
  <%
   //getting parameters 
    String mtype = request.getParameter("mtype"); 
    String code = request.getParameter("code");
    
    
   
   //Initializations =
  
   //1.General initializations
   Class.forName("com.mysql.jdbc.Driver"); //class forname
   con = DriverManager.getConnection(url, uname, pass);
  
   //Query initializations
   pst = con.prepareStatement(query);
   pst.setString(1, mtype);
   pst.setString(2, code);
   pst.executeUpdate();
  
  %>
  
  
</body>
</html>