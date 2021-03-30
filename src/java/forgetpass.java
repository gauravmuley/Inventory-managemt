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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ANIKET
 */
public class forgetpass extends HttpServlet {

        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String uname=request.getParameter("uname");
        System.out.println("Username--------->"+uname);
        String pass=request.getParameter("pass");
        System.out.println("password---------->"+pass);
        String pass1=request.getParameter("pass1");  
        System.out.println("Conform password-->"+pass1);
         
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
           PreparedStatement pst=con.prepareStatement("SELECT username FROM admin_user");
           ResultSet rs=pst.executeQuery();
            System.out.println("Try Start");
           while(rs.next())
           {
               System.out.println("While Start");
               String a=(String)rs.getObject(1);
               System.out.println(a);
               if(a.equals(uname)) 
               {
                   System.out.println("if Loop 1");
           if(pass.equals(pass1)) 
           {
               System.out.println("If loop 2");
           PreparedStatement stmt=con.prepareStatement("update admin_user set Password = ? where username= ? ");
           stmt.setObject(1,pass);
           stmt.setObject(2,uname);
//           ResultSet rs=stmt.executeQuery("select * from admin_user where username='"+uname+"'");
          int i= stmt.executeUpdate();
           if(i >0)
           {
               System.out.println("update success");
           }
           else
           {
               System.out.println("not");
           }
           }
           else
           {
               System.out.println("pass not match");
           }
               }
               else
               {
                   System.out.println("alert");
                   out.println("alert('Username not exist');");
               }
           }
        }
        catch(Exception e)
        {
            System.out.println("Error::"+e.getCause());
        }
        response.sendRedirect("login.jsp"); 
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
