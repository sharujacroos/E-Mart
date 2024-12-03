package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import java.sql.Connection;
import classes.DbConnector;
import classes.Product;
import classes.Category;

public final class shop_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Shop - EMart</title>\n");
      out.write("        <script src=\"https://kit.fontawesome.com/914dec405b.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Header Section -->\n");
      out.write("        <section id=\"header\">\n");
      out.write("            <a href=\"#\"><img src=\"img/roundpng.png\" class=\"logo\" alt=\"Logo\"></a>\n");
      out.write("            <div>\n");
      out.write("                <ul id=\"navbar\">\n");
      out.write("                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                    <li><a class=\"active\" href=\"shop.jsp\">Shop</a></li>\n");
      out.write("                    <li><a href=\"review.jsp\">Review</a></li>\n");
      out.write("                    <li><a href=\"about.jsp\">About</a></li>\n");
      out.write("                    <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                    <li id=\"cartbag\"><a href=\"cart.jsp\"><i class=\"fa-solid fa-cart-shopping\"></i></a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Page Header Section -->\n");
      out.write("        <section id=\"page-header\">\n");
      out.write("            <h2>#Stayhome</h2>\n");
      out.write("            <p>Save more with coupons & up to 70% off!</p>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Products Section -->\n");
      out.write("        <section id=\"product1\" class=\"section-p1\">\n");
      out.write("            <div class=\"pro-container\">\n");
      out.write("                ");
 
                    if (products != null && !products.isEmpty()) {
                        for (Product product : products) {
                
      out.write("\n");
      out.write("                <div class=\"pro\">\n");
      out.write("                    <img src=\"data:image/jpeg;base64,");
      out.print( product.getBase64Image().trim() );
      out.write("\" alt=\"Product Image\" width=\"150\" height=\"150\" />\n");
      out.write("                    <div class=\"des\">\n");
      out.write("                        <span>\n");
      out.write("                            ");
 
                                String categoryTitle = "Uncategorized";
                                for (Category category : categories) {
                                    if (category.getCid() == product.getCid()) {
                                        categoryTitle = category.getCategoryTitle();
                                        break;
                                    }
                                }
                                out.print(categoryTitle);
                            
      out.write("\n");
      out.write("                        </span>\n");
      out.write("                        <h5>");
      out.print( product.getpName() );
      out.write("</h5>\n");
      out.write("                        <div class=\"star\">\n");
      out.write("                            <i class=\"fas fa-star\"></i>\n");
      out.write("                            <i class=\"fas fa-star\"></i>\n");
      out.write("                            <i class=\"fas fa-star\"></i>\n");
      out.write("                            <i class=\"fas fa-star\"></i>\n");
      out.write("                            <i class=\"fas fa-star\"></i>\n");
      out.write("                        </div>\n");
      out.write("                        <h4>$");
      out.print( product.getpPrice() );
      out.write("</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"cart\">\n");
      out.write("                        <a href=\"AddToCartAction.jsp?pid=");
      out.print( product.getPid() );
      out.write("\"><i class=\"fa-solid fa-cart-shopping\"></i></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");
 
                        }
                    } else {
                
      out.write("\n");
      out.write("                <p>No products available at the moment.</p>\n");
      out.write("                ");
 
                    } 
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Pagination Section -->\n");
      out.write("        <section id=\"pagination\" class=\"section-p1\">\n");
      out.write("            <a href=\"#\">1</a>\n");
      out.write("            <a href=\"#\">2</a>\n");
      out.write("            <a href=\"#\"><i class=\"fa-solid fa-arrow-right\"></i></a>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Footer Section -->\n");
      out.write("        <footer class=\"section-p1\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <img class=\"logo\" src=\"img/roundpngwhite.png\" alt=\"Logo\">\n");
      out.write("                <h4>Contact Us</h4>\n");
      out.write("                <p><strong>Address:</strong> Badulla</p>\n");
      out.write("                <p><strong>Phone:</strong> +225 555 245 / +225 552 852</p>\n");
      out.write("                <p><strong>Hours:</strong> 9.00 - 18.00, Mon - Sat </p>\n");
      out.write("                <div class=\"follow\">\n");
      out.write("                    <h4>Follow Us</h4>\n");
      out.write("                    <div class=\"icon\">\n");
      out.write("                        <i class=\"fa-brands fa-facebook\"></i>\n");
      out.write("                        <i class=\"fa-brands fa-twitter\"></i>\n");
      out.write("                        <i class=\"fa-brands fa-instagram\"></i>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <h4>About</h4>\n");
      out.write("                <a href=\"aboutus.jsp\">About Us</a>\n");
      out.write("                <a href=\"privacy.jsp\">Privacy Policy</a>\n");
      out.write("                <a href=\"terms.jsp\">Terms & Conditions</a>\n");
      out.write("                <a href=\"contactus.jsp\">Contact Us</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <h4>My Account</h4>\n");
      out.write("                <a href=\"login.jsp\">Sign In</a>\n");
      out.write("                <a href=\"cart.jsp\">View Cart</a>\n");
      out.write("                <a href=\"help.jsp\">Help</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <p><strong>Secured Payment Methods</strong></p>\n");
      out.write("                <img src=\"img/pay/pay.png\" alt=\"Payment Methods\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"copyright\">\n");
      out.write("                <p>© 2022-2023, Emart.com, Inc.</p>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <script src=\"script.js\"></script>\n");
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
