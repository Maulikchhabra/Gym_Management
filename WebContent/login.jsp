<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pump Place Login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" /> 
</head>
<body style="background-image: url(images/back.jpg);">

    <div class="heading">
    
      <h1>The Pump Place</h1>
    </div>
      
    <div class="entry-box">
      
       <form action="loginDB.jsp"  method="post">
       
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
    
</body>
</html>