<%-- 
    Document   : order
    Created on : Aug 8, 2023, 9:51:30 PM
    Author     : Kavindu
--%>

<%@page import="classes.User"%>
<%@page import="classes.Product"%>
<%@page import="classes.Product"%>
<%@page import="classes.Order"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Order> orders= Order.displayorderDetails(DbConnector.getConnection());
     List<Product> products = Product.displayproductDetails(DbConnector.getConnection());
     List<User> users= User.displayUserDetails(DbConnector.getConnection());
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
			<div class="sidebar">
				<h3>Menu</h3>
				<ul>
					<li><a href="adminindex.jsp">Home</a></li>
					<li><a class="active" href="order.jsp">Order</a></li>
					<li><a href="product.jsp">Product</a></li>
					<li><a href="category.jsp">Category</a></li>
					<li><a href="user.jsp">Users</a></li>
				</ul>
			</div>
			<div class="content">
				<h3>Order</h3>
				<div class="content-detail">
					<table>
						<thead>
							<tr>
								<th>Date</th>
								<th>Order Ref#</th>
                                                                <th>Product Name</th>
								<th>User</th>
								<th>Price</th>								
								<th>Total</th>
                                                                <th>City</th>
                                                                <th>Status</th>
                                                                <th>Action</th>
                                                                
							</tr>
						</thead>
                                                <%
                                                for (Order order : orders){
                                                for (Product product : products){
                                                for (User user : users){    
                                                
                                            %>
						<tbody>
							<tr>
								<td> <%=order.getDate() %> </td>
								<td><%=order.getOrder_ref() %></td>
                                                                <td><%=product.getpName() %></td>
								<td> <%=user.getEmail() %> </td>
								<td><%=product.getpPrice()%></td>
								<td><%=order.getTotal()%></td>
                                                                <td><%=order.getCity() %></td>                                                                
								<td><%=order.getStatus()%></td>
								<td>Delete</td>
							</tr>
						</tbody>
                                                 <%
                                               break; }
                                            break;    }
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
