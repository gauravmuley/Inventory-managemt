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
public class edit_employee_DetailsED extends HttpServlet {

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
   
    String Date1,CLIENTS_LIST, UAN_NO,Full_Name,EMP_NO,Pf_No,sname,Father_Name,relationship,Date_Of_Birth,pencel,Date,Bank_Name,Account_No,IFSC_Code,Adhar_No,adharadd,Pan_No,Mobile_No;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          System.out.println("hiiiiiiiiii==>");
            //out.println("asdfg");
            
            
            Date1=request.getParameter("Date1");
            System.out.println("Date1=====>"+Date1);
            CLIENTS_LIST =request.getParameter("CLIENTS_LIST");
            System.out.println("CLIENTS_LIST=====>"+CLIENTS_LIST);
            UAN_NO=request.getParameter("u_no");
            System.out.println("u_no=====>"+UAN_NO);
            Full_Name=request.getParameter("fulname");
            System.out.println("fulname=====>"+Full_Name);
            EMP_NO=request.getParameter("EMP_NO");
            System.out.println("EMP_NO=====>"+EMP_NO);
            Pf_No=request.getParameter("pfno");
            System.out.println("pfno=====>Pf_No");
            sname=request.getParameter("sname");
            System.out.println("sname====>"+sname);
            Father_Name=request.getParameter("fathname");
            System.out.println("fathname====>"+Father_Name);
            relationship=request.getParameter("relationship");
            System.out.println("relationship====>"+relationship);
            Date_Of_Birth=request.getParameter("dob");
            System.out.println("dob=====>"+Date_Of_Birth);
            pencel =request.getParameter("pencel");
            System.out.println("pencel=====>"+pencel);
            Date =request.getParameter("date");
            System.out.println("date=====>"+Date);
            Bank_Name =request.getParameter(" bname");
            System.out.println("bname=====>"+Bank_Name);
            Account_No =request.getParameter("accno");
            System.out.println("accno=====>"+Account_No);
            IFSC_Code =request.getParameter("ifscode");
            System.out.println("ifscode=====>"+IFSC_Code);
            Adhar_No =request.getParameter("adhar");
            System.out.println("adhar=====>"+Adhar_No);
            adharadd =request.getParameter("adharadd");
            System.out.println("adharadd=====>"+adharadd);
            Pan_No =request.getParameter("panno");
            System.out.println("panno=====>"+Pan_No);
            Mobile_No =request.getParameter("mobno");
            System.out.println("mobno=====>"+Mobile_No);
        
            response.setContentType("text/html;charset=UTF-8");
            try {
                System.out.println("sdfghj");
                PrintWriter out = response.getWriter();
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                conn = DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                ps= conn.prepareStatement("update recruitment_table set Date1=?,CLIENTS_LIST=?,UAN_NO=?,Full_Name=?,EMP_NO=?,Pf_No=?,sname=?,Father_Name=?,relationship=?,Date_Of_Birth=?,pencel=?,Date=?,Bank_Name=?,Account_No=?,IFSC_Code=?,Adhar_No=?,adharadd=?,Pan_No=?, where Mobile_No=?");
                ps.setObject(1,Date1 );
                System.out.println("Date1======="+Date1);
                ps.setObject(2,CLIENTS_LIST );
                System.out.println("CLIENTS_LIST======="+CLIENTS_LIST);
                ps.setObject(3,UAN_NO);
                System.out.println("UAN_NO======="+UAN_NO);
                ps.setObject(4,Full_Name);
                System.out.println("Full_Name======="+Full_Name);
                ps.setObject(5,EMP_NO);
                System.out.println("EMP_NO======="+EMP_NO);
                ps.setObject(6,Pf_No);
                System.out.println("Pf_No================="+Pf_No);
                ps.setObject(7,sname);
                System.out.println("sname======="+sname);
                ps.setObject(8,Father_Name);
                System.out.println("Father_Name======="+Father_Name);
                ps.setObject(9,relationship);
                System.out.println("relationship======="+relationship);
                ps.setObject(10,Date_Of_Birth);
                System.out.println("Date_Of_Birth======="+Date_Of_Birth);
                ps.setObject(11, pencel);
                System.out.println("pencel=====>"+pencel);
                ps.setObject(12,Date );
                System.out.println("Date======="+Date);
                ps.setObject(13,Bank_Name );
                System.out.println("Bank_Name======="+Bank_Name);
                ps.setObject(14,Account_No );
                System.out.println("Account_No======="+Account_No);
                ps.setObject(15,IFSC_Code );
                System.out.println("IFSC_Code======="+IFSC_Code);
                ps.setObject(16,Adhar_No );
                System.out.println("Adhar_No======="+Adhar_No);
                 ps.setObject(17,adharadd );
                System.out.println("adharadd======="+adharadd);
                ps.setObject(18,Pan_No );
                System.out.println("Pan_No======="+Pan_No);
                ps.setObject(19,Mobile_No );
                System.out.println("Mobile_No======="+Mobile_No);
                
                
                int y = ps.executeUpdate();
                if(y>0){
                    System.out.println("Employee Details updated successfully");
                }
                else{
                    System.out.println("employee Details not updated");
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
