<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register as a User</title>
<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
</head>
<body style="background-image: url(images/back.jpg);">

   <div class="heading">
        
        <h1>Pump Place</h1>
        
    </div>

      
    <div class="entry-box">
      
       <form action="registerDB.jsp"  method="post">
       
         <p>Enter your name :</p>
         <input type="text" name="username">
         <p>Enter a password :</p>
         <input type="password" name="password">
         <p>Enter email address :</p>
         <input type="text" name="email">
         <br><br>
         <input type="submit">
       </form>  
     </div>
     
  
</body>
</html>