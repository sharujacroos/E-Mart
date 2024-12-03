<%@page import="java.sql.*"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.PreparedStatement"%> 
<% 
   
    String id = request.getParameter("id");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cart", "root", "");
    
    String query="DELETE FROM mycart WHERE pid=?";
    PreparedStatement pstmt=con.prepareStatement(query);
    pstmt.setString(1, id);
   int a = pstmt.executeUpdate();

    if(a>0){
        response.sendRedirect("cart.jsp?status=0");
    }

%>