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
public class Edit_Client_Servlet1 extends HttpServlet {

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
   
   // String CLIENTS_LIST, UAN_NO,Full_Name,Pf_No,sname,Father_Name,relationship,Date_Of_Birth,pencel,Date,Bank_Name,Account_No,IFSC_Code,Adhar_No,Pan_No,Mobile_No;
    String  CLIENTS_LIST,COMPANY,CONT_RAGISTER_NO,fILE_NO,EMPLOYER_NAME,DESIGNATION,CONTACT_NO,ADDRESS,NG_NAG_NG_AKL,CODE_NO,NEW_USER_NAME,PASSWORD,NEW_PASSWORD,EMAIL_ID,DSC,VALID_FROM,VALID_TO,KYC,FORM11,KYC_UPDATE,DSC_RETURN,FORM_5_A,FORM_9,CHALLAN_GENERATED,POSTING_COMPLETE;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          System.out.println("hiiiiiiiiii==>");
            //out.println("asdfg");
            
            
            CLIENTS_LIST=request.getParameter("CLIENTS_LIST");
            System.out.println("CLIENTS_LIST=====>"+CLIENTS_LIST);
            COMPANY=request.getParameter("COMPANY");
            System.out.println("COMPANY=====>"+COMPANY);
            CONT_RAGISTER_NO=request.getParameter("CONT_RAGISTER_NO");
            System.out.println("CONT_RAGISTER_NO=====>"+CONT_RAGISTER_NO);
            fILE_NO=request.getParameter("fILE_NO");
            System.out.println("fILE_NO=====>"+fILE_NO);
            EMPLOYER_NAME=request.getParameter("EMPLOYER_NAME");
            System.out.println("EMPLOYER_NAME====>"+EMPLOYER_NAME);
            DESIGNATION=request.getParameter("DESIGNATION");
            System.out.println("DESIGNATION====>"+DESIGNATION);
            CONTACT_NO=request.getParameter("CONTACT_NO");
            System.out.println("CONTACT_NO====>"+CONTACT_NO);
            ADDRESS=request.getParameter("ADDRESS");
            System.out.println("ADDRESS=====>"+ADDRESS);
            NG_NAG_NG_AKL =request.getParameter("NG_NAG_NG_AKL");
            System.out.println("NG_NAG_NG_AKL=====>"+NG_NAG_NG_AKL);
            CODE_NO =request.getParameter("CODE_NO");
            System.out.println("CODE_NO=====>"+CODE_NO);
            NEW_USER_NAME =request.getParameter("NEW_USER_NAME");
            System.out.println("NEW_USER_NAME=====>"+NEW_USER_NAME);
            PASSWORD =request.getParameter("PASSWORD");
            System.out.println("PASSWORD=====>"+PASSWORD);
            NEW_PASSWORD =request.getParameter("NEW_PASSWORD");
            System.out.println("NEW_PASSWORD=====>"+NEW_PASSWORD);
            EMAIL_ID =request.getParameter("EMAIL_ID");
            System.out.println("EMAIL_ID=====>"+EMAIL_ID);
            DSC =request.getParameter("DSC");
            System.out.println("DSC=====>"+DSC);
            VALID_FROM =request.getParameter("VALID_FROM");
            System.out.println("VALID_FROM=====>"+VALID_FROM);
            VALID_TO =request.getParameter("VALID_TO");
            System.out.println("VALID_TO=====>"+VALID_TO);
            KYC =request.getParameter("KYC");
            System.out.println("KYC=====>"+KYC);
            FORM11 =request.getParameter("FORM11");
            System.out.println("FORM11=====>"+FORM11);
            KYC_UPDATE =request.getParameter("KYC_UPDATE");
            System.out.println("KYC_UPDATE=====>"+KYC_UPDATE);
            DSC_RETURN =request.getParameter("DSC_RETURN");
            System.out.println("DSC_RETURN=====>"+DSC_RETURN);
            FORM_5_A =request.getParameter("FORM_5_A");
            System.out.println("FORM_5_A=====>"+FORM_5_A);
            FORM_9 =request.getParameter("FORM_9");
            System.out.println("FORM_9=====>"+FORM_9);
            CHALLAN_GENERATED =request.getParameter("CHALLAN_GENERATED");
            System.out.println("CHALLAN_GENERATED=====>"+CHALLAN_GENERATED);
            POSTING_COMPLETE =request.getParameter("POSTING_COMPLETE");
            System.out.println("POSTING_COMPLETE=====>"+POSTING_COMPLETE);
     
