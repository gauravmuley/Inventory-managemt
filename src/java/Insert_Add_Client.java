/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import SecurityBean.DataService;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class Insert_Add_Client extends HttpServlet {

Object company_n,cid,loc,start_date,end_date;
    DataService con;
    PreparedStatement pst;
    Connection c;
    
    @Override
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException 
      {
          PrintWriter out = response.getWriter();
           try  
         {  
             
           response.setContentType("text/html;charset=UTF-8");
            System.out.println("name-------->");
        
        company_n=request.getParameter("company_name");
        System.out.println("company_name-------->" +company_n); 
        
        loc=request.getParameter("location");
        System.out.println("location-------->"+loc);
         
        //start_date=request.getParameter("start_date");
       // System.out.println("start_date-------->"+start_date);
        
       // end_date=request.getParameter("end_date");
      //  System.out.println("end_date-------->"+end_date);
        try{ 
       Class.forName("com.mysql.jdbc.Driver");
          c = DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
            System.out.println("Connecting with database"); 
            pst=c.prepareStatement("insert into add_company(Company_Name,Location) values(?,?)");
                                                     pst.setObject(1,company_n);
                                                     pst.setObject(2,loc);
                                                    // pst.setObject(3,start_date);
                                                    // pst.setObject(4,end_date);
                                                     
                                                    int y= pst.executeUpdate();
                System.out.println("Y===========>"+y); 
            
                   if(y>0)
                    System.out.println("Data inserted succcessfully");
               else
                    System.out.println("Data not inserted");
              } catch (SQLException ex) { 
          //  Logger.getLogger(InsertEmpMast.class.getName()).log(Level.SEVERE, null, ex);
        } 
          response.sendRedirect("/security_force_online1762019__working_-_copy/Client_Create.jsp");        
         } catch(Exception ex) 
          {
              System.out.println("Database.getConnection() Error -->" + ex.getMessage());
              
          }
         finally {
               try {
                   pst.close();
                     
                   // out.close();
               } catch (SQLException ex) {
                   Logger.getLogger(Insert_Add_Client.class.getName()).log(Level.SEVERE, null, ex);
               }
               try {
                   c.close();
                   // Logger.getLogger(Delete_payroll_servlet.class.getName()).log(Level.SEVERE, null, ex);
               } catch (SQLException ex) {
                   Logger.getLogger(Insert_Add_Client.class.getName()).log(Level.SEVERE, null, ex);
               }
        } 
           
           
      }
}


      