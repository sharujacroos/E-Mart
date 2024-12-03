/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import static java.time.temporal.TemporalQueries.localDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kavindu
 */
public class Order {
    
    private LocalDate date;
    private int order_ref;
    private String email;
    private int pPrice;
    private String pName;
    private String status;
    private int userid;
    private int pid;
    private int total;
    private String city;
    private String state;
 
    
    
    
    private List<CartItem> cartItems;



    public Order(LocalDate date, int order_ref, String email, int pPrice, String pName, String status, int total, String city, String state) {
        this.date = date;
        this.order_ref = order_ref;
        this.email = email;
        this.pPrice = pPrice;
        this.pName = pName;
        this.status = status;
        this.total = total;
        this.city = city;
        this.state = state;
    }

    
    
    
    
    
    public Order(String email, int total) {
        this.email = email;
        this.total = total;
    }

    
    
    
    public Order(int total) {
        this.total = total;
    }

  
   

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

   

    public int getOrder_ref() {
        return order_ref;
    }

    public void setOrder_ref(int order_ref) {
        this.order_ref = order_ref;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

  
 
    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
    
    
    
   
    
    
     public static List<Order> displayorderDetails(Connection con) throws SQLException {
        List<Order> order_list = new ArrayList<>();
        String query = "SELECT * FROM ordertable ";
        PreparedStatement pstmt = con.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            int userid = Integer.parseInt(rs.getString("userid"));
            int pid = Integer.parseInt(rs.getString("pid"));
            LocalDate date = LocalDate.parse(rs.getString("date"));
            int order_ref = Integer.parseInt(rs.getString("order_ref"));
            String email = rs.getString("email");
            int pPrice = Integer.parseInt(rs.getString("pPrice"));
            String pName = rs.getString("pName");
            String status = rs.getString("status");
            String state = rs.getString("state");
            String city = rs.getString("city");
           int total = Integer.parseInt(rs.getString("total"));
            
            
            
            Order order = new Order (date, order_ref, email, pPrice, pName, status, total, state, city);
            order_list.add(order);
        }

        return order_list;
    }
    
    
    
}
