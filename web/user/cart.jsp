
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <script src="https://kit.fontawesome.com/914dec405b.js"></script>
        <link rel="stylesheet" href="style.css" />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
            </link>
        <style>
            .h3{
                text-align: center;
                color: black;
            }
            .btn{
        position: relative;
        left: 100px;
      }
      .h4{
           position: relative;
        padding-left: 100px;
      }
        </style>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="script.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <section id="header">
            <a href="#"><img src="img/roundpng.png" class="logo" alt=""></a>
            <div>
                <ul id="navbar">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="shop.jsp">Shop</a></li>
                    <li><a href="blog.jsp">Blog</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li id="cartbag">
                        <a class="active" href="cart.jsp"
                           ><i class="fa-solid fa-cart-shopping"></i
                            ></a>
                    </li>
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
        <section id="cart" class="section-p1">
            <h3>MY CART</h3>

            <table width="100%">

                <section class="s1">
                    <table class="table table-hover table-striped">

                        <thead>


                            <tr>
                                <td>Product</td>
                                <td>Quantity</td>
                                <td>Price</td>
                                <td>Sub Total</td>
                                <td>Remove</td>

                            </tr>
                        </thead>

                        <tbody>
                            <!--row to loop-->
                            <%try {
                                    Class.forName(
                                            "com.mysql.jdbc.Driver");
                                    Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/cart", "root", "");

                                    String query1 = "SELECT * FROM mycart";
                                    PreparedStatement pstmt1 = con1.prepareStatement(query1);
                                    ResultSet rs1 = pstmt1.executeQuery();

                                    while (rs1.next()) {
                                        String id = rs1.getString("pid");
                                        int price= rs1.getInt("pPrice");
                                        int quantity=rs1.getInt("quantity");
                            %>
                            <tr>
                                <td scope="row"><%out.println(rs1.getString("pName"));%></td>
                                <td><%out.println(rs1.getString("quantity"));%></td>
                                <td><%out.println(rs1.getString("pPrice"));%></td>
                                <td><%out.println(quantity*price);%></td>
                                <td><a href="delete.jsp?id=<%=id%>"> <i class="fa-solid fa-trash"></i></a></td>
                            </tr>
                            
                            <%    }
                                } catch (Exception ex) {
                                    System.out.println(ex);
                                }
                            %>
                            <!--row to loop end-->
                        </tbody>
                    </table>
                            <%
                            
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root","");     
    Statement st=con.createStatement();
    String strQuery = "SELECT SUM(total) FROM mycart";
    ResultSet rs = st.executeQuery(strQuery);

    String Counttot="";
      while(rs.next()){
      Counttot = rs.getString(1);
      out.println("Total  : Rs. " +Counttot);
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %>

                </section>

            </table>
        </section>
                              <a type="button" class="btn btn-outline-dark" href="checkout.jsp">Proceed to checkout </a>

     <% 
           if (request.getParameter("status") != null) {
            String status = request.getParameter("status");
                if(status.equals("0")){
            %>
           <!-- <h1>success</h1>-->
           <script>
                swal("Successfully!", "Successfully deleted the item!", "success");
            </script>
       <% }else{%>
            <script>
                swal("Unccessfully!", "An error occured!", "error");
            </script>
        <% } }%>
        <br>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <footer class="section-p1">
            <div class="col">
                <img class="logo" src="img/roundpng.png" alt="">
                <h4>Contact Us</h4>
                <p><strong>Address:</strong>Badulla</p>
                <p><strong>Phone:</strong>+225 555 245 / +225 552 852</p>
                <p><strong>Hours:</strong>9.00 - 18.00, Mon - Sat</p>
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
                <a href="#">About us</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Terms & Conditions</a>
                <a href="#">Contact Us</a>
            </div>

            <div class="col">
                <h4>My Account</h4>
                <a href="login.html">Sign In</a>
                <a href="#">View Cart</a>
                <a href="#">Help</a>
            </div>
            <div class="col">
                <p><strong>Secured Payment Method</strong></p>
                <img src="img/pay/pay.png" alt="" />
            </div>

            <div class="copyright">
                <p>© 2022-2023, Emart.com, Inc.</p>
            </div>
        </footer>



</html>
