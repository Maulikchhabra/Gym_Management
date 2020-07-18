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
<title>Pump House Login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/machinery.css" />
</head>
<body>

   <div class="heading">
        
        <h1>Pump Place</h1>
        
    </div>

<%! //DECLARATION TAG
   
     Connection con1 =null,con2=null,con3=null,con4=null;     
     PreparedStatement pst =null;
     Statement st1 =null,st2=null,st3=null,st4=null;
     
     //Result sets for the queries
     ResultSet rs1 = null,rs2=null,rs3=null,rs4=null;
     
   
     //Login to database details   
     String url ="jdbc:mysql://localhost:3306/pumphouse";
     String uname= "root";
     String pass= "3780";

    //SQL Queries to be implemented
    
    String query1="select machineID,name,pairs from machine where category='Big machines'"; //showing values of big machines
    String query2="select machineID,category,kilograms,pairs from machine where category='Dumbells' "; //showing values of dumbells
    String query3="select machineID,name,pairs from machine where category='Other'"; //showing values of Other
    String query4="select machineID,category,kilograms,pairs from machine where category='Rods'"; //showing values of Rods
    
 %>
  
  <%
   //Initializations =
  
   //1.General initializations
   Class.forName("com.mysql.jdbc.Driver"); //class forname
   con1 = DriverManager.getConnection(url, uname, pass);
   con2 = DriverManager.getConnection(url, uname, pass);
   con3 = DriverManager.getConnection(url, uname, pass);
   con4 = DriverManager.getConnection(url, uname, pass);
  
   
  
   //Query initializations
   st1 = con1.createStatement();
   st2 = con2.createStatement();
   st3 = con3.createStatement();
   st4 = con4.createStatement();
   rs1 = st1.executeQuery(query1);
   rs2 = st2.executeQuery(query2);
   rs3 = st3.executeQuery(query3);
   rs4 = st4.executeQuery(query4);
  
%>

<div class="dumbells">
  <details>
  
     <summary>Dumbells</summary>
     <table style="width:50%">
      <tr>
         <th>Equipment ID</th>
         <th>Category</th>
         <th>Kilograms</th>
         <th>Pairs</th>
      </tr>
      <br>
      <%
       while(rs2.next()){
            out.println("<tr><td>&emsp;&emsp;&emsp;&emsp;"+rs2.getString(1)+"</td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs2.getString(2)+"</td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs2.getInt(3)+"</td><td>&emsp;&emsp;&emsp;"+rs2.getInt(4)+"</td></tr><br>");    
   	 
		}
	%>
   </table>
 </details>
    
</div>

<div class="rods">
  <details>
  
     <summary>Rods</summary>
     <table style="width:50%">
      <tr>
         <th>Equipment ID</th>
         <th>Category</th>
         <th>Kilograms</th>
         <th>Quantity</th>
      </tr>
      <br>
      <%
       while(rs4.next()){
            out.println("<tr><td>&emsp;&emsp;&emsp;&emsp;"+rs4.getString(1)+"</td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs4.getString(2)+"</td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs4.getInt(3)+"</td><td>&emsp;&emsp;&emsp;"+rs4.getInt(4)+"</td></tr><br>");    
   	 
		}
	%>
   </table>
 </details>
    
</div>


<div class="machines">
  <details>
  
     <summary>Big Machines</summary>
     <table style="width:50%">
      <tr>
         <th>Equipment ID</th>
         <th>Equipment</th>
         <th>Quantity</th>
      </tr>
      <br>
      <%
       while(rs1.next()){
            out.println("<tr><td>&emsp;&emsp;&emsp;&emsp;"+rs1.getString(1)+"</td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs1.getString(2)+"</td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs1.getInt(3)+"</td></tr><br>");    
   	 
		}
	%>
   </table>
 </details>
    
</div>

<div class="others">
  <details>
  
     <summary>Other Equipments</summary>
     <table style="width:50%">
      <tr>
         <th>Equipment ID</th>
         <th>Equipment name</th>
         <th>Quantity</th>
      </tr>
      <br>
      <%
       while(rs3.next()){
            out.println("<tr><td>&emsp;&emsp;&emsp;&emsp;"+rs3.getString(1)+"</td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs3.getString(2)+"</td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs3.getInt(3)+"</td></tr><br>");    
   	 
		}
	%>
   </table>
 </details>
    
</div>
</body>
</html>