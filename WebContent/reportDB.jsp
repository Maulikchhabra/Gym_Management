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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" /> 
</head>
<body style="background-image: url(images/back2.jpg);">

   <div class="heading">
        
        <h1>Pump Place</h1>
        
    </div>


  <%! //DECLARATION TAG
   
     Connection con =null;     
     PreparedStatement pst1 =null,pst2=null;
     Statement st =null;
     ResultSet rs = null;
   
     //Login to database details   
     String url ="jdbc:mysql://localhost:3306/pumphouse";
     String uname="root";
     String pass="3780";

    //SQL Queries to be implemented
    String query1="insert into damaged values (?,?)"; //insert values
    String query2="update machine set pairs=pairs-1 where category=? and machineID=?";
            
  %>
  
  <%
   //getting parameters 
    String mtype = request.getParameter("category"); 
    String code = request.getParameter("code");
    
    System.out.print(mtype+code);
    
   //Initializations =
  
   //1.General initializations
   Class.forName("com.mysql.jdbc.Driver"); //class forname
   con = DriverManager.getConnection(url, uname, pass);
  
   //Query initializations
   pst1 = con.prepareStatement(query1);
   pst2 = con.prepareStatement(query2);
   pst1.setString(1, mtype);
   pst1.setString(2, code);
   pst2.setString(1,mtype);
   pst2.setString(2,code);
   pst1.executeUpdate();
   int i=pst2.executeUpdate();

   System.out.println(i);
  %>
  
<div class="reportDB">
  
  <div class="inner">  
     <%
      out.println("Machinery Issue has been registered successfully.<br>");
     
      out.println("<br><a href='dashboard.html'><button class='proceedbtn2'>Proceed to dashboard</button></a>");
     %>
  </div>
</div>
  
  
</body>
</html>