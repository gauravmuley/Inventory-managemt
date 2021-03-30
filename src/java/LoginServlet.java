/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author Tilaksingh
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @
 */

public class LoginServlet extends HttpServlet {
    
    Connection conn=null;
    Statement st=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    ResultSetMetaData rsmd=null;
    
    String username, password,compname;
    
   
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                System.out.println("call");
            String Name= request.getParameter("Name");
            System.out.println("Name"+Name);
            username = request.getParameter("username");
            password = request.getParameter("password");
            compname=request.getParameter("company_name");
            System.out.println("get company name="+compname);
            System.out.println("call");
            response.setContentType("text/html;charset=UTF-8");
            try {
            PrintWriter out = response.getWriter();
            
            Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
            conn = DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
         //   conn = DriverManager.getConnection("jdbc:mysql://103.235.104.87:3306/unitysec_security_force","unitysecurity","v)7Ny!6Ao5");
            ps= conn.prepareStatement("Select username,password from admin_user where username=? and password=?");
            ps.setString(1,username);
            ps.setString(2,password);
          
            System.out.println("Session====>"+username+"password="+password);
            ResultSet rs = ps.executeQuery();                        
            if(rs.next()){   
                System.out.println("Session====>");
               HttpSession session_login = request.getSession();
               boolean st = session_login.isNew();
               System.out.println("session=========>"+st);
               session_login.setAttribute("session_name", st);
               session_login.setAttribute("uname",username);
               session_login.setAttribute("cname",compname);
                session_login.setAttribute("cnameP",compname);

                System.out.println(" set company name="+compname);
                
              
                  
               if(!st){
                   System.out.println("session inside if=========>"+st);
                   response.sendRedirect("index.jsp");
               }
               else{
                   System.out.println("session inside else=========>"+st);
                   response.sendRedirect("login.jsp");
               }
            }
//              ps= conn.prepareStatement("update company set company_name=?");
//                 ps.setString(1,compname);
//                 int y = ps.executeUpdate();
//                 if(y>=0){
//                System.out.println("Account updated successfully");
//            }
//           else{
//                System.out.println("product not inserted");     
//                HttpSession session = request.getSession();
//                session.invalidate();
//                response.sendRedirect("login.jsp");
//                System.out.println("Invalidate Session====>");
//            }
            /* TODO output your page here. You may use following sample code. */
           
        } catch (ClassNotFoundException ex) {
            System.out.println(""+ex);
        } catch (SQLException ex2) {
            System.out.println(""+ex2);
        }
            finally
            {
                    try {
                        ps.close();
                        conn.close();
                    } catch (SQLException ex) {
                        Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
            }
    }
   
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
