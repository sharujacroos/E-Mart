<%-- 
    Document   : about
    Created on : Aug 4, 2023, 1:46:39 PM
    Author     : Kavindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="shop.jsp">Shop</a></li>
                    <li><a href="review.jsp">Review</a></li>
                    <li><a class="active" href="about.jsp">About</a></li>
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

       <section id="page-header" class="about-header">
        <h2>#KnowUs</h2>
        <p>"Empowering Your Online Shopping Experience"</p>
       </section>

       <section id="about-head" class="section-p1">
        <img src="img/about/a6.jpg" alt="">
        <div>
            <h2>Who We Are?</h2>
            <p>At Emart, we are passionate about connecting people 
                with their favorite products and revolutionizing the way they shop online. 
                As an innovative e-commerce platform, we strive to provide an exceptional 
                shopping experience tailored to our customers' needs.</p>
                
            <p>At Emart, we are driven by a mission to make online shopping convenient, reliable, and enjoyable. 
            Join us on this exciting journey, and let us redefine the way you shop.</p>

            <abbr title="">From cutting-edge gadgets to stylish fashion pieces, our curated selection ensures you stay ahead of the curve. 
                        Explore our website and indulge in the hottest trends that define your unique style and interests.</abbr>
            <br><br>

            <marquee bgcolour="#ccc" loop="-1" scrollamount="5" width="100%">Shop with confidence and embrace the excitement of staying on top of the latest trends with our specialty e-commerce platform.</marquee>
        </div>
       </section>

       <section id="feature" class="section-p1">
            <div class="fe-box">
                <img src="img/features/f1.png" alt="">
                <h6>Free Shipping</h6>
            </div>

            <div class="fe-box">
                <img src="img/features/f2.png" alt="">
                <h6>Online Order </h6>
            </div>

            <div class="fe-box">
                <img src="img/features/f3.png" alt="">
                <h6>Save Money</h6>
            </div>

            <div class="fe-box">
                <img src="img/features/f4.png" alt="">
                <h6>Promotions</h6>
            </div>

            <div class="fe-box">
                <img src="img/features/f5.png" alt="">
                <h6>Happy Sell</h6>
            </div>

            <div class="fe-box">
                <img src="img/features/f6.png" alt="">
                <h6>F24/7 Support</h6>
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
