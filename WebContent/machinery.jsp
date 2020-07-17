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
   
     Connection con =null;     
     PreparedStatement pst =null;
     Statement st =null;
     ResultSet rs1 = null;
     ResultSet rs2 = null;
   
     //Login to database details   
     String url ="jdbc:mysql://localhost:3306/pumphouse";
     String uname="root";
     String pass="3780";

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
   con = DriverManager.getConnection(url, uname, pass);
  
   
  
   //Query2 initializations
   st = con.createStatement();
   rs1 =st.executeQuery(query1);
  
%>


<div class="proceed">
  <details>
  
     <summary>Big Machines</summary>
     <table style="width:50%">
      <tr>
         <th>Equipment ID</th>
         <th>Equipment</th>
         <th>Pairs / Quantity</th>
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

</body>
</html>