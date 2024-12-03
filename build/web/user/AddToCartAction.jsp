<%-- 
    Document   : AddToCartAction
    Created on : Aug 12, 2023, 5:42:13 PM
    Author     : Kavindu
--%>

<%@page import="classes.CartManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="classes.DbConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>





<%
    String email = session.getAttribute("email").toString();
    String pidStr = request.getParameter("pid");

    if (pidStr != null && !pidStr.isEmpty()) {
        int pid = Integer.parseInt(pidStr);
        CartManager.addToCart(email, pid);
        
     response.sendRedirect("index.jsp?status=1");
    } else {
        response.sendRedirect("index.jsp?status=3");
    }
%>
