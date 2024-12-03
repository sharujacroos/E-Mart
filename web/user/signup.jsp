<%-- 
    Document   : signup
    Created on : Aug 7, 2023, 12:21:41 PM
    Author     : Kavindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String message = "";
if(request.getParameter("status") != null){
int status = Integer.parseInt(request.getParameter("status"));
if(status == 1){
    message = "<h4 class='text-success'>You have successfully registered with EMart.</h4>";
}
else{
message = "<h4 class='text-danger'>An error occurred. Please register again.</h4>";
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
        <section id="signup">
            <div class="container1">
            <div class="heading1">
                <img src="img/roundpng.png">
            </div>
                <%=message%>
                
            <form action="registration.jsp" method="POST">
                                    
                                   
                                        <div class="firstname1">
                                            
                                                <input type="text" id="firstnameInput" name="firstName" placeholder="First name" required/>
                                            
                                        </div>
                                        <div class="lastname1">
                                           
                                                <input type="text" id="lastnameInput" name="lastName"  placeholder="Last name" required/>
                                            
                                        </div>
                
                                       <div class="pnumber">
                                           
                                                <input type="text" id="lastnameInput" name="pnumber"  placeholder="Mobile number" required/>
                                            
                                        </div> 
                                   

                                    
                                    <div class="email1">
                                        <input type="email" id="emailInput" name="email"  placeholder="Email address" required/>
                                    </div>

                                    
                                    <div class="password1">
                                        <input type="password" id="passwordInput" name="password"  placeholder="Password" required/>
                                    </div>

                                   
                                    <button class="btn1" type="submit">
                                            Sign up
                                     </button>
                
                                     <div class= "help">
                                    <div class="text-center">
                                        <p>Already have an account? <span> <a href="login.jsp">Log in</a></span></p>
                                    </div>
                                     </div>
                                </form>
            </div>
        </section>
        <script src="script.js">
       
        </script>
    </body>
</html>
