<%-- 
    Document   : userindex
    Created on : Aug 10, 2023, 11:26:19 AM
    Author     : Kavindu
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
//   //     Cookie[] cookies = request.getCookies();
//        String email = "";
//
//        if (cookies != null) {
//            for (Cookie cookie : cookies) {
//                if (cookie.getName().equals("user")) {
//                    email = cookie.getValue();
//                    break;
//                }
//            }
//        }

String message = "";
if (request.getParameter("status") != null) {
    int status = Integer.parseInt(request.getParameter("status"));
    if (status == 1) {
        message = "<h4 class='text-success'>You have successfully changed data.</h4>";
    } else if (status == 2) {
        message = "<h4 class='text-danger'>Update Unsuccessfu.</h4>";
    } else {
        message = "<h4 class='text-danger'>An error occurred.</h4>";
    }
}
    String email = session.getAttribute("email").toString();    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
    </head>
    <body>
 
        <header>
		<div class="container">
			<div class="brand">
				<div class="logo">
					<a href="userindex.jsp">
						<img src="img/roundpng.png">
						<div class="logo-text">
							<p class="big-logo">EMart User</p>
						</div>
					</a>
				</div> <!-- logo -->
				<div class="shop-icon">
					<div class="dropdown">
                                            <img src= "img/user-icon-png-6.png">
						<div class="dropdown-menu">
							<ul>
								<li><a href="userindex.jsp">My Account</a></li>
								<li><a href="orders.jsp">My Orders</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
                                            <img src="img/wishlist.png">
						<div class="dropdown-menu wishlist-item">
							<table border="1">
								<thead>
									<tr>
										<th>Image</th>
										<th>Product Name</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><img src="img/product/img1.jpg"></td>
										<td>product name</td>
									</tr>
									<tr>
										<td><img src="img/product/img2.jpg"></td>
										<td>product name</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="dropdown">
                                            <img src="img/shpcart.png">
						<div class="dropdown-menu cart-item">
							<table border="1">
								<thead>
									<tr>
										<th>Image</th>
										<th>Product Name</th>
										<th class="center">Price</th>
										<th class="center">Qty.</th>
										<th class="center">Amount</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><img src="img/product/img1.jpg"></td>
										<td>product name</td>
										<td class="center">1200</td>
										<td class="center">2</td>
										<td class="center">2400</td>
									</tr>
									<tr>
										<td><img src="img/product/img2.jpg"></td>
										<td>product name</td>
										<td class="center">1500</td>
										<td class="center">2</td>
										<td class="center">3000</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div> <!-- shop icons -->
			</div> <!-- brand -->

			<div class="menu-bar">
				<div class="menu">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="shop.jsp">Shop</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</div>
					</form>
				</div>
			</div> <!-- menu -->
		</div> <!-- container -->
	</header> <!-- header -->

	<div class="container">
		<main>                  
			<div class="breadcrumb">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li> / </li>
					<li>hello</li>
				</ul>
			</div> <!-- End of Breadcrumb-->
			                                           
			<div class="account-page">                           
				<div class="profile">
                                    
					<div class="profile-img">  
                                             <%
             Connection con = DbConnector.getConnection();
                      String query = "SELECT * FROM user WHERE email = '"+email+"' " ;
                     PreparedStatement pstmt = con.prepareStatement(query);
                         ResultSet rs = pstmt.executeQuery();
                 while(rs.next())
        {
            %>                                         <div class ="userexdata">
                                                <label>Your First Name:</label>
                                                <input value="<%=rs.getString(2)%> ">
                                                          </div>
                                                          <div class ="userexdata">
                                                <label>Your Last Name:</label>
                                                <input value="<%=rs.getString(3)%> ">
                                                          </div>
                                                          <div class ="userexdata">
                                                <label>Your Email:</label>
                                                <input value="<%=rs.getString(4)%> ">
                                                          </div>
                                <%  }
                                            %>
                                                
					</div>
                                                 
                                        
					<ul>
						<li><a href="userindex.jsp" class="active">Account <span>></span></a></li>
						<li><a href="orders.jsp">My Orders <span>></span></a></li>
						<li><a href="changepassword.jsp">Change Password <span>></span></a></li>
                                                <li><a href="signout.jsp">Logout <span>></span></a></li>
					</ul>
				</div>
                                               
				<div class="account-detail">
					<h2>Account</h2>
					<div class="billing-detail1">
                                            <%=message%>
                    		<form action="userindexaction.jsp" method="POST">                                                  
							<div class="form-inline">                                                           
								<div class="form-group">
                                                                   <label>New First Name</label>                                                                  
									<input type="text" id="fname" name="firstName" value=" ">
								</div>
								<div class="form-group">
									<label>New Last Name</label>
									<input type="text" id="lname" name="lastName" value="">
								</div>
							<div class="form-inline">					
								<div class="form-group">
									<label>New Email Address</label>
									<input type="text" id="email" name="email" value="">
								</div>
							</div>
                                                            <div class="form-inline">					
								<div class="form-group">
									<label>New Mobile Number</label>
									<input type="int" id="pnumber" name="pnumber" value="">
								</div>
							</div>
                                                            <div class="form-inline">					
								<div class="form-group">
                                                            
                                                                    <label>Review:</label>
                                                                 <input type="text" id="review" name="review" value="">                          
                                                          </div> 
                                                          </div> 
                                                              
							<div class="form-group">
								<label></label>
								<input type="submit" id="update" name="update" value="Update">
							</div>                                                             
                                                        </div>
						</form>		
					</div>
				</div>				
			</div>		
		</main> <!-- Main Area -->
	</div>

	<footer>
		<div class="container">
			<div class="footer-widget">
				<div class="widget">
					<div class="widget-heading">
						<h3>Important Link</h3>
					</div>
					<div class="widget-content">
						<ul>
							<li><a href="about.jsp">About</a></li>
							<li><a href="contact.jsp">Contact</a></li>
							<li><a href="terms.jsp">Terms & Conditions</a></li>
						</ul>
					</div>
				</div>
				<div class="widget">
					<div class="widget-heading">
						<h3>My Account</h3>
					</div>
					<div class="widget-content">
						<ul>
							<li><a href="userindex.jsp">My Account</a></li>
							<li><a href="orders.jsp">My Orders</a></li>
							<li><a href="cart.jsp">Cart</a></li>
							<li><a href="checkout.jsp">Checkout</a></li>
						</ul>
					</div>
				</div>
				<div class="widget">
					<div class="widget-heading">
						<h3>Follow us</h3>
					</div>
					<div class="widget-content">
						<div class="follow">
							<ul>
                                                            <li><a href="#"><img src="img/icons/facebook.png"></a></li>
								<li><a href="#"><img src="img/icons/twitter.png"></a></li>
								<li><a href="#"><img src="img/icons/instagram.png"></a></li>
							</ul>
						</div>						
					</div>

				</div>
			</div> <!-- Footer Widget -->
			<div class="footer-bar">
				<div class="copyright-text">
					<p>© 2022-2023, Emart.com, Inc.</p>
				</div>
				<div class="payment-mode">
                                    <img src="img/pay/pay.png">
				</div>
			</div> <!-- Footer Bar -->
		</div>
	</footer> <!-- Footer Area -->

    </body>
</html>
