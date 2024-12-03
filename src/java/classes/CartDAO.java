/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kavindu
 */



public class CartDAO {
    public List<CartItem> getCartItems(String email) throws Exception {
        List<CartItem> cartItems = new ArrayList<>();

        try (Connection connection = DbConnector.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(
                     "SELECT p.pid, p.pName, p.pPrice, p.img m.quantity " +
                     "FROM product p INNER JOIN mycart m ON p.pid = m.pid " +
                     "WHERE m.email = ? AND m.pnumber IS NULL")) {

            preparedStatement.setString(1, email);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    CartItem mycart = new CartItem();
                    mycart.setPid(resultSet.getInt("pid"));
                    mycart.setpName(resultSet.getString("pName"));
                    mycart.setpPrice(resultSet.getDouble("pPrice"));
                    mycart.setQuantity(resultSet.getInt("quantity"));
                    mycart.setImg(resultSet.getBytes("img"));
                    cartItems.add(mycart);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cartItems;
    }
}
