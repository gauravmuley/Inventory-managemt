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


public class Employee_Details123 extends HttpServlet 
{
    Object  EMP_NO,adharadd,Date1,CLIENTS_LIST,LWF,skill_Allowance,Education_Allowance,Washing_Allowance,Conveyance_Allowance,sub_unit,Wages_Register_Rate,b_group,u_no,gatep,compname,compid,des,date,fulname,fathname,edu,preexp,dob,bp,gen,adhar,panno,nomin,relwn,nodob,addr,vill,po,tal,ps,dis,state,pcode,mobno,phone,addr1,vill1,po1,tal1,ps1,dis1,state1,pcode1,mobno1,phone1,bname,accno,brname,ifscode,pfno,esicno,Employee_Type,dep,pfp,escicp,hra,bonus,pftype,per_day_Rate,payment_mode,sname,relationship,pencel;
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
             
              Date1=request.getParameter("Date1");
         System.out.println("Date1-------->" +Date1); 
         
             
         CLIENTS_LIST=request.getParameter("company_name");
         System.out.println("company_name-------->" +CLIENTS_LIST); 
         
        
           u_no=request.getParameter("u_no");
         System.out.println("u_no-------->" +u_no); 
         
         fulname=request.getParameter("fulname");
         System.out.println("fulname-------->" +fulname);
         
         EMP_NO=request.getParameter("EMP_NO");
         System.out.println("EMP_NO-------->" +EMP_NO);
        
         pfno=request.getParameter("pfno");
         System.out.println("pfno-------->" +pfno); 
        
         //des=request.getParameter("designation").replace("_"," ");
         //System.out.println("designation-------->" +des);
          
            //dep=request.getParameter("DEPARTMENT").replace("_"," ");
         //System.out.println("DEPARTMENT-------->" +dep);
         
         sname=request.getParameter("sname");
         System.out.println("sname-------->" +sname);
         
         fathname=request.getParameter("fathname");
         System.out.println("fathname-------->" +fathname);
         
         relationship=request.getParameter("relationship");
         System.out.println("relationship-------->" +relationship);
         
          dob=request.getParameter("dob");
         System.out.println("dob-------->" +dob);
         
         pencel=request.getParameter("pencel");
         System.out.println("pencel-------->"+pencel);
         
         date=request.getParameter("date");
         System.out.println("date-------->" +date);
         
         bname=request.getParameter("bname");
         System.out.println("bname-------->" +bname);
         
         accno=request.getParameter("accno");
         System.out.println("accno-------->" +accno);
         
         ifscode=request.getParameter("ifscode");
         System.out.println("ifscode-------->" +ifscode);
         
         adhar=request.getParameter("adhar");
         System.out.println("adhar-------->" +adhar);
                 
        adharadd=request.getParameter("adharadd");
         System.out.println("adharadd-------->" +adharadd);
         
          panno=request.getParameter("panno");
         System.out.println("panno-------->" +panno);
         
         mobno=request.getParameter("mobno");
         System.out.println("mobno-------->" +mobno);
         
          
         
         Class.forName("com.mysql.jdbc.Driver");
          c= DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
            System.out.println("Connecting with database"); 
            pst=c.prepareStatement("insert into recruitment_table(Date1,CLIENTS_LIST,UAN_NO,Full_Name,EMP_NO,Pf_No,sname,Father_Name,relationship,Date_Of_Birth,pencel,Date,Bank_Name,Account_No,IFSC_Code,Adhar_No,adharadd,Pan_No,Mobile_No) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
//                                                     
                                                     pst.setObject(1,Date1);                                      
                                                     pst.setObject(2,CLIENTS_LIST);
                                                     pst.setObject(3,u_no );
                                                     pst.setObject(4,fulname );
                                                     pst.setObject(5,EMP_NO );
                                                     pst.setObject(6,pfno );
                                                     pst.setObject(7,sname );
                                                     pst.setObject(8,fathname );
                                                     pst.setObject(9,relationship );
                                                     pst.setObject(10,dob );
                                                     pst.setObject(11,pencel );
                                                     pst.setObject(12,date );
                                                     pst.setObject(13,bname );
                                                     pst.setObject(14,accno );
                                                     pst.setObject(15,ifscode );
                                                     pst.setObject(16,adhar );
                                                     pst.setObject(17,adharadd);
                                                     pst.setObject(18,panno);
                                                      pst.setObject(19,mobno);
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
      


     

   
   
 