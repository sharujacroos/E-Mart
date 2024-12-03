<%-- 
    Document   : index
    Created on : Aug 4, 2023, 1:37:50 PM
    Author     : Kavindu
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.lang.String"%>
<%@page import="classes.Category"%>
<%@page import="classes.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 // String email = session.getAttribute("email").toString(); 
      
    List<Product> products = Product.displayproductDetails(DbConnector.getConnection());
    List<Category> categories= Category.displaycategoryDetails(DbConnector.getConnection());
 
    
  String message = "";
if(request.getParameter("status") != null){
int status = Integer.parseInt(request.getParameter("status"));
if(status == 1){
    message = "<h4 class='text-success'>Added Successfully.</h4>";
}else if (status == 2){
    message = "<h4 class='text-success'>Product is already in your cart. Quantity Increased.</h4>";
}else if (status == 3){
    message = "<h4 class='text-success'>Something Went Wrong.</h4>";

}
}

 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>EMart</title>
    <script src="https://kit.fontawesome.com/914dec405b.js" ></script>
    <link rel=" stylesheet" href="style.css">
    </head>
    <body>
        
     
      
        <section id="header">
        <a href="index.jsp"><img src="img/roundpng.png" class="logo" alt=""></a>
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
        <%=message%>
    <section id="hero">
        <h4>Flash Sale</h4>
        <h2>50% OFFER</h2>
        <h1>On Baseus Products</h1>
        <p>Save more with FLASH SALES</p>
        <button>Shop Now</button>
    </section>
    <section id="feature" class="section-p1">
        <div class="fe-box">
            <img src="img/features/f1.png" alt="">
            <h6>Free Shipping</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f2.png" alt="">
            <h6>Online Order</h6>
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
            <h6>Support</h6>
        </div>
    </section>
    <section id="product1" class="section-p1">
        <h2>Top Deals</h2>
        <p>Hurry & Grab your favourites</p>
       
        <div class="pro-container">
             <%
                              for (Product product : products) {
                              for (Category category : categories) {
                                %>
            <div class="pro">
               
                <img src="data:image/jpeg;base64,<%= product.getBase64Image().trim() %>" alt="Product Image" width="150" height="150" />
                <div class="des">
                    <span><%=category.getCategoryTitle()%></span>
                    <h5><%=product.getpName()%></h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                        <h4><%=product.getpPrice() %></h4>
                </div>
                <div class="cart">
                <a href="AddToCartAction.jsp? id=<%=product.getPid() %>"><i class="fa-solid fa-cart-shopping"></i></a>
            </div>
                
            </div>
                <%
                    }
}
                %>
                        
        </div>
    </section>

        
    <section id="banner" class="section-m1">
        <h4>BRANDNEW PRODUCTS</h4>
        <h2>Up to <span>50% OFF</span> for earphones</h2>
        <button class="normal"> Explore More</button>
    </section>
    <section id="product1" class="section-p1">
        <h2>New Arrivals</h2>
        <p>Luxury in your hand</p>
        <div class="pro-container">
             <%
                              for (Product product : products) {
                              for (Category category : categories) {
                                %>
            <div class="pro">
               
                <img src="DisplayImageServlet?pid=<%= product.getPid() %>">
                <div class="des">
                    <span><%=category.getCategoryTitle()%></span>
                    <h5><%=product.getpName()%></h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                        <h4><%=product.getpPrice() %></h4>
                </div>
                <div class="cart">
                <a href="AddToCartAction.jsp? id=<%=product.getPid() %>"><i class="fa-solid fa-cart-shopping"></i></a>
            </div>
                
            </div>
                <%
                    }
}
                %>
                        
        </div>
    </section>
<section id="sm-banner" class="section-p1">
<div class="banner-box">
    <h4>carzy deals</h4>
    <h2>buy 1 get 1 free</h2>
    <span>best in the street</span>
    <button class="white">Learn More</button>
</div>
<div class="banner-box banner-box2">
    <h4>Buy Together</h4>
    <h2>Be more professional</h2>
    <span>united as one brand</span>
    <button class="white">Collection</button>
</div>
</section>

<section id="banner3">
    <div class="banner-box">
        <h2>APPLE</h2>
        <h3>Here's your favourite Apple Products</h3>
    </div>
    <div class="banner-box banner-box2">
        <h2>SAMSUNG</h2>
        <h3>Here's your favourite samsung Products</h3>
    </div>
    <div class="banner-box banner-box3">
        <h2>JBL</h2>
        <h3>Here's your favourite Jbl Products</h3>
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
