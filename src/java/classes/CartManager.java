/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Kavindu
 */


public class CartManager {

    private static final String SELECT_PRODUCT_BY_PID = "SELECT * FROM product WHERE pid = ?";
    private static final String SELECT_CART_ITEM_BY_PID_AND_EMAIL = "SELECT * FROM mycart WHERE pid = ? AND email = ?";
    private static final String UPDATE_CART_ITEM = "UPDATE mycart SET subTotal = ?, quantity = ? WHERE pid = ? AND email = ?";
    private static final String INSERT_CART_ITEM = "INSERT INTO mycart (email, pid, quantity, total, subTotal) VALUES (?, ?, ?, ?, ?)";

    private static PreparedStatement prepareStatement(Connection con, String query) throws SQLException {
        return con.prepareStatement(query);
    }

    public static PreparedStatement prepareSelectProductByPid(Connection con) throws SQLException {
        return prepareStatement(con, SELECT_PRODUCT_BY_PID);
    }

    public static PreparedStatement prepareSelectCartItemByPidAndEmail(Connection con) throws SQLException {
        return prepareStatement(con, SELECT_CART_ITEM_BY_PID_AND_EMAIL);
    }

    public static PreparedStatement prepareUpdateCartItem(Connection con) throws SQLException {
        return prepareStatement(con, UPDATE_CART_ITEM);
    }

    public static PreparedStatement prepareInsertCartItem(Connection con) throws SQLException {
        return prepareStatement(con, INSERT_CART_ITEM);
    }

    public static void addToCart(String email, int pid) {
        try (
            Connection con = DbConnector.getConnection();
            PreparedStatement psProduct = prepareSelectProductByPid(con);
            PreparedStatement psCartItem = prepareSelectCartItemByPidAndEmail(con);
            PreparedStatement psUpdate = prepareUpdateCartItem(con);
            PreparedStatement psInsert = prepareInsertCartItem(con)
        ) {
            psProduct.setInt(1, pid);
            ResultSet rsProduct = psProduct.executeQuery();
            if (rsProduct.next()) {
                int pPrice = rsProduct.getInt("pPrice");

                psCartItem.setInt(1, pid);
                psCartItem.setString(2, email);
                ResultSet rsCartItem = psCartItem.executeQuery();

                if (rsCartItem.next()) {
                    int subTotal = rsCartItem.getInt("subTotal");
                    int quantity = rsCartItem.getInt("quantity") + 1;

                    psUpdate.setInt(1, subTotal + pPrice);
                    psUpdate.setInt(2, quantity);
                    psUpdate.setInt(3, pid);
                    psUpdate.setString(4, email);
                    psUpdate.executeUpdate();
                } else {
                    psInsert.setString(1, email);
                    psInsert.setInt(2, pid);
                    psInsert.setInt(3, 1);
                    psInsert.setInt(4, pPrice);
                    psInsert.setInt(5, pPrice);
                    psInsert.executeUpdate();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ... Other methods ...
}



    
    

    
    
    
    
    
    
    
    

