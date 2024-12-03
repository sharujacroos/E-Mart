<%-- 
    Document   : changepasswordaction
    Created on : Aug 11, 2023, 9:20:07 PM
    Author     : Kavindu
--%>
<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%@ page import="java.sql.*" %>


<% try {
        String email = (String) session.getAttribute("email");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (email == null || oldPassword == null || newPassword == null || confirmPassword == null) {
            response.sendRedirect("changepassword.jsp?status=4");
        } else if (!confirmPassword.equals(newPassword)) {
            response.sendRedirect("changepassword.jsp?status=1");
        } else {
            Connection con = DbConnector.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE email = ? AND password = ?");
            ps.setString(1, email);
            ps.setString(2, oldPassword);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                ps = con.prepareStatement("UPDATE user SET password = ? WHERE email = ?");
                ps.setString(1, newPassword);
                ps.setString(2, email);
                ps.executeUpdate();
                response.sendRedirect("changepassword.jsp?status=2");
            } else {
                response.sendRedirect("changepassword.jsp?status=3");
            }

            con.close();
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("changepassword.jsp?status=4");
    }
    
    
%>