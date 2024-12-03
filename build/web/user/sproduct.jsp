<%-- 
    Document   : sproduct
    Created on : Aug 4, 2023, 1:53:18 PM
    Author     : Kavindu
--%>

<%@page import="classes.Category"%>
<%@page import="classes.DbConnector"%>
<%@page import="classes.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String email = session.getAttribute("email").toString();   
    List<Product> products = Product.displayproductDetails(DbConnector.getConnection());
    List<Category> categories= Category.displaycategoryDetails(DbConnector.getConnection());
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
                <li><a href="index.jsp">Home</a></li>
                <li><a class="active" href="shop.jsp">Shop</a></li>
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

    <section id="prodetails" class="section-p1">
                            <%
                              for (Product product : products) {
                              for (Category category : categories) {
                                %>
        <div class="single-pro-image">
         <img src="DisplayImageServlet?pid=<%= product.getPid() %>">
        </div>
        <div class="single-pro-details">
            <h6> <%=category.getCategoryTitle()%></h6>
            <h4><%=product.getpName()%></h4>
            <h2> <%=product.getpPrice() %></h2>
             <input type="" value="<%=product.getQuantity()%>">
             <button class="normal" id="addToCartButton" data-product-id="<%=product.getPid() %>">Add to cart</button>
             <h4>Product details</h4>
             <span><%=product.getpDesc()%>
            </span>
        </div>
                    <%
                     break;
                     }
                     break;}
                    %>

    </section>

    <section id="product1" class="section-p1">
        <h2>Features product</h2>
        <p>Luxury in your hand</p>
        <div class="pro-container">
            <div class="pro">
                <img src="img/products/n1.jpg" alt="">
                <div class="des">
                    <span>Marshall</span>
                    <h5>Marshall Acton III</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                        <h4>$99</h4>
                </div>
                <div class="cart">
                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
            </div>
            </div>
            <div class="pro">
                <img src="img/products/n2.jpg" alt="">
                <div class="des">
                    <span>RORSOU</span>
                    <h5>RORSOU R10</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                        <h4>$99</h4>
                </div>
                <div class="cart">
                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
            </div>
            </div>
            <div class="pro">
                <img src="img/products/n3.jpg" alt="">
                <div class="des">
                    <span>Blink</span>
                    <h5>Blink Video Doorbell</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                        <h4>$99</h4>
                </div>
                <div class="cart">
                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
            </div>
            </div>
            <div class="pro">
                <img src="img/products/n4.jpg" alt="">
                <div class="des">
                    <span>JBL</span>
                    <h5>JBL Tune 230NC</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                        <h4>$99</h4>
                </div>
                <div class="cart">
                <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
            </div>
            </div>
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


    <script>
document.getElementById("addToCartButton").addEventListener("click", function() {
  var productId = this.getAttribute("data-product-id");
  window.location.href = "AddToCartAction.jsp?id=" + productId;
});
</script>


    <script src="script.js"></script>
    </body>
</html>
