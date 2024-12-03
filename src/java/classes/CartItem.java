/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Blob;
import java.util.List;
import javax.persistence.ManyToOne;
import javax.servlet.http.Part;

/**
 *
 * @author Kavindu
 * 
 * 
 */





public class CartItem {
    
    private int pid;
    private int userid;
    private String pName;
    private int quantity;
    private double pPrice;
    private String email;
    private int pnumber;
    private String orderDate;
    private String paymentMethod;
    private String status;
    private int total;
    private int subTotal;
    private Blob pPhoto;
     private byte[] img ;
     
     
@ManyToOne
private Product product;     
     
     

    public CartItem(String pName, int quantity, double pPrice, byte[] img) {
        this.pName = pName;
        this.quantity = quantity;
        this.pPrice = pPrice;
        this.img = img;
    }

    public CartItem(int pid, String pName, int quantity, double pPrice) {
        this.pid = pid;
        this.pName = pName;
        this.quantity = quantity;
        this.pPrice = pPrice;
        
    }
    
    

    CartItem() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(int subTotal) {
        this.subTotal = subTotal;
    }

 
    
    
    

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getpPrice() {
        return pPrice;
    }

    public void setpPrice(double pPrice) {
        this.pPrice = pPrice;
    }


    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public Blob getpPhoto() {
        return pPhoto;
    }

    public void setpPhoto(Blob pPhoto) {
        this.pPhoto = pPhoto;
    }

    public byte[] getImg() {
        return img;
    }

    public void setImg(byte[] img) {
        this.img = img;
    }

    void setImg(String img) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    

    
    
}