            response.setContentType("text/html;charset=UTF-8");
            try {
               // System.out.println("sdfghj");
                PrintWriter out = response.getWriter();
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                conn = DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                ps= conn.prepareStatement("update client_list set CLIENTS_LIST=?,COMPANY=?,CONT_RAGISTER_NO=?,fILE_NO=?,EMPLOYER_NAME=?,DESIGNATION=?,ADDRESS=?,NG_NAG_NG_AKL=?,CODE_NO=?,NEW_USER_NAME=?,PASSWORD=?,NEW_PASSWORD=?,EMAIL_ID=?,DSC=?,VALID_FROM=?,VALID_TO=?,KYC=?,FORM_11=?,KYC_UPDATE=?,DSC_RETURN=?,FORM_5_A=?,FORM_9=?,CHALLAN_GENERATED=?,POSTING_COMPLETE=? where CONTACT_NO=?");    
                ps.setObject(1,CLIENTS_LIST); 
                System.out.println("CLIENTS_LIST======="+CLIENTS_LIST);
                ps.setObject(2,COMPANY);
                System.out.println("COMPANY======="+COMPANY);
                ps.setObject(3,CONT_RAGISTER_NO);
                System.out.println("CONT_RAGISTER_NO======="+CONT_RAGISTER_NO);
                ps.setObject(4,fILE_NO);
                System.out.println("fILE_NO================="+fILE_NO);
                ps.setObject(5,EMPLOYER_NAME);
                System.out.println("EMPLOYER_NAME======="+EMPLOYER_NAME);
                ps.setObject(6,DESIGNATION);
                System.out.println("DESIGNATION======="+DESIGNATION);
                ps.setObject(7,CONTACT_NO);
                System.out.println("CONTACT_NO======="+CONTACT_NO);
                ps.setObject(8,ADDRESS);
                System.out.println("ADDRESS======="+ADDRESS);
                ps.setObject(9, NG_NAG_NG_AKL);
                System.out.println("NG_NAG_NG_AKL=====>"+NG_NAG_NG_AKL);
                ps.setObject(10,CODE_NO );
                System.out.println("CODE_NO======="+CODE_NO);
                ps.setObject(11,NEW_USER_NAME );
                System.out.println("NEW_USER_NAME======="+NEW_USER_NAME);
                ps.setObject(12,PASSWORD );
                System.out.println("PASSWORD======="+PASSWORD);
                ps.setObject(13,NEW_PASSWORD );
                System.out.println("NEW_PASSWORD======="+NEW_PASSWORD);
                ps.setObject(14,EMAIL_ID );
                System.out.println("EMAIL_ID======="+EMAIL_ID);
                ps.setObject(15,DSC );
                System.out.println("DSC======="+DSC);
                ps.setObject(16,VALID_FROM );
                System.out.println("VALID_FROM======="+VALID_FROM);
                ps.setObject(17,VALID_TO );
                System.out.println("VALID_TO======="+VALID_TO);
                ps.setObject(18,KYC );
                System.out.println("KYC======="+KYC);
                ps.setObject(19,FORM11 );
                System.out.println("FORM11======="+FORM11);
                ps.setObject(20,KYC_UPDATE );
                System.out.println("KYC_UPDATE======="+KYC_UPDATE);
                ps.setObject(21,DSC_RETURN );
                System.out.println("DSC_RETURN======="+DSC_RETURN);
                ps.setObject(22,FORM_5_A );
                System.out.println("FORM_5_A======="+FORM_5_A);
                ps.setObject(23,FORM_9 );
                System.out.println("FORM_9======="+FORM_9);
                 ps.setObject(24,CHALLAN_GENERATED );
                System.out.println("CHALLAN_GENERATED======="+CHALLAN_GENERATED);
                ps.setObject(25,POSTING_COMPLETE);
                System.out.println("POSTING_COMPLETE======="+POSTING_COMPLETE);
               
              
              
                int y = ps.executeUpdate();
                if(y>0){
                    System.out.println("Client Details updated successfully");
                }
                else{
                    System.out.println("Client Details not updated");
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
