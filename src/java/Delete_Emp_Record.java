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
public class Delete_Emp_Record extends HttpServlet {
    
     Connection conn=null;
    Statement st=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    ResultSetMetaData rsmd=null;
   
    String Mobile_No;

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("-------------------------");
            Mobile_No =request.getParameter("Mobile_No");
            System.out.println("delete eid::::::::::"+Mobile_No);
            
            response.setContentType("text/html;charset=UTF-8");
            try {
                PrintWriter out = response.getWriter();

                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                conn= DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                ps= conn.prepareStatement("delete from recruitment_table where Mobile_No=?");
                ps.setString(1, Mobile_No);
               int count= ps.executeUpdate();
               if(count==0){
                   System.out.println("not delete");
               }else{
                System.out.println("Delete Employee");
               }
   
            }catch(Exception e){}
    }
}


