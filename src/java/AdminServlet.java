/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kunal
 */
public class AdminServlet extends HttpServlet {
    Connection conn=null;
    Statement st=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    ResultSetMetaData rsmd=null;
    
    String username, password, admin_name, roles,admin_date;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            System.out.println("starting");
            username = request.getParameter("username");
            password = request.getParameter("password");
           admin_name=request.getParameter("admin_name");
            roles = request.getParameter("roles");
            admin_date = request.getParameter("admin_date");
            System.out.println("UserName"+username);
            response.setContentType("text/html;charset=UTF-8");
            try {
            PrintWriter out = response.getWriter();
                System.out.println("start");
            Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            ps= conn.prepareStatement("insert into admin_user (username,password,name,roles,admin_date) values(?,?,?,?,?)");
            ps.setObject(1, username);
            ps.setObject(2, password);
            ps.setObject(3, admin_name);
            ps.setObject(4, roles);
            ps.setObject(5, admin_date);
            
            int y = ps.executeUpdate();
            if(y>=0){
                System.out.println("Admin added successfully");
            }
            else{
                System.out.println("Admin not inserted");
            }        
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } catch (ClassNotFoundException ex) {
            System.out.println(""+ex);
        } catch (SQLException ex2) {
            System.out.println(""+ex2);
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
