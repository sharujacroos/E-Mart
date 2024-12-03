<%-- 
    Document   : logouthelp
    Created on : Aug 13, 2023, 7:51:42 PM
    Author     : Kavindu
--%>

<%@page import="classes.adminlogout"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String userEmail1 = (String) session.getAttribute("email");
adminlogout.logout(userEmail1, request, response);
%>