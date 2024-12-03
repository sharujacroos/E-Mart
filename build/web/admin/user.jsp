<%-- 
    Document   : order
    Created on : Aug 8, 2023, 9:51:30 PM
    Author     : Kavindu
--%>

<%@page import="classes.User"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    List<User> users= User.displayUserDetails(DbConnector.getConnection());
    %>
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
					<li><a href="order.jsp">Order</a></li>
					<li><a href="product.jsp">Product</a></li>
					<li><a href="category.jsp">Category</a></li>
					<li><a class="active" href="user.jsp">Users</a></li>
				</ul>
			</div>
			<div class="content">
				<h3>Customers</h3>
				<div class="content-detail">
                                    <div class ="content-table">
					<table>
						<thead>
							<tr>
                                                                <th>User ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email Address</th>	
                                                                <th>Role</th>
                                                                <th>Mobile Number</th>
							</tr>
						</thead>
                                                <%
                                                for (User user : users) {
                                                    %>
						<tbody>
							<tr>
                                                                <td> <%=user.getUserid() %> </td>
								<td> <%=user.getFirstname() %> </td>
								<td> <%=user.getLastname() %> </td>
								<td> <%=user.getEmail() %> </td>
                                                                <td> <%=user.getRole() %></td>
                                                                <td> <%=user.getPnumber() %> </td>
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
