/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.OneToMany;
import java.sql.*;

/**
 *
 * @author Kavindu
 */
public class Category {
    private int cid;
    private String categoryTitle;
    private String categoryDescreption;
    
   @OneToMany(mappedBy = "category") 
   
    private List<Product> product = new ArrayList<>();

    public Category(String categoryTitle, String categoryDescreption) {
        this.categoryTitle = categoryTitle;
        this.categoryDescreption = categoryDescreption;
    }
    

public Category( String categoryTitle,  String categoryDescreption, List<Product> product){
    
this.categoryTitle = categoryTitle;
this.categoryDescreption = categoryDescreption;
this.product = product;

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

    public String getCategoryDescreption() {
        return categoryDescreption;
    }

    public void setCategoryDescreption(String categoryDescreption) {
        this.categoryDescreption = categoryDescreption;
    }

    

    public List<Product> getProduct() {
        return product;
    }

    public void setProduct(List<Product> product) {
        this.product = product;
    }

    
    public boolean addCategory (Connection con) throws SQLException{
         
         String query = "INSERT INTO category (categoryTitle,categoryDescreption) VALUES(?,?)";
         PreparedStatement pstmt = con.prepareStatement(query);
         pstmt.setString(1, categoryTitle);
         pstmt.setString(2, categoryDescreption);
         
         int a = pstmt.executeUpdate();
         
         
         
         return (a>0);
     } 
    
    
    public static List<Category> displaycategoryDetails(Connection con) throws SQLException {
        List<Category> category_list = new ArrayList<>();
        String query = "SELECT * FROM category";
        PreparedStatement pstmt = con.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            int cid = Integer.parseInt(rs.getString("cid"));
            String categoryTitle = rs.getString("categoryTitle");
            String categoryDescreption = rs.getString("categoryDescreption");
            
            
            Category category = new Category(categoryTitle, categoryDescreption);
            category_list.add(category);
        }

        return category_list;
    }
    
    
   


}
