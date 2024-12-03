<%-- 
    Document   : categoryaction
    Created on : Aug 9, 2023, 6:15:29 PM
    Author     : Kavindu
--%>

<%@page import="classes.Category"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.Connection"%>

<% 
String categoryTitle = request.getParameter("categoryTitle");
String categoryDescreption = request.getParameter("categoryDescreption");

Category category = new Category( categoryTitle, categoryDescreption);
 if(category.addCategory(DbConnector.getConnection())){
     response.sendRedirect("category.jsp?msg=done");
 }
 else{ 
        response.sendRedirect("category.jsp?msg=wrong");
    }

%>