/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kavindu
 */
public class adminlogout {
    
    
        public static void logout(String userEmail, HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Get the current session or create a new one if not exists
        HttpSession session = request.getSession(false);

        if (session != null) {
            // Invalidate the session
            session.invalidate();
            
        }

        // Redirect to the index page
        response.sendRedirect("../user/login.jsp");
   
    
}
}
    
    
    
    

