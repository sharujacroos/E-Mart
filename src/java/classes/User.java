/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kavindu
 */
public class User {

    private int userid;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String role;
    private int pnumber;
    private String review;
    
    
    

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(int userid, String firstName, String lastName, String email, String role, int pnumber) {
        this.userid = userid;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.role = role;
        this.pnumber = pnumber;
    }

    public User(String firstName, String lastName, String email, int pnumber, String review) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.pnumber = pnumber;
        this.review = review;
    }

    public User(int userid, String firstName, String lastName, String email, String role, int pnumber, String review) {
        this.userid = userid;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.role = role;
        this.pnumber = pnumber;
        this.review = review;
    }
    
    

    public User(String firstName, String lastName, String email, String password, int pnumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.pnumber = pnumber;
    }
    
    

    public User(String firstName, String lastName, String email, String password, String role, int pnumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.role = role;
        this.pnumber = pnumber;
    }

    public User(String firstName, String lastName, String email, int pnumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.pnumber = pnumber;
    }

    public User(String firstName, String lastName, int pnumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.pnumber = pnumber;
    }

    public User() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getFirstname() {
        return firstName;
    }

    public void setFirstname(String firstName) {
        this.firstName = firstName;
    }

    public String getLastname() {
        return lastName;
    }

    public void setLastname(String lastName) {
        this.lastName = lastName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPnumber() {
        return pnumber;
    }

    public void setPnumber(int pnumber) {
        this.pnumber = pnumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }
    
    
    
    

    public boolean register(Connection con) throws SQLException {

        String query = "INSERT INTO user(firstName,lastName,email,password,role,pnumber) VALUES(?,?,?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, firstName);
        pstmt.setString(2, lastName);
        pstmt.setString(3, email);
        pstmt.setString(4, password);
        pstmt.setString(5, role);
        pstmt.setInt(6,pnumber);

        int a = pstmt.executeUpdate();

        return (a > 0);
    }

    public boolean authenticate(Connection con) throws SQLException {

        String query = "SELECT * FROM user WHERE email = '"+email+"' and password ='"+password+"' " ;
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, email);
        ResultSet rs = pstmt.executeQuery();
  
        if (rs.next()) {
            String db_password = rs.getString("password");
            if (password.equals(db_password)) {
                int userid = Integer.parseInt(rs.getString("userid"));
                String firstName = rs.getString("firstName");
                String lastName = rs.getString("lastName");
                String role = rs.getString("role");
                int pnumber= Integer.parseInt(rs.getString("pnumber"));

                return true;
            } else {
                return false;
            }

        } else {

        }
        return false;
        
    }


    public static List<User> displayUserDetails(Connection con) throws SQLException {
        List<User> user_list = new ArrayList<>();
        String query = "SELECT * FROM user";
        PreparedStatement pstmt = con.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            int userid = Integer.parseInt(rs.getString("userid"));
            String firstName = rs.getString("firstName");
            String lastName = rs.getString("lastName");
            String email = rs.getString("email");
            String role = rs.getString("role");
          //  String review = rs. getString("review");
            int pnumber = Integer.parseInt(rs.getString("pnumber"));

            User user = new User(userid, firstName, lastName, email, role, pnumber);
            user_list.add(user);
        }

        return user_list;
    }
    
    
    
public boolean update(Connection con) throws SQLException {
    String updateQuery = "UPDATE user SET firstName=?, lastName=?, pnumber=?, review=? WHERE email=?";
    PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
    
    preparedStatement.setString(1, firstName);
    preparedStatement.setString(2, lastName); 
    preparedStatement.setInt(3, pnumber);
    preparedStatement.setString(4, review);
    preparedStatement.setString(5, email);  
    
    int rowsAffected = preparedStatement.executeUpdate();

    return rowsAffected > 0;
}
     /* public static List<User> displayloggedUserDetails(Connection con) throws SQLException {
        List<User> user_list = new ArrayList<>();
        String email = request.getParameter("email");
        String query = "select * from users where email='"+email+"'";
        PreparedStatement pstmt = con.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            String firstName = rs.getString("firstName");
            String lastName = rs.getString("lastName");
            int pnumber = Integer.parseInt(rs.getString("pnumber"));

            User user = new User(firstName, lastName,pnumber);
            user_list.add(user);
        }

        return user_list;
    }  
  */

    
    
   public static User getUserByEmail(Connection connection, String email) throws SQLException {
        String selectQuery = "SELECT * FROM user WHERE email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
            preparedStatement.setString(1, email);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    User user = new User();
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                    return user;
                }
            }
        }
        return null;
    }
     public void updatePassword(Connection connection) throws SQLException {
        String updateQuery = "UPDATE user SET password = ? WHERE email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
            preparedStatement.setString(1, getPassword());
            preparedStatement.setString(2, getEmail());
            preparedStatement.executeUpdate();
        }
    }

    
     
      public static List<User> displayUserreview(Connection con) throws SQLException {
        List<User> user_list = new ArrayList<>();
        String query = "SELECT * FROM user";
        PreparedStatement pstmt = con.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            int userid = Integer.parseInt(rs.getString("userid"));
            String firstName = rs.getString("firstName");
            String lastName = rs.getString("lastName");
            String email = rs.getString("email");
            String role = rs.getString("role");
            String review = rs. getString("review");
            int pnumber = Integer.parseInt(rs.getString("pnumber"));

            User user = new User(userid, firstName, lastName, email, role, pnumber, review);
            user_list.add(user);
        }

        return user_list;
    }
     
     
     
     
     
     
    
}
    
    

