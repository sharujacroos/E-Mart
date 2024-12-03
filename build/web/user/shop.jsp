<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="classes.DbConnector"%>
<%@page import="classes.Product"%>
<%@page import="classes.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Retrieve data from the database
    Connection con = null;
    List<Product> products = null;
    List<Category> categories = null;
    try {
        con = DbConnector.getConnection();
        products = Product.fetchProductsWithImages(con);  // Fetch products with images
        categories = Category.displaycategoryDetails(con);
    } catch (Exception e) {
        out.println("<p>Error fetching data: " + e.getMessage() + "</p>");
    } finally {
        if (con != null) {
            try {
                con.close();
            } catch (Exception e) {
                out.println("<p>Error closing connection: " + e.getMessage() + "</p>");
            }
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Shop - EMart</title>
        <script src="https://kit.fontawesome.com/914dec405b.js"></script>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <!-- Header Section -->
        <section id="header">
            <a href="#"><img src="img/roundpng.png" class="logo" alt="Logo"></a>
            <div>
                <ul id="navbar">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a class="active" href="shop.jsp">Shop</a></li>
                    <li><a href="review.jsp">Review</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li id="cartbag"><a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
                </ul>
            </div>
        </section>

        <!-- Page Header Section -->
        <section id="page-header">
            <h2>#Stayhome</h2>
            <p>Save more with coupons & up to 70% off!</p>
        </section>

        <!-- Products Section -->
        <section id="product1" class="section-p1">
            <div class="pro-container">
                <% 
                    if (products != null && !products.isEmpty()) {
                        for (Product product : products) {
                %>
                <div class="pro">
                    <img src="data:image/jpeg;base64,<%= product.getBase64Image().trim() %>" alt="Product Image" width="150" height="150" />
                    <div class="des">
                        <span>
                            <% 
                                String categoryTitle = "Uncategorized";
                                for (Category category : categories) {
                                    if (category.getCid() == product.getCid()) {
                                        categoryTitle = category.getCategoryTitle();
                                        break;
                                    }
                                }
                                out.print(categoryTitle);
                            %>
                        </span>
                        <h5><%= product.getpName() %></h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>$<%= product.getpPrice() %></h4>
                    </div>
                    <div class="cart">
                        <a href="AddToCartAction.jsp?pid=<%= product.getPid() %>"><i class="fa-solid fa-cart-shopping"></i></a>
                    </div>
                </div>
                <% 
                        }
                    } else {
                %>
                <p>No products available at the moment.</p>
                <% 
                    } 
                %>
            </div>
        </section>

        <!-- Pagination Section -->
        <section id="pagination" class="section-p1">
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#"><i class="fa-solid fa-arrow-right"></i></a>
        </section>

        <!-- Footer Section -->
        <footer class="section-p1">
            <div class="col">
                <img class="logo" src="img/roundpngwhite.png" alt="Logo">
                <h4>Contact Us</h4>
                <p><strong>Address:</strong> Badulla</p>
                <p><strong>Phone:</strong> +225 555 245 / +225 552 852</p>
                <p><strong>Hours:</strong> 9.00 - 18.00, Mon - Sat </p>
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
                <a href="aboutus.jsp">About Us</a>
                <a href="privacy.jsp">Privacy Policy</a>
                <a href="terms.jsp">Terms & Conditions</a>
                <a href="contactus.jsp">Contact Us</a>
            </div>
            <div class="col">
                <h4>My Account</h4>
                <a href="login.jsp">Sign In</a>
                <a href="cart.jsp">View Cart</a>
                <a href="help.jsp">Help</a>
            </div>
            <div class="col">
                <p><strong>Secured Payment Methods</strong></p>
                <img src="img/pay/pay.png" alt="Payment Methods">
            </div>
            <div class="copyright">
                <p>© 2022-2023, Emart.com, Inc.</p>
            </div>
        </footer>
        <script src="script.js"></script>
    </body>
</html>
