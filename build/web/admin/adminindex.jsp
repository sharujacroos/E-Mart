<%-- 
    Document   : adminindex
    Created on : Aug 8, 2023, 9:41:21 PM
    Author     : Kavindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
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
					<li><a class="active" href="adminindex.jsp">Home</a></li>
					<li><a href="order.jsp">Order</a></li>
					<li><a href="product.jsp">Product</a></li>
					<li><a href="category.jsp">Category</a></li>
					<li><a href="user.jsp">Users</a></li>
				</ul>				
			</div>
			<div class="content dashboard">
				<h3>Dashboard</h3>
				<div class="content-data">
					<div class="content-detail">
						<h4>Low Stock Report</h4>
						<table>
							<thead>
								<tr>
									<th>Product</th>
									<th>Price</th>
									<th>Category</th>
									<th>Qty</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Baseus Power Bank</td>
									<td>1500</td>
									<td>Power Bank</td>
									<td>2</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="content-detail">
						<h4>Recent Order</h4>
						<table>
							<thead>
								<tr>
									<th>Date</th>
									<th>Order Ref#</th>
									<th>User</th>
									<th>Amount</th>
									<th>View</th>									
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>11-05-2023</td>
									<td>15895452</td>
									<td>Kavindu</td>
									<td>$79</td>
									<td>View</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="content-detail">
						<h4>Completed Order</h4>
						<table>
							<thead>
								<tr>
									<th>Date</th>
									<th>Order Ref#</th>
									<th>User</th>
									<th>Amount</th>
									<th>View</th>									
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>11-05-2023</td>
									<td>15895452</td>
									<td>Kavindu</td>
									<td>$79</td>
									<td>View</td>
								</tr>
							</tbody>
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
