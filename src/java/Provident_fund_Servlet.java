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


public class Provident_fund_Servlet extends HttpServlet 
{
   // Object   LWF,skill_Allowance,Education_Allowance,Washing_Allowance,Conveyance_Allowance,sub_unit,Wages_Register_Rate,b_group,u_no,gatep,compname,compid,des,date,fulname,fathname,edu,preexp,dob,bp,gen,adhar,panno,nomin,relwn,nodob,addr,vill,po,tal,ps,dis,state,pcode,mobno,phone,addr1,vill1,po1,tal1,ps1,dis1,state1,pcode1,mobno1,phone1,bname,accno,brname,ifscode,pfno,esicno,Employee_Type,dep,pfp,escicp,hra,bonus,pftype,per_day_Rate,payment_mode,sname,relationship,pencel;
    Object fulname ,dob,fathname,relationship,Gender,mobno,Email,pf,pension,u_no,pfno,c_no,ppo,Intrnational_Worker,Country,Passport,Valid_from,Valid_To,Education,Marital_Status,Show,Abled_Category,Bank_Acc_Name,Bank_Acc_No,Bank_Acc_Remark,Addhar_Name,Addhar_No,Addhar_Remark,PAN_Name,PAN_No,PAN_Remark,Passport_Name,Passport_No,Passport_Remark,Driving_Licence_Name,Driving_Licence_No,Driving_Licence_Remark,Election_Card_Name,Election_Card_No,Election_Card_Remark,Ration_Card_Name,Ration_Card_No,Ration_Card_Remark,ESIC_Card_Name,ESIC_Card_No,ESIC_Card_Remark;
    DataService ds;
    Connection c;
    PreparedStatement pst=null,ps3=null,ps4=null,ps5=null,ps6=null,ps7=null,ps8=null,ps9=null,ps10=null,ps11=null,ps12=null;
    ResultSet rs3=null,rs4=null,rs5=null,rs6=null,rs7=null,rs8=null;
    int Skilled_Employee,Skilled_Employee1,Semiskilled_Employee,Semiskilled_Employee1,Unskilled_Employee,Unskilled_Employee1,Supervisor,Supervisor1,total, total1,Skilled_Employee2,Semiskilled_Employee2,Unskilled_Employee2,Supervisor2,total2;
    
