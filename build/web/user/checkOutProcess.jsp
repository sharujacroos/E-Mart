<%-- 
    Document   : checkOutProcess
    Created on : Aug 13, 2023, 10:02:44 AM
    Author     : User
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="classes.DbConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out </title>
    </head>
    <body>

        <!--
        try
        {
                 Class.forName("com.mysql.jdbc.Driver");
                   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cart", "root", "");
                   Statement st=conn.createStatement();
                   int i=st.executeUpdate("insert into user(firstName,lastName,email,city,state,pnumber)values('"+first_name+"','"+last_name+"','"+email+"','"+city+"','"+state+"','"+phone+"')");
                if(i>0){
                   out.println("Data is successfully inserted!");
                }}
                catch(Exception e)
                {
                System.out.print(e);
                e.printStackTrace();
                }
        -->
        <%

            String first_name = request.getParameter("fname");
            String last_name = request.getParameter("lname");
            String email = request.getParameter("email");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String phone = request.getParameter("phone");
            String slip=request.getParameter("slip");
            Connection con = new DbConnector().getConnection();
            String query = "insert into ordertable(fname,lname,email,city,state,pnumber,slip)values (?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, first_name);
            ps.setString(2, last_name);
            ps.setString(3, email);
            ps.setString(4, city);
            ps.setString(5, state);
            ps.setString(6, phone);
            ps.setString(7, slip);

            int a = ps.executeUpdate();
            if (a > 0) {
                response.sendRedirect("checkout.jsp?status=0");
            }else{
               response.sendRedirect("checkout.jsp?status=1");
  
            }
       
      %>  
          
          
    </body>
</html>