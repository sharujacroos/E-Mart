<%-- 
    Document   : categoryaction
    Created on : Aug 9, 2023, 6:15:29 PM
    Author     : Kavindu
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="classes.Order"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.Connection"%>

<% 
LocalDate date = LocalDate.parse(request.getParameter("date"));       
int order_ref = Integer.parseInt(request.getParameter("order_ref")); 
String email= request.getParameter("email");
int pPrice = Integer.parseInt(request.getParameter("pPrice"));
String pName = request.getParameter("pName");
String status = request.getParameter("status");
int total= Integer.parseInt(request.getParameter("total"));
String state = request.getParameter("state");
String city = request.getParameter("city");

Order order = new Order (date, order_ref, email, pPrice, pName, status, total, state, city);
 

%>