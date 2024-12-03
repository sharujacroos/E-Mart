<%-- 
    Document   : login
    Created on : Aug 4, 2023, 1:44:47 PM
    Author     : Kavindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String message = "";
    if(request.getParameter("status") != null){
        int status = Integer.parseInt(request.getParameter("status"));
        if(status == 0){
        message = "<h4 class='text-danger'>Not Exist</h4>";
        } if(status == 1){
         message = "<h4 class='text-danger'>Your email and password are incorrect.</h4>";
    }
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>EMart</title>
    <script src="https://kit.fontawesome.com/914dec405b.js" ></script>
    <link rel=" stylesheet" href="style.css">
    </head>
    <body>
        
        <section id="header">
        <a href="#"><img src="img/roundpng.png" class="logo" alt=""></a>
        <div>
            <ul id="navbar">
                <li><a class="active" href="index.jsp">Home</a></li>
                <li><a href="shop.jsp">Shop</a></li>
                <li><a href="review.jsp">Review</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li id="cartbag"><a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
                <a href="#" id="close"><i class="fa-regular fa-circle-xmark"></i></a>
            </ul>
        </div>
        <div id="mobile">
            <a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></a>
            <i id="bar" class="fa-solid fa-outdent"></i>
        </div>
    </section>
    <section id ="signin">
        
        <div class="container">
            <div class="heading">
                <img src="img/roundpng.png">
            <h2>
                Welcome
            </h2>
        </div>
             <%=message%>
             <form action="logeed.jsp" method="post">
                  
        <div class="email">
            <input type="text" placeholder="Email" name="email">

        </div>
        <div class="password">
            <input type="password" placeholder="Password" name="password">
        <button class="btn">
            Log In
        </button>
        <div class="help">
            <p>Don't have an account? <span> <a href="signup.jsp"> Sign Up </a></span></p>
        </div> 
        </div>
         </form>
    </div>
             
    </section>

        <script src="script.js">
       
        </script>
    </body>
</html>
