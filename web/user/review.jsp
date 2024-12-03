<%-- 
    Document   : review
    Created on : Aug 4, 2023, 1:45:47 PM
    Author     : Kavindu
--%>
<%@page import="classes.User"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.util.List"%>
<%
 List<User> users= User.displayUserreview(DbConnector.getConnection());
 %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>EMart</title>
    <script src="https://kit.fontawesome.com/914dec405b.js" ></script>
    <link rel=" stylesheet" href="style.css">
    <link rel="shortcut icon" href="img/review/fav-icon.png"/>
    </head>
    <body>
        <section id="header">
        <a href="#"><img src="img/roundpng.png" class="logo" alt=""></a>
        <div>
            <ul id="navbar">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="shop.jsp">Shop</a></li>
                <li><a class="active" href="review.jsp">Review</a></li>
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
    <section id="page-header1" class="">
        <h2>#AreweTrustworthy?</h2>
        <p>Ask from our customers</p>
    </section>
    <section class="review" id="review">
        <div class="review-slider">
            <%
                     for (User user : users) {
                                                    %>
            <div class="wrapper">
                <div class="box">
                     
                    <p><%=user.getReview()  %></p>
                    <h3><%=user.getEmail()%></h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
              
                </div>


            </div>
                    <%
                        }
                           %>  
        </div>
    </section>
<section id="bbanner" class="section-p1 section-m1">
    <div class="bbnner1">
        <h4>EMart</h4>
        <p><span>Tec</span> into your hand</p>
    </div>
</section>

<footer class="section-p1">
    <div class="col">
            <img class="logo" src="img/roundpngwhite.png" alt="">
            <h4>Contact Us</h4>
            <p><strong>Address:</strong>Badulla</p>
            <p><strong>Phone:</strong>+225 555 245 / +225 552 852</p>
            <p><strong>Hours:</strong>9.00 - 18.00, Mon - Sat </p>
            <div class="follow">
                <h4>Follow Us</h4>
                <div class="icon">
                    <i class="fa-brands fa-facebook"></i>
                    <i class="fa-brands fa-twitter"></i>
                    <i class="fa-brands fa-instagram"></i>
                </div>
            </div>

    </div>
    <div class="col">
        <h4>About</h4>
        <a href="aboutus.jsp">About us</a>
        <a href="privacy.jsp">Privacy Policy</a>
        <a href="tems.jsp">Terms & Conditions</a>
        <a href="contactus.jsp">Contact Us</a>

    </div>

    <div class="col">
        <h4>My Account</h4>
        <a href="login.jsp">Sign In</a>
        <a href="cart.jsp">View Cart</a>
        <a href="contactus.jsp">Help</a>

    </div>
    <div class="col">
        <p><strong>Secured Payment Method</strong></p>
        <img src="img/pay/pay.png" alt="">
    </div>

    <div class="copyright">
        <p>© 2022-2023, Emart.com, Inc.</p>
    </div>
</footer>



    <script src="script.js"></script>
    </body>
</html>
