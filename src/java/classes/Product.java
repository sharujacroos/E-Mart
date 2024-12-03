/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import javax.persistence.ManyToOne;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import classes.Category;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import java.util.Base64;

/**
 *
 * @author Kavindu
 */

@MultipartConfig

public class Product {
    private int pid;
    private String pName;
    private String pDesc;
    private int quantity;
    private double pPrice;
    private int cid;
    private String categoryTitle;
    private String imageFileName;
    private byte[] imageData; // To store image data as a byte array
    
  @ManyToOne
    private Category category;

    public Product(String pName, double pPrice1, String pDesc) {
        this.pName = pName;
        this.pDesc = pDesc;
       
        this.categoryTitle = categoryTitle;
    }

    
    
    public Product(String pName, String pDesc, int quantity, double pPrice, int cid) {
        this.pName = pName;
        this.pDesc = pDesc;
        this.quantity = quantity;
        this.pPrice = pPrice;
        this.cid = cid;
    }

   

    public Product(String pName, String pDesc, double pPrice, byte[] imageData) {
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPrice = pPrice;
        this.imageData = imageData;
    }



    public Product(int pid, String pName, int quantity, double pPrice) {
        this.pid = pid;
        this.pName = pName;
        this.quantity = quantity;
        this.pPrice = pPrice;
    }
    
    public Product(int pid, String pName, String pDesc, double pPrice, byte[] imageData) {
        this.pid = pid;
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPrice = pPrice;
        this.imageData = imageData;
    }
    
    
     // Getters and Setters
      public byte[] getImageData() {
        return imageData;
    }

    public void setImageData(byte[] imageData) {
        this.imageData = imageData;
    }
    
      public String getBase64Image() {
        return imageData != null ? Base64.getEncoder().encodeToString(imageData) : null;
    }
    
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCategoryTitle() {
        return categoryTitle;
    }

    public void setCategoryTitle(String categoryTitle) {
        this.categoryTitle = categoryTitle;
    }
    
    

   // public byte getpPhoto() {
   //     return pPhoto;
   // }

 //   public void setpPhoto(byte pPhoto) {
     //   this.pPhoto = pPhoto;
   // }

    public void setpPrice(double pPrice) {
        this.pPrice = pPrice;
    }

    public double getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }



    
    public boolean addproduct (Connection con) throws SQLException{
         
         String query = "INSERT INTO product (pName,pDesc,quantity,pPrice,cid) VALUES(?,?,?,?,?)";
         PreparedStatement pstmt = con.prepareStatement(query);
         pstmt.setString(1, pName);
         pstmt.setString(2, pDesc);
         pstmt.setInt(3,quantity );
         //pstmt.setByte(3, pPhoto);
         pstmt.setDouble(4, pPrice);
         pstmt.setInt(5, cid);
         
         int a = pstmt.executeUpdate();
         
         
         
         return (a>0);
     } 
    
     public static List<Product> displayproductDetails(Connection con) throws SQLException {
       List<Product> product_list = new ArrayList<>();
       String query = "SELECT * FROM product";
        PreparedStatement pstmt = con.prepareStatement(query);
       ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            String pName = rs.getString("pName");
            String pDesc = rs.getString("pDesc");
           double pPrice = Double.parseDouble(rs.getString("pPrice"));
            byte[] imageData = rs.getBytes("pPhoto");
          
           
           
           Product product = new Product(pName, pDesc, pPrice, imageData);
           product_list.add(product);
        }

       return product_list;
   }
    
     
      // Method to fetch products with image data
   public static List<Product> fetchProductsWithImages(Connection con) throws SQLException {
        List<Product> productList = new ArrayList<>();
        String query = "SELECT pid, pName, pDesc, pPrice, pPhoto FROM product"; // SQL query updated to fetch image as pPhoto
        PreparedStatement pstmt = con.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            int pid = rs.getInt("pid");
            String pName = rs.getString("pName");
            String pDesc = rs.getString("pDesc");
            double pPrice = rs.getDouble("pPrice");
            byte[] imageData = rs.getBytes("pPhoto"); // Retrieve image as byte array

            Product product = new Product(pid, pName, pDesc, pPrice, imageData);
            productList.add(product);
        }

        return productList;
    }

    
}