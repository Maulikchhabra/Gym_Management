<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Machinery maintenance</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" /> 
</head>
<body style="background-image: url(images/back2.jpg);">

    <div class="heading">
    
      <h1>The Pump Place</h1>
    </div>
      
    <div class="entry-box">
      
       <form action="reportDB.jsp"  method="post">
       
       <p>Enter the category of machine damaged :</p> 
       
         <select name="category" id="category" placeholder="select category type">
             <option value="dumbells">Dumbells</option>
             <option value="rods">Rods</option>
             <option value="machines">Big Machines</option>
             <option value="other">Other</option>
        </select>
         
         
         <p>Enter machine's code :</p>
         <input type="text" name="code" autofocus>
         <br><br>
         <input type="submit" id="btn">
       </form>  
       <br>
       
       <div class="alldamaged">
           <a href="viewDamaged.jsp"><button id="btnAll">View all damaged equipments</button></a>
       </div>
       
    </div>
    
</body>
</html>