    @Override
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException 
      {
           PrintWriter out = response.getWriter();
          try{ 
         System.out.println("mobno1111111111-------->");
            response.setContentType("text/html;charset=UTF-8");
             
             System.out.println("name-------->");
             
           fulname=request.getParameter("fulname");
         System.out.println("Name-------->" +fulname); 
         
         dob=request.getParameter("dob");
         System.out.println("dob-------->" +dob); 
        
         fathname=request.getParameter("fathname");
         System.out.println("fathname-------->" +fathname); 
          
         relationship=request.getParameter("relationship");
         System.out.println("relationship-------->" +relationship);
         
         Gender=request.getParameter("Gender");
         System.out.println("Gender-------->" +Gender);
         
         mobno=request.getParameter("mobno");
         System.out.println("mobno-------->"+mobno);
         
         Email=request.getParameter("Email");
         System.out.println("Email-------->" +Email);
         
         pf=request.getParameter("pf");
         System.out.println("pf-------->" +pf);
         
         pension=request.getParameter("pension");
         System.out.println("pension-------->" +pension);
         
         u_no=request.getParameter("u_no");
         System.out.println("u_no-------->" +u_no);
         
         pfno=request.getParameter("pfno");
         System.out.println("pfno-------->" +pfno);
         
          c_no=request.getParameter("c_no");
         System.out.println("c_no-------->" +c_no);
         
         ppo=request.getParameter("ppo");
         System.out.println("ppo-------->" +ppo);
          
         Intrnational_Worker=request.getParameter("Intrnational_Worker");
         System.out.println("Intrnational_Worker-------->" +Intrnational_Worker);
        
          Country=request.getParameter("Country");
         System.out.println("Country-------->" +Country);
        
          Passport=request.getParameter("Passport");
         System.out.println("Passport-------->" +Passport);
        
          Valid_from=request.getParameter("Valid_from");
         System.out.println("Valid_from-------->" +Valid_from);
          
         Valid_To=request.getParameter("Valid_To");
         System.out.println("Valid_To-------->" +Valid_To);
         
          Education=request.getParameter("Education");
         System.out.println("Education-------->" +Education);
        
          Marital_Status=request.getParameter("Marital_Status");
         System.out.println("Marital_Status-------->" +Marital_Status);

         Show=request.getParameter("Show");
         System.out.println("show-------->" +Show);
        
         Abled_Category=request.getParameter("Abled_Category");
         System.out.println("Abled_Category-------->" +Abled_Category);
        
          Bank_Acc_Name=request.getParameter("Bank_Acc_Name");
         System.out.println("Bank_Acc_Name-------->" +Bank_Acc_Name);
        
          Bank_Acc_No=request.getParameter("Bank_Acc_No");
         System.out.println("Bank_Acc_No-------->" +Bank_Acc_No);
        
          Bank_Acc_Remark=request.getParameter("Bank_Acc_Remark");
         System.out.println("Bank_Acc_Remark-------->" +Bank_Acc_Remark);
        
         Addhar_Name=request.getParameter("Addhar_Name");
         System.out.println("Addhar_Name-------->" +Addhar_Name);
        
         Addhar_No=request.getParameter("Addhar_No");
         System.out.println("Addhar_No-------->" +Addhar_No);
       
         Addhar_Remark=request.getParameter("Addhar_Remark");
         System.out.println("Addhar_Remark-------->" +Addhar_Remark);
        
          PAN_Name=request.getParameter("PAN_Name");
         System.out.println("PAN_Name-------->" +PAN_Name);
        
          PAN_No=request.getParameter("PAN_No");
         System.out.println("PAN_No-------->" +PAN_No);
        
          PAN_Remark=request.getParameter("PAN_Remark");
         System.out.println("PAN_Remark-------->" +PAN_Remark);
        
         Passport_Name=request.getParameter("Passport_Name");
         System.out.println("Passport_Name-------->" +Passport_Name);
        
       Passport_No=request.getParameter("Passport_No");
         System.out.println("Passport_No-------->" +Passport_No);
         
         Passport_Remark=request.getParameter("Passport_Remark");
         System.out.println("Passport_Remark-------->" +Passport_Remark);
        
          Driving_Licence_Name=request.getParameter("Driving_Licence_Name");
         System.out.println("Driving_Licence_Name-------->" +Driving_Licence_Name);
        
          Driving_Licence_No=request.getParameter("Driving_Licence_No");
         System.out.println("Driving_Licence_No-------->" +Driving_Licence_No);
        
          Driving_Licence_Remark=request.getParameter("Driving_Licence_Remark");
         System.out.println("Driving_Licence_Remark-------->" +Driving_Licence_Remark);
        
         Election_Card_Name=request.getParameter("Election_Card_Name");
         System.out.println("Election_Card_Name-------->" +Election_Card_Name);
        
         Election_Card_No=request.getParameter("Election_Card_No");
         System.out.println("Election_Card_No-------->" +Election_Card_No);
        
         Election_Card_Remark=request.getParameter("Election_Card_Remark");
         System.out.println("Election_Card_Remark-------->" +Election_Card_Remark);
        
         Ration_Card_Name=request.getParameter("Ration_Card_Name");
         System.out.println("Ration_Card_Name-------->" +Ration_Card_Name);
        
         Ration_Card_No=request.getParameter("Ration_Card_No");
         System.out.println("Ration_Card_No-------->" +Ration_Card_No);
       
         Ration_Card_Remark=request.getParameter("Ration_Card_Remark");
         System.out.println("Ration_Card_Remark-------->" +Ration_Card_Remark);
       
         ESIC_Card_Name=request.getParameter("ESIC_Card_Name");
         System.out.println("ESIC_Card_Name-------->" +ESIC_Card_Name);
        
         ESIC_Card_No=request.getParameter("ESIC_Card_No");
         System.out.println("ESIC_Card_No-------->" +ESIC_Card_No);
        
       
           ESIC_Card_Remark=request.getParameter("ESIC_Card_Remark");
         System.out.println("ESIC_Card_Remark-------->" +ESIC_Card_Remark);
        
       Class.forName("com.mysql.jdbc.Driver");
          c= DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
            System.out.println("Connecting with database"); 
            pst=c.prepareStatement("insert into Provident_fund(Full_Name,Date_Of_Birth,Father_Name,relationship,Gender,Mobile_No,Email,Pf_Year,Pension_Year,UAN_NO,PF_No,Cerificate_No,PPO,International_Worker,Country,Passport,Valid_from,Valid_To,Education,Marital_Status,Show,Abled_Category,Bank_Acc_Name,Bank_Acc_No,Bank_Acc_Remark,Addhar_Name,Addhar_No,Addhar_Remark,PAN_Name,PAN_No,PAN_Remark,Passport_Name,Passport_No,Passport_Remark,Driving_Licence_Name,Driving_Licence_No,Driving_Licence_Remark,Election_Card_Name,Election_Card_No,Election_Card_Remark,Ration_Card_Name,Ration_Card_No,Ration_Card_Remark,ESIC_Card_Name,ESIC_Card_No,ESIC_Card_Remark) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                                                     pst.setObject(1,fulname);                                      
                                                     pst.setObject(2,dob);
                                                     pst.setObject(3,fathname);
                                                     pst.setObject(4,relationship);
                                                     pst.setObject(5,Gender);
                                                     pst.setObject(6,mobno);
                                                     pst.setObject(7,Email);
                                                     pst.setObject(8,pf);
                                                     pst.setObject(9,pension);
                                                     pst.setObject(10,u_no);
                                                     pst.setObject(11,pfno);
                                                     pst.setObject(12,c_no);
                                                     pst.setObject(13,ppo);
                                                     pst.setObject(14,Intrnational_Worker);
                                                     pst.setObject(15,Country);
                                                     pst.setObject(16,Passport_No);
                                                     pst.setObject(17,Valid_from);
                                                     pst.setObject(18,Valid_To);
                                                    pst.setObject(19,Education);
                                                    pst.setObject(20,Marital_Status);
                                                    pst.setObject(21,Show);
                                                    pst.setObject(22,Abled_Category);
                                                    pst.setObject(23,Bank_Acc_Name);
                                                    pst.setObject(24,Bank_Acc_No);
                                                    pst.setObject(25,Bank_Acc_Remark);
                                                    pst.setObject(26,Addhar_Name);
                                                    pst.setObject(27,Addhar_No);
                                                    pst.setObject(28,Addhar_Remark);
                                                    pst.setObject(29,PAN_Name);
                                                    pst.setObject(30,PAN_No);
                                                    pst.setObject(31,PAN_Remark);
                                                    pst.setObject(32,Passport_Name);
                                                    pst.setObject(33,Passport_No);
                                                    pst.setObject(34,Passport_Remark);
                                                    pst.setObject(35,Driving_Licence_Name);
                                                    pst.setObject(36,Driving_Licence_No);
                                                    pst.setObject(37,Driving_Licence_Remark);
                                                    pst.setObject(38,Election_Card_Name);
                                                    pst.setObject(39,Election_Card_No);
                                                    pst.setObject(40,Election_Card_Remark);
                                                    pst.setObject(41,Ration_Card_Name);
                                                    pst.setObject(42,Ration_Card_No);
                                                    pst.setObject(43,Ration_Card_Remark);
                                                    pst.setObject(44,ESIC_Card_Name);
                                                    pst.setObject(45,ESIC_Card_No);
                                                    pst.setObject(46,ESIC_Card_Remark);
                                                   int y= pst.executeUpdate();
           System.out.println("Connecting with database"); 
                   if(y>0)
                    System.out.println("Data inserted succcessfully");
               else
                    System.out.println("Data not inserted");
         
          
      
         
}catch(Exception jk)
{
    System.out.println(" "+jk);
}
} 
}
      


     

   
   
 