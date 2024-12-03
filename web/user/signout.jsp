<%-- 
    Document   : signout
    Created on : Aug 11, 2023, 1:26:14 AM
    Author     : Kavindu
--%>

<%@page import="classes.logouthelper"%>
<%
String userEmail = (String) session.getAttribute("email");
logouthelper.logoutAndRedirect(userEmail, request, response);
%>