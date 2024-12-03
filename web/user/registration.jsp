<%-- 
    Document   : registration
    Created on : Aug 8, 2023, 11:05:23 AM
    Author     : Kavindu
--%>

<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%
    String firstname = request.getParameter("firstName");
    String lastname = request.getParameter("lastName");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String role = "customer";
    int pnumber = Integer.parseInt(request.getParameter("pnumber")); 

    User user = new User( firstname, lastname, email, password, role, pnumber);
    if (user.register(DbConnector.getConnection())) {
        response.sendRedirect("signup.jsp?status=1");
    } else {
        response.sendRedirect("signup.jsp?status=0");
    }
%>