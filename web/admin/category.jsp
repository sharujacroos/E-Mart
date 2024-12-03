<%-- 
    Document   : category
    Created on : Aug 8, 2023, 9:50:15 PM
    Author     : Kavindu
--%>

<%@page import="classes.Category"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
         String message = "";
         String msg = request.getParameter("msg");
         if("done".equals(msg)){
            message = "<h4> Category Added Successfully!</h4>" ;
        if("wrong".equals(msg))
            message = "<h4> Something went wrong! Try Again</h4>" ;
         }
         List<Category> categories= Category.displaycategoryDetails(DbConnector.getConnection());
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
					<li><a href="index.jsp">Home</a></li>
                                        <li><a href="order.jsp">Order</a></li>
					<li><a href="product.jsp">Product</a></li>
					<li><a class="active" href="category.jsp">Category</a></li>
					<li><a href="user.jsp">Users</a></li>
				</ul>				
			</div>
			<div class="content">
				<h3>Catogory</h3>
				<div class="content-data">
					<div class="content-form">
                                            <%=message%>
                                            <form action="categoryaction.jsp" method="POST">
							<h4>Add Category</h4>
							<div class="form-inline">
								<div class="form-group">
									<label>Category Name</label>
									<input type="text" name="categoryTitle">
								</div>
								<div class="form-group">
									<label>Category Type</label>
									<select name="categoryDescreption">
										<option>---Select a Type---</option>
										<option value="Accessories and Supplies">Accessories and Supplies</option>
										<option value="Camera and Photo">Camera and Photo</option>
									</select>
								</div>
							</div>										
							<div class="form-group">
								<label></label>
								<input type="submit" name="addCategory" value="Add Category">
							</div>
						</form>
					</div>
					<div class="content-detail">
						<h4>All Categories</h4>
						<table>
							<thead>
								<tr>
									<th>Category</th>
									<th>Type</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>
							</thead>
                                                         <%
                                                for (Category category : categories) {
                                                    %>
							<tbody>
								<tr>
                                                                    
									<td> <%=category.getCategoryTitle()%> </td>
									<td> <%=category.getCategoryDescreption()%> </td>
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
