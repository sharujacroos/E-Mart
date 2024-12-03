<%-- 
    Document   : userindexaction
    Created on : Aug 11, 2023, 12:16:33 AM
    Author     : Kavindu
--%>

<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%
    String firstname = request.getParameter("firstName");
    String lastname = request.getParameter("lastName");
    String email = request.getParameter("email");
    int pnumber = Integer.parseInt(request.getParameter("pnumber")); 
     String review = request.getParameter("review");    
try {
    User user = new User( firstname, lastname, email, pnumber , review);
    if (user. update(DbConnector.getConnection())) {
        response.sendRedirect("userindex.jsp?status=1");
    } else {
        response.sendRedirect("userindex.jsp?status=0");
    }
    
            
        } catch (Exception e) {
          response.sendRedirect("userindex.jsp?status=2"); 
        }

%>



