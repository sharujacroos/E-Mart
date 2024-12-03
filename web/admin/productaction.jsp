<%-- 
    Document   : productaction
    Created on : Aug 9, 2023, 10:17:27 AM
    Author     : Kavindu
--%>

<%@page import="classes.Product"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="classes.Category"%>

<% 
//int cid = Integer.parseInt(request.getParameter("cid"));
String pName = request.getParameter("pName");
String pDesc = request.getParameter("pDesc");
//byte pPhoto = Byte.parseByte(request.getParameter("pPhoto"));
double pPrice = Double.parseDouble(request.getParameter("pPrice"));
String cid= request.getParameter("categoryTitle");
int quantity = Integer.parseInt(request.getParameter("quantity"));

Product product = new Product(pName, pDesc,quantity,pPrice, Integer.parseInt(cid));
 if(product.addproduct(DbConnector.getConnection())){
     response.sendRedirect("product.jsp?msg=done");
 }
 else{ 
        response.sendRedirect("product.jsp?msg=wrong");
    }

%>