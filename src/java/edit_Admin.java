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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tilaksingh
 */
public class edit_Admin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Connection conn=null;
    Statement st=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    ResultSetMetaData rsmd=null;
   
    String username,password,admin_name,roles,date;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          System.out.println("hiiiiiiiiii==>");
            //out.println("asdfg");
            
            
            username=request.getParameter("username");
            System.out.println("username=====>"+username);
            password =request.getParameter("password");
            System.out.println("password=====>"+password);
            admin_name=request.getParameter("admin_name");
            System.out.println("admin_name=====>"+admin_name);
            roles=request.getParameter("roles");
            System.out.println("roles=====>"+roles);
            date=request.getParameter("date");
            System.out.println("date=====>"+date);
            
            response.setContentType("text/html;charset=UTF-8");
            try {
                System.out.println("sdfghj");
                PrintWriter out = response.getWriter();
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                conn = DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                ps= conn.prepareStatement("update admin_user set username=?,password=?,name=?,roles=?,admin_date=? where username=?");
                ps.setObject(1,username );
                System.out.println("username======="+username);
                ps.setObject(2,password );
                System.out.println("password======="+password);
                ps.setObject(3,admin_name);
                System.out.println("admin_name======="+admin_name);
                ps.setObject(4,roles);
                System.out.println("roles======="+roles);
                ps.setObject(5,date);
                System.out.println("date======="+date);
                
                int y = ps.executeUpdate();
                if(y>0){
                    System.out.println("Admin Details updated successfully");
                }
                else{
                    System.out.println("Admin Details not updated");
                } 

                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet UpdateUnitServlet</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Servlet UpdateUnitServlet at " + request.getContextPath() + "</h1>");
                out.println("</body>");
                out.println("</html>");
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            System.out.println(""+ex);
            } catch (SQLException ex2) {
                ex2.printStackTrace();
                System.out.println(""+ex2);
            }
        }
    //UpdateUnitServlet
    
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
