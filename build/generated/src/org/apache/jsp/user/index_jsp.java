package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Base64;
import java.lang.String;
import classes.Category;
import classes.Product;
import java.util.List;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import classes.DbConnector;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

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

 
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>EMart</title>\n");
      out.write("    <script src=\"https://kit.fontawesome.com/914dec405b.js\" ></script>\n");
      out.write("    <link rel=\" stylesheet\" href=\"style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("     \n");
      out.write("      \n");
      out.write("        <section id=\"header\">\n");
      out.write("        <a href=\"index.jsp\"><img src=\"img/roundpng.png\" class=\"logo\" alt=\"\"></a>\n");
      out.write("        <div>\n");
      out.write("            <ul id=\"navbar\">       \n");
      out.write("                <li><a class=\"active\" href=\"index.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"shop.jsp\">Shop</a></li>\n");
      out.write("                <li><a href=\"review.jsp\">Review</a></li>\n");
      out.write("                <li><a href=\"about.jsp\">About</a></li>\n");
      out.write("                <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("              \n");
      out.write("                <li id=\"cartbag\"><a href=\"cart.jsp\"><i class=\"fa-solid fa-cart-shopping\"></i></a></li>\n");
      out.write("                <a href=\"#\" id=\"close\"><i class=\"fa-regular fa-circle-xmark\"></i></a>\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"mobile\">\n");
      out.write("            <a href=\"cart.jsp\"><i class=\"fa-solid fa-cart-shopping\"></i></a>\n");
      out.write("            <i id=\"bar\" class=\"fa-solid fa-outdent\"></i>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("        ");
      out.print(message);
      out.write("\n");
      out.write("    <section id=\"hero\">\n");
      out.write("        <h4>Flash Sale</h4>\n");
      out.write("        <h2>50% OFFER</h2>\n");
      out.write("        <h1>On Baseus Products</h1>\n");
      out.write("        <p>Save more with FLASH SALES</p>\n");
      out.write("        <button>Shop Now</button>\n");
      out.write("    </section>\n");
      out.write("    <section id=\"feature\" class=\"section-p1\">\n");
      out.write("        <div class=\"fe-box\">\n");
      out.write("            <img src=\"img/features/f1.png\" alt=\"\">\n");
      out.write("            <h6>Free Shipping</h6>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"fe-box\">\n");
      out.write("            <img src=\"img/features/f2.png\" alt=\"\">\n");
      out.write("            <h6>Online Order</h6>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"fe-box\">\n");
      out.write("            <img src=\"img/features/f3.png\" alt=\"\">\n");
      out.write("            <h6>Save Money</h6>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"fe-box\">\n");
      out.write("            <img src=\"img/features/f4.png\" alt=\"\">\n");
      out.write("            <h6>Promotions</h6>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"fe-box\">\n");
      out.write("            <img src=\"img/features/f5.png\" alt=\"\">\n");
      out.write("            <h6>Happy Sell</h6>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"fe-box\">\n");
      out.write("            <img src=\"img/features/f6.png\" alt=\"\">\n");
      out.write("            <h6>Support</h6>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <section id=\"product1\" class=\"section-p1\">\n");
      out.write("        <h2>Top Deals</h2>\n");
      out.write("        <p>Hurry & Grab your favourites</p>\n");
      out.write("       \n");
      out.write("        <div class=\"pro-container\">\n");
      out.write("             ");

                              for (Product product : products) {
                              for (Category category : categories) {
                                
      out.write("\n");
      out.write("            <div class=\"pro\">\n");
      out.write("               \n");
      out.write("                <img src=\"data:image/jpeg;base64,");
      out.print( product.getBase64Image().trim() );
      out.write("\" alt=\"Product Image\" width=\"150\" height=\"150\" />\n");
      out.write("                <div class=\"des\">\n");
      out.write("                    <span>");
      out.print(category.getCategoryTitle());
      out.write("</span>\n");
      out.write("                    <h5>");
      out.print(product.getpName());
      out.write("</h5>\n");
      out.write("                    <div class=\"star\">\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                    </div>\n");
      out.write("                        <h4>");
      out.print(product.getpPrice() );
      out.write("</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"cart\">\n");
      out.write("                <a href=\"AddToCartAction.jsp? id=");
      out.print(product.getPid() );
      out.write("\"><i class=\"fa-solid fa-cart-shopping\"></i></a>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("                ");

                    }
}
                
      out.write("\n");
      out.write("                        \n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("        \n");
      out.write("    <section id=\"banner\" class=\"section-m1\">\n");
      out.write("        <h4>BRANDNEW PRODUCTS</h4>\n");
      out.write("        <h2>Up to <span>50% OFF</span> for earphones</h2>\n");
      out.write("        <button class=\"normal\"> Explore More</button>\n");
      out.write("    </section>\n");
      out.write("    <section id=\"product1\" class=\"section-p1\">\n");
      out.write("        <h2>New Arrivals</h2>\n");
      out.write("        <p>Luxury in your hand</p>\n");
      out.write("        <div class=\"pro-container\">\n");
      out.write("             ");

                              for (Product product : products) {
                              for (Category category : categories) {
                                
      out.write("\n");
      out.write("            <div class=\"pro\">\n");
      out.write("               \n");
      out.write("                <img src=\"DisplayImageServlet?pid=");
      out.print( product.getPid() );
      out.write("\">\n");
      out.write("                <div class=\"des\">\n");
      out.write("                    <span>");
      out.print(category.getCategoryTitle());
      out.write("</span>\n");
      out.write("                    <h5>");
      out.print(product.getpName());
      out.write("</h5>\n");
      out.write("                    <div class=\"star\">\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                        <i class=\"fas fa-star\"></i>\n");
      out.write("                    </div>\n");
      out.write("                        <h4>");
      out.print(product.getpPrice() );
      out.write("</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"cart\">\n");
      out.write("                <a href=\"AddToCartAction.jsp? id=");
      out.print(product.getPid() );
      out.write("\"><i class=\"fa-solid fa-cart-shopping\"></i></a>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("                ");

                    }
}
                
      out.write("\n");
      out.write("                        \n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("<section id=\"sm-banner\" class=\"section-p1\">\n");
      out.write("<div class=\"banner-box\">\n");
      out.write("    <h4>carzy deals</h4>\n");
      out.write("    <h2>buy 1 get 1 free</h2>\n");
      out.write("    <span>best in the street</span>\n");
      out.write("    <button class=\"white\">Learn More</button>\n");
      out.write("</div>\n");
      out.write("<div class=\"banner-box banner-box2\">\n");
      out.write("    <h4>Buy Together</h4>\n");
      out.write("    <h2>Be more professional</h2>\n");
      out.write("    <span>united as one brand</span>\n");
      out.write("    <button class=\"white\">Collection</button>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section id=\"banner3\">\n");
      out.write("    <div class=\"banner-box\">\n");
      out.write("        <h2>APPLE</h2>\n");
      out.write("        <h3>Here's your favourite Apple Products</h3>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"banner-box banner-box2\">\n");
      out.write("        <h2>SAMSUNG</h2>\n");
      out.write("        <h3>Here's your favourite samsung Products</h3>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"banner-box banner-box3\">\n");
      out.write("        <h2>JBL</h2>\n");
      out.write("        <h3>Here's your favourite Jbl Products</h3>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section id=\"bbanner\" class=\"section-p1 section-m1\">\n");
      out.write("    <div class=\"bbnner1\">\n");
      out.write("        <h4>EMart</h4>\n");
      out.write("        <p><span>Tec</span> into your hand</p>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<footer class=\"section-p1\">\n");
      out.write("    <div class=\"col\">\n");
      out.write("            <img class=\"logo\" src=\"img/roundpngwhite.png\" alt=\"\">\n");
      out.write("            <h4>Contact Us</h4>\n");
      out.write("            <p><strong>Address:</strong>Badulla</p>\n");
      out.write("            <p><strong>Phone:</strong>+225 555 245 / +225 552 852</p>\n");
      out.write("            <p><strong>Hours:</strong>9.00 - 18.00, Mon - Sat </p>\n");
      out.write("            <div class=\"follow\">\n");
      out.write("                <h4>Follow Us</h4>\n");
      out.write("                <div class=\"icon\">\n");
      out.write("                    <i class=\"fa-brands fa-facebook\"></i>\n");
      out.write("                    <i class=\"fa-brands fa-twitter\"></i>\n");
      out.write("                    <i class=\"fa-brands fa-instagram\"></i>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col\">\n");
      out.write("        <h4>About</h4>\n");
      out.write("        <a href=\"aboutus.jsp\">About us</a>\n");
      out.write("        <a href=\"privacy.jsp\">Privacy Policy</a>\n");
      out.write("        <a href=\"tems.jsp\">Terms & Conditions</a>\n");
      out.write("        <a href=\"contactus.jsp\">Contact Us</a>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"col\">\n");
      out.write("        <h4>My Account</h4>\n");
      out.write("        <a href=\"login.jsp\">Sign In</a>\n");
      out.write("        <a href=\"cart.jsp\">View Cart</a>\n");
      out.write("        <a href=\"contactus.jsp\">Help</a>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col\">\n");
      out.write("        <p><strong>Secured Payment Method</strong></p>\n");
      out.write("        <img src=\"img/pay/pay.png\" alt=\"\">\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"copyright\">\n");
      out.write("        <p>© 2022-2023, Emart.com, Inc.</p>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"script.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
