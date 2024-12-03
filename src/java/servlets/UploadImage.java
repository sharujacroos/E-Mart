/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.DbConnector;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Kavindu
 */
@MultipartConfig
public class UploadImage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String pName = request.getParameter("pName");
        String pDesc = request.getParameter("pDesc");
        Part pPhoto = request.getPart("pPhoto");
        double pPrice = Double.parseDouble(request.getParameter("pPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String categoryTitle = request.getParameter("categoryTitle");

        try {
            InputStream imageInputStream = pPhoto.getInputStream();
            String query = "INSERT INTO product (pName, pDesc, pPhoto, pPrice,quantity,cid) VALUES (?, ?, ?, ?, ?,?)";
            Connection con = DbConnector.getConnection();
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, pName);
            pstmt.setString(2, pDesc);
            pstmt.setBlob(3, imageInputStream);
            pstmt.setDouble(4, pPrice);
            pstmt.setInt(5, quantity);
            pstmt.setString(6, categoryTitle);
            int a = pstmt.executeUpdate();
            pstmt.close();
            con.close();

            response.sendRedirect("admin/product.jsp?msg=done");
        } catch (Exception e) {
           response.sendRedirect("product.jsp?msg=wrong");
            
        }
    }

    
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
