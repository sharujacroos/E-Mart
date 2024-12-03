<%-- 
    Document   : logeed
    Created on : Aug 8, 2023, 1:14:38 PM
    Author     : Kavindu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%@page session="true" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
if("admin@gmail.com".equals(email) && "admin".equals(password)){
    session.setAttribute("email", email);
    response.sendRedirect("../admin/adminindex.jsp");
}else{
    int z = 0;
    try {
            Connection con = DbConnector.getConnection();
        String query = "SELECT * FROM user WHERE email = '"+email+"' and password ='"+password+"' " ;
        PreparedStatement pstmt = con.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();
        while(rs.next())
        {
            z=1;
            session.setAttribute("email", email);
            response.sendRedirect("userindex.jsp");
        }
        if(z==0)
            response.sendRedirect("login.jsp?status=0");
            
            
            }catch (Exception e) {
                 response.sendRedirect("login.jsp?status=1");
        }
        
    }

  
%>
