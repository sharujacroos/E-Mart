<%-- 
    Document   : product
    Created on : Aug 8, 2023, 9:52:13 PM
    Author     : Kavindu
--%>

<%@page import="classes.Category"%>
<%@page import="classes.Product"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
   String message = "";
    String msg = request.getParameter("msg");
    if ("done".equals(msg)) {
        message = "<h4> Product Added Successfully!</h4>";
    } else if ("wrong".equals(msg)) {
        message = "<h4> Something went wrong! Try Again</h4>";
    }
    List<Product> products = Product.displayproductDetails(DbConnector.getConnection());
    List<Category> categories = Category.displaycategoryDetails(DbConnector.getConnection());
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <header>
            <div class="container">
                <div class="brand">
                    <div class="logo">
                        <a href="adminindex.jsp">
                            <img src="img/roundpng.png">
                            <div class="logo-text">
                                <p class="big-logo">Emart Admin</p>
                            </div>
                        </a>
                    </div> <!-- logo -->
                    <div class="shop-icon">
                        <div class="dropdown">
                            <img src="img/admin-icon-png-6.png">
                            <div class="dropdown-menu">
                                <ul>
                                   <li><a href="adminindex.jsp">My Account</a></li>								
								<li><a href="#">Settings</a></li>
								<li><a href="logouthelp.jsp">Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div> <!-- shop icons -->
                </div> <!-- brand -->
            </div> <!-- container -->
        </header> <!-- header -->

        <main>

            <div class="main-content">
                <%=message%>
                <div class="sidebar">
                    <h3>Menu</h3>
                    <ul>
                        <li><a href="adminindex.jsp">Home</a></li>
                        <li><a href="order.jsp">Order</a></li>
                        <li><a class="active" href="product.jsp">Product</a></li>
                        <li><a href="category.jsp">Category</a></li>
                        <li><a href="user.jsp">Users</a></li>
                    </ul>				
                </div>
                <div class="content">
                    <h3>Product</h3>
                    <div class="content-data">
                        <div class="content-form">
                            <form action="../UploadImage" method="POST" enctype="multipart/form-data">
                                <h4>Add Product</h4>
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label>Product Name</label>
                                        <input type="text" name="pName">
                                    </div>
                                    <div class="form-group">
                                        <label>Price</label>
                                        <input type="text" name="pPrice">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea style="resize:none" name="pDesc" rows="3"></textarea>
                                </div>
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label>Category</label>

                                        <select name="categoryTitle" type="text">
                                            <%
                                                for (Category category : categories) {
                                            %>
                                            <option value="<%=category.getCid()%>"> <%=category.getCategoryTitle()%></option>
                                            <%
                                                }
                                            %>
                                        </select>

                                    </div>
                                    								<div class="form-group">
                                                                                                            <label>Images</label>
                                                                                                            <input type="file" name="pPhoto" multiple>
                                                                                                    </div>
                                </div>	
                                        <div class="form-group">
                                        <label>Quantity</label>
                                        <input type="text" name="quantity">
                                    </div>
                                <div class="form-group">
                                    <label></label>
                                    <input type="submit" name="addProduct" value="Add Product">
                                </div>
                            </form>
                        </div>
                        <div class="content-detail">
                            <h4>All Products</h4>

                            <table>

                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Price</th>
                                        <th>Category</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <%
                                    for (Product product : products) {
                                %>

                                <tbody>
                                    <tr>

                                        <td> <%=product.getpName()%> </td>
                                        <td> <%=product.getpPrice()%> </td>
                                        <td> <%=product.getpDesc()%> </td>
                                        <td>Edit</td>
                                        <td>Delete</td>


                                    </tr>
                                </tbody>
                                <%
                                    }
                                %>              

                            </table>
                        </div>
                    </div>
                </div>
            </div>		

        </main> <!-- Main Area -->

        <footer>
            <div class="container">
                <div class="footer-bar">
                    <div class="copyright-text">
                        <p>© 2022-2023, Emart.com, Inc.</p>
                    </div>
                </div> <!-- Footer Bar -->
            </div>
        </footer> <!-- Footer Area -->
    </body>
</html>
