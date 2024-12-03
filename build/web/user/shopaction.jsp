<%-- 
    Document   : shopaction
    Created on : Aug 11, 2023, 1:34:30 AM
    Author     : Kavindu
--%>
<%--
<%@page import="classes.Category"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.Connection"%>

<% 
    String pName = request.getParameter("pName");
    String categoryTitle = request.getParameter("categoryTitle");
    double pPrice = Double.parseDouble(request.getParameter("pPrice"));

Product product = new Product( pName, pPrice, categoryTitle);
 if(product.addCategory(DbConnector.getConnection())){
     response.sendRedirect("category.jsp?msg=done");
 }
 else{ 
        response.sendRedirect("category.jsp?msg=wrong");
    }

%>
--%>