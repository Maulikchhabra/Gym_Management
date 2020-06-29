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
<title>Pump Place Login</title>
<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
</head>
<body style="background-image: url(images/back.jpg);">

    <div class="heading">
        
        <h1>Pump Place</h1>
        
    </div>

      
    <div class="entry-box">
      
       <form action="login.jsp"  method="post">
       
         <p>Enter your username :</p> 
         <input type="text" name="username">
         <p>Enter your password :</p>
         <input type="text" name="password">
         <br><br>
         <input type="submit">
       </form>  
       
         <div class="register">
         <p>New to the site, Register :</p>
         <a href="register.jsp"><button>Register</button></a>
         </div>
      
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
    
    String query="select * from users"; //showing values        
  %>
  
  <%
   //getting parameters 
   String name = request.getParameter("username"); 
   String passw = request.getParameter("password");
  
   //out.print(todo);
  
  
   //Initializations =
  
   //1.General initializations
   Class.forName("com.mysql.jdbc.Driver"); //class forname
   con = DriverManager.getConnection(url, uname, pass);
  
   
  
   //Query2 initializations
   st = con.createStatement();
   rs =st.executeQuery(query);
  
%>

   <%
   while(rs.next()){
    String username = rs.getString(1);
    String password = rs.getString(2);
    
   	 if(username.equals(name)){
   		 if(password.equals(passw)){
   			 System.out.println("LOGIN");
   		 }
   	 }
		}
	%>

</body>
</html>