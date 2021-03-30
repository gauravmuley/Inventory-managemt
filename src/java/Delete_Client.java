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
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class Delete_Client extends HttpServlet {
    
     Connection conn=null;
    Statement st=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    ResultSetMetaData rsmd=null;
   
  String CONTACT_NO;

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("-------------------------");
            CONTACT_NO =request.getParameter("CONTACT_NO");
            System.out.println("delete CONTACT_NO::::::::::"+CONTACT_NO);
            
            response.setContentType("text/html;charset=UTF-8");
            try {
                PrintWriter out = response.getWriter();

                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                conn = DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                ps= conn.prepareStatement("delete from client_list where CONTACT_NO=?");
                ps.setString(1,CONTACT_NO);
               int count= ps.executeUpdate();
               if(count==0){
                   System.out.println("not delete");
               }else{
                System.out.println("Delete Client record");
               }
   
            }catch(Exception e){}
    }
}


