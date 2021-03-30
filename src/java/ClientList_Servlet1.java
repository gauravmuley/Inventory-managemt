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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ClientList_Servlet1 extends HttpServlet 
{
   Object  CLIENTS_LIST,COMPANY,CONT_RAGISTER_NO,fILE_NO,EMPLOYER_NAME,DESIGNATION,CONTACT_NO,ADDRESS,NG_NAG_NG_AKL,CODE_NO,NEW_USER_NAME,PASSWORD,NEW_PASSWORD,EMAIL_ID,DSC,VALID_FROM,VALID_TO,KYC,FORM11,KYC_UPDATE,DSC_RETURN,FORM_5_A,FORM_9,CHALLAN_GENERATED,POSTING_COMPLETE;
    DataService ds;
    Connection c;
    PreparedStatement pst=null,ps3=null,ps4=null,ps5=null,ps6=null,ps7=null,ps8=null,ps9=null,ps10=null,ps11=null,ps12=null;
    ResultSet rs3=null,rs4=null,rs5=null,rs6=null,rs7=null,rs8=null;
    
    @Override
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException 
      {
          PrintWriter out = response.getWriter();

           try          { 
            
             response.setContentType("text/html;charset=UTF-8");
             
             System.out.println("name-------->");
             
          CLIENTS_LIST=request.getParameter("CLIENTS_LIST");
         System.out.println("CLIENTS_LIST-------->" +CLIENTS_LIST); 
         
         COMPANY=request.getParameter("COMPANY");
         System.out.println("COMPANY-------->" +COMPANY); 
        
         CONT_RAGISTER_NO=request.getParameter("CONT_RAGISTER_NO");
         System.out.println("CONT_RAGISTER_NO-------->" +CONT_RAGISTER_NO); 
        
         fILE_NO=request.getParameter("fILE_NO");
         System.out.println("FILE_NO-------->" +fILE_NO);
          
            EMPLOYER_NAME=request.getParameter("EMPLOYER_NAME");
         System.out.println("EMPLOYER_NAME-------->" +EMPLOYER_NAME);
         
         DESIGNATION=request.getParameter("DESIGNATION");
         System.out.println("DESIGNATION-------->" +DESIGNATION);
         
         CONTACT_NO=request.getParameter("CONTACT_NO");
         System.out.println("CONTACT_NO-------->" +CONTACT_NO);
         
         ADDRESS=request.getParameter("ADDRESS");
         System.out.println("ADDRESS------>" +ADDRESS);
         
         NG_NAG_NG_AKL=request.getParameter("NG_NAG_NG_AKL");
         System.out.println("NG_NAG_NG_AKL-------->" +NG_NAG_NG_AKL);
         
         CODE_NO=request.getParameter("CODE_NO");
         System.out.println("CODE_NO-------->" +CODE_NO);
         
         NEW_USER_NAME=request.getParameter("NEW_USER_NAME");
         System.out.println("NEW_USER_NAME-------->" +NEW_USER_NAME);
         
          PASSWORD=request.getParameter("PASSWORD");
         System.out.println("PASSWORD-------->" +PASSWORD);
         
         NEW_PASSWORD=request.getParameter("NEW_PASSWORD");
         System.out.println("NEW_PASSWORD-------->"+NEW_PASSWORD);
         
         EMAIL_ID=request.getParameter("EMAIL_ID");
         System.out.println("EMAIL_ID-------->" +EMAIL_ID);
         
         DSC=request.getParameter("DSC");
         System.out.println("DSC-------->" +DSC);
         
         VALID_FROM=request.getParameter("VALID_FROM");
         System.out.println("VALID_FROM-------->" +VALID_FROM);
         
          VALID_TO=request.getParameter("VALID_TO");
         System.out.println("VALID_TO-------->" +VALID_TO);
         KYC=request.getParameter("KYC");
         System.out.println("KYC-------->" +KYC);
         
          FORM11=request.getParameter("FORM11");
         System.out.println("FORM11-------->" +FORM11);
         
         KYC_UPDATE=request.getParameter("KYC_UPDATE");
         System.out.println("KYC_UPDATE-------->" +KYC_UPDATE);
         
         DSC_RETURN=request.getParameter("DSC_RETURN");
         System.out.println("DSC_RETURN-------->" +DSC_RETURN);
         
         FORM_5_A=request.getParameter("FORM_5_A");
         System.out.println("FORM_5_A-------->" +FORM_5_A);
         
         FORM_9=request.getParameter("FORM_9");
         System.out.println("FORM_9-------->" +FORM_9);
         
         CHALLAN_GENERATED=request.getParameter("CHALLAN_GENERATED");
         System.out.println("CHALLAN_GENERATED-------->" +CHALLAN_GENERATED);
         
         POSTING_COMPLETE=request.getParameter("POSTING_COMPLETE");
         System.out.println("POSTING_COMPLETE-------->" +POSTING_COMPLETE);
         
         Class.forName("com.mysql.jdbc.Driver");
          c= DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
            System.out.println("Connecting with database"); 
 pst=c.prepareStatement("insert into client_list(CLIENTS_LIST,COMPANY,CONT_RAGISTER_NO,fILE_NO,EMPLOYER_NAME,DESIGNATION,CONTACT_NO,ADDRESS,NG_NAG_NG_AKL,CODE_NO,NEW_USER_NAME,PASSWORD,NEW_PASSWORD,EMAIL_ID,DSC,VALID_FROM,VALID_TO,KYC,FORM_11,KYC_UPDATE,DSC_RETURN,FORM_5_A,FORM_9,CHALLAN_GENERATED,POSTING_COMPLETE) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                                                     //pst.setObject(1,SR_NO);                                      
                                                     pst.setObject(1,CLIENTS_LIST);
                                                     pst.setObject(2,COMPANY);
                                                     pst.setObject(3,CONT_RAGISTER_NO);
                                                     pst.setObject(4,fILE_NO);
                                                     pst.setObject(5,EMPLOYER_NAME);
                                                     pst.setObject(6,DESIGNATION);
                                                     pst.setObject(7,CONTACT_NO);
                                                     pst.setObject(8,ADDRESS);
                                                     pst.setObject(9,NG_NAG_NG_AKL);
                                                     pst.setObject(10,CODE_NO);
                                                     pst.setObject(11,NEW_USER_NAME);
                                                     pst.setObject(12,PASSWORD);
                                                     pst.setObject(13,NEW_PASSWORD);
                                                     pst.setObject(14,EMAIL_ID);
                                                     pst.setObject(15,DSC);
                                                     pst.setObject(16,VALID_FROM);
                                                     pst.setObject(17,VALID_TO);
                                                     pst.setObject(18,KYC);
                                                     pst.setObject(19,FORM11);
                                                     pst.setObject(20,KYC_UPDATE);
                                                     pst.setObject(21,DSC_RETURN);
                                                     pst.setObject(22,FORM_5_A);
                                                     pst.setObject(23,FORM_9);
                                                     pst.setObject(24,CHALLAN_GENERATED);
                                                     pst.setObject(25,POSTING_COMPLETE);
                                                    
                                                  int y= pst.executeUpdate();
           System.out.println("Connecting with database"); 
                   if(y>0){
                    System.out.println("Data inserted succcessfully");
                   response.sendRedirect("security_force_online1762019__working_-_copy/Client_Record.jsp");
                   }else{
                    System.out.println("Data not inserted");}
         }catch(Exception ex) 
          {
              System.out.println("Database.getConnection() Error -->" + ex.getMessage());
              
          }
  
}
}      
      