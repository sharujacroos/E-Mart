<%-- 
    Document   : removeCartItem
    Created on : Aug 12, 2023, 8:05:11 AM
    Author     : Kavindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    int pid = Integer.parseInt(request.getParameter("pid"));
    String email = session.getAttribute("email").toString();  
    String jdbcUrl = "jdbc:mysql://localhost:3306/cart?";
    String username = "testuser";
    String password = "testuser";

    try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
        String deleteQuery = "DELETE FROM mycart WHERE pid = ? AND email = '"+email+"'" ;
        try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
            preparedStatement.setInt(1, pid);
            preparedStatement.setString(2, email);
            preparedStatement.executeUpdate();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    response.sendRedirect("newcart.jsp");
%>
