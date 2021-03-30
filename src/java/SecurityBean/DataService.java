                //data=sr1.viewUnitDetails(); 





/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SecurityBean;
import java.sql.*;
/**
 *
 * @author Tilaksingh
 */
//selectEmployee_UnitId
public class DataService 
{
    public Connection c;
    public Statement s;
    public ResultSet rs,rs2;
    public DataService () throws ClassNotFoundException
     {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            c=DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
            System.out.println("Connecting with DataService 66666"); 
            s=c.createStatement();
            //rs= s.executeQuery("select * from form_structure2");
                 System.out.println("Connecting with DataService 5555"); 
                }catch(SQLException m){

                System.out.println("==>-"+m);
            }
     } 
    public ResultSet fullData()
    {
       try{
       
       rs=s.executeQuery("select rowd from form_structure2");
     
    }catch(SQLException m){
        
    System.out.println("==>aaaaa"+m);
      } 
        return(rs);
    }
    
public ResultSet empSerial()
    {
       try{
 rs=s.executeQuery("SELECT MAX(emp_id)+1 FROM  abhijtrecruitment");
     
    }catch(SQLException m){
        
    System.out.println("==>bbbbb"+m);
      } 
        return(rs);
    }
    
public ResultSet empSerial2()
    {
       try{
 rs=s.executeQuery("SELECT MAX(Emp_Id)+1 FROM  recruitment_t");
     
    }catch(SQLException m){
        
    System.out.println("==>"+m);
      } 
        return(rs);
    }
    
public ResultSet empSerial3()
    {
       try{
 rs=s.executeQuery("SELECT MAX(Emp_Id) FROM  recruitment_t");
     
    }catch(SQLException m){
        
    System.out.println("==>"+m);
      } 
        return(rs);
    }
    
    public   ResultSet login(String pr) throws Exception
     {
      rs= s.executeQuery("select Name from Login where Name='"+pr+"'");
      
      return(rs);
     
     }
     
   public   ResultSet getData() throws Exception
     {
      rs= s.executeQuery("select * from form_structure2 where div_id='Personal_Details' order by rowd ");
      
      return(rs);
     
     }
   
    public ResultSet Monthly_collection(String pr,String yr)throws SQLException
          {
          rs2= s.executeQuery("SELECT MONTH,COUNT(`Old_Business`),SUM(`Old_Business_Amount`),COUNT(`New_Business`),SUM(`New_Business_Amount`),(SUM(New_Business_Amount)+SUM(Old_Business_Amount))AS total FROM monthly_collection WHERE MONTH='"+pr+"' AND YEAR='"+yr+"'");
          return(rs2);
          }
   
   public ResultSet Monthly_expence(String pr,String yr)throws SQLException
          {
              System.out.println("month====>"+pr);
              System.out.println("year====>"+yr);
          rs2= s.executeQuery("SELECT Month,COUNT(`Old_Business`),SUM(`Old_Business_Amount`),COUNT(`New_Business`),SUM(`New_Business_Amount`),(SUM(New_Business_Amount)+SUM(Old_Business_Amount))AS total FROM monthly_expence WHERE Month='"+pr+"' AND year='"+yr+"'");
           System.out.println("Query Executed");
          return(rs2);
          }
   
   public   ResultSet selectEmployee_Name() throws Exception
     {
      rs2= s.executeQuery("select distinct Name from account_ledger");
      
      return(rs2);
     
     }
   
   public   ResultSet selectEmployee_Name1() throws Exception
     {
      rs2= s.executeQuery("select  distinct Unit_Name from abhijtrecruitment");
      
      return(rs2);
     
     }
   
   public   ResultSet selectEmployee_Name(String pr) throws Exception
     {
        rs2= s.executeQuery("select Name,Address,Start_Of_Business,Estimated_end,Total_Amount,Registration_Amount,customer_id from account_ledger where Name='"+pr+"'");
      System.out.println("unit id data");
      
      return(rs2);
     
     }
   
   public   ResultSet selectEmployee_Name1(String pr) throws Exception
     {
        rs2= s.executeQuery("select Unit_Id,emp_id,emp_name,Designation from abhijtrecruitment where Unit_Name='"+pr+"'");
      System.out.println("unit id data");
      
      return(rs2);
     
     }
   
    public   ResultSet getData2() throws Exception
     {
      rs= s.executeQuery("select * from form_structure2 where div_id='educational_details' order by rowd ");
      
      return(rs);
     
     }
    
     public   ResultSet query2() throws Exception
     {
      rs= s.executeQuery("select * from account_ledger_view");
      
      return(rs);
     
     }
    
     public   ResultSet query(String pr) throws Exception
     {
        rs2= s.executeQuery("SELECT Name,Address,Start_Of_Business,Estimated_end,Total_Amount,Registration_Amount,customer_id,Total_paid FROM account_ledger_view WHERE customer_id='"+pr+"'");
      System.out.println("unit id data");
      
      return(rs2);
     
     }
    
              public   ResultSet getData3() throws Exception
     {
      rs= s.executeQuery("select * from form_structure2 where div_id='extra_details' order by rowd");
      
      return(rs);
     
     }
             
            public   ResultSet getData4() throws Exception
     {
      rs= s.executeQuery("select * from form_structure2 where div_id='kyc_details' order by rowd");
      
      return(rs);
     
     }  
            
            public ResultSet Rectruitment_view_data_print(int eid) throws SQLException
    {
rs2= s.executeQuery("SELECT * FROM abhijtrecruitment where emp_id="+eid);      
      return(rs2);
        
    } 
                    
            public   ResultSet getData5() throws Exception
     {
      rs= s.executeQuery("select * from form_structure2 where div_id='bank_details' order by rowd");
      
      return(rs);
     
     }     
            
                       
            public   ResultSet getData6() throws Exception
     {
      rs= s.executeQuery("select * from form_structure2 where div_id='work_expirience' order by rowd");
      
      return(rs);
     
     }     
                       
            public   ResultSet getData7() throws Exception
     {
      rs= s.executeQuery("select * from form_structure2 where div_id='family_details' order by rowd");
      
      return(rs);
     
     } 
     public   ResultSet selectData7() throws Exception
     {
      rs2= s.executeQuery("select Unit_Name from security_master_account");
      
      return(rs2);
     
     }
     
      public   ResultSet selectEmployee_mgm() throws Exception
     {
      rs2= s.executeQuery("select * from employment_management");
      
      return(rs2);
     
     }
       public   ResultSet selectEmployee_payRoll() throws Exception
     {
      rs2= s.executeQuery("select * from pay_roll_new");
      
      return(rs2);
     
     }
    public   ResultSet selectEmployee_UnitName() throws Exception
     {
      rs2= s.executeQuery("select distinct Unit_Name from abhijtrecruitment");
      
      return(rs2);
     
     }
    public  ResultSet selectcompany() throws Exception
    {
        rs2=s.executeQuery("select distinct Name from Login");
        return (rs2);
    }
    
    public  ResultSet selectEmployee_Designation() throws Exception
     {
      rs2= s.executeQuery("select distinct guard_designation from subunit_designation_value");
      
      return(rs2);
     
     } //Ifsc_noESIC_nopf_no_abank_nameaccno
 //   selectEmployee_UnitId
      
    public   ResultSet selectEmployee_UnitId(String pr) throws Exception
     {
      rs2= s.executeQuery("SELECT a.Unit_id,a.emp_id,a.emp_name,a.designation,a.Ifsc_no,a.ESIC_no,a.epf_no,a.bank_name,a.bank_acc_no,b.Basic,b.Da FROM abhijtrecruitment a INNER JOIN SalaryHead b ON  a.Unit_name='"+pr+"'");
      System.out.println("unit id data");
      
      return(rs2);
     }
      
        public   ResultSet selectEmployee_UnitId1(String pr) throws Exception
     {
      rs2= s.executeQuery("select Unit_id,emp_id,emp_name,Last_name,designation,ESIC_no,accno from abhijtrecruitment where Unit_name='"+pr+"'");
      System.out.println("unit id data");
      
      return(rs2);
     
     }
      
       public   ResultSet selectEmployee_UnitId_RECUR(String pr) throws Exception
     {
      rs2= s.executeQuery("select distinct unit_id from subunit_designation_value where subunit_name='"+pr+"'");
      
      return(rs2);
     
     }
      
      public   ResultSet final_SalOf_Unit_wise(String unit_name,int monthin,int yearin) throws Exception
     {
      rs2=s.executeQuery("select Unit_name,SUM(Designation_rate*((duties_total_attendance+ovet_time_duties)-Leaves_in_between_attendance)) FROM pay_roll_new WHERE Unit_name='"+unit_name+"' and  MONTH(STR_TO_DATE(todays_date,'%m/%d/%Y'))="+monthin+" AND YEAR(STR_TO_DATE(todays_date,'%m/%d/%Y'))="+yearin+"  GROUP BY Unit_name");     
      return(rs2);
     
     }
      public   int final_SalOf_Unit_wise_update(String unit_name,float sal_per_unit,int monthin,int yearin) throws Exception
     {

         int y= s.executeUpdate("update pay_roll_new set Unit_Total_details="+sal_per_unit+" WHERE  MONTH(STR_TO_DATE(todays_date,'%m/%d/%Y'))="+monthin+" AND YEAR(STR_TO_DATE(todays_date,'%m/%d/%Y'))="+yearin+" and Unit_name='"+unit_name+"'");     
      
     return(y);
     } 
      public   ResultSet viewUnitDetails() throws Exception
     {
      rs2= s.executeQuery("select * from security_master_account");
      
      return(rs2);
     
     }
      
//     public   ResultSet view_esic_pf() throws Exception
//     {
//      rs2= s.executeQuery("select unit_id,sum(PF),sum(ESIC) from abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))=11 AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))=2017");
//      
//      return(rs2);
//     
//     }
      
    public ResultSet unit_allowence_deduction_cal() throws SQLException
    {
rs2= s.executeQuery("select * from security_master_account");
      
      return(rs2);
        
    }
    public ResultSet Gross_duity() throws SQLException
    {
rs2= s.executeQuery("SELECT SUM(gross_duties) FROM pay_roll_new WHERE Emp_ID=44 AND MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))=11 AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))=2017");
      
      return(rs2);
        
    }
          public ResultSet Gross_duity2() throws SQLException
    {
rs2= s.executeQuery("SELECT gross_duties,unit_id,Emp_ID  FROM pay_roll_new WHERE Emp_ID=44 AND unit_Id=101 AND MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))=11 AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))=2017");
      
      return(rs2);
        
    }

          public ResultSet Rectruitment_view_data() throws SQLException
    {
rs2= s.executeQuery("SELECT * FROM abhijtrecruitment");
      
      return(rs2);
        
    } 
          
           public ResultSet Rectruitment_view_data1() throws SQLException
    {
rs2= s.executeQuery("SELECT * FROM recruitment_t");
      
      return(rs2);
        
    } 
           public ResultSet pay_slip_table_without(String unitid,int m,int y)throws SQLException
          {
          rs2= s.executeQuery("SELECT * FROM abhijeet_payslip_table2 where MONTH(STR_TO_DATE(Date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Date,'%m/%d/%Y'))="+y+" and unit_id1='"+unitid+"'");
          System.out.println("Query is executed");
          return(rs2);
          }
           
           
          public ResultSet pay_slip_table(String unitid,int m,int y)throws SQLException
          {
          rs2= s.executeQuery("SELECT * FROM abhijeet_pay_slip_table where MONTH(STR_TO_DATE(Date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Date,'%m/%d/%Y'))="+y+" and unit_id1='"+unitid+"'");
          System.out.println("Query is executed");
          return(rs2);
          }
          
          public ResultSet pay_slip1_table(String unitid,int m,int y)throws SQLException
          {
          rs2= s.executeQuery("SELECT * FROM abhijeet_pay_slip_table where MONTH(STR_TO_DATE(Date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Date,'%m/%d/%Y'))="+y+" and unit_id1='"+unitid+"'");
          return(rs2);
          }
          
          public ResultSet pay_sheet_table(String unitid,int m,int y)throws SQLException
          {
              rs2= s.executeQuery("Select sr_no,Unit_name,Designation,EMP_NAME,Designation_rate,duties_total_attendance,Total_wages_earning,PF,Professional_Tax,ESIC,Total_Deduction,TOTAL_Amount_Payable from abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y+" and Unit_name='"+unitid+"'");
              return(rs2);
          }
          
          public ResultSet pay_sheet_table1(String unitid,int m,int y)throws SQLException
          {
              rs2= s.executeQuery("Select sr_no,Unit_name,Designation,EMP_NAME,duties_total_days,PF,ESIC,Total_Deduction,TOTAL_Amount_Payable from abhijeet_payroll2 where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y+" and Unit_name='"+unitid+"'");
              return(rs2);
          }
          
           public ResultSet TotalPF_ESIC(String unit)throws SQLException
          {
              rs2= s.executeQuery("Select sum(PF*26),sum(ESIC*26) from subunit_designation_value where unit_name='"+unit+"'");
              return(rs2);
          }
          
           public ResultSet pay_slip1_table1(String unitid,int m,int y)throws SQLException
          {
          rs2= s.executeQuery("SELECT * FROM abhijeet_payslip_table2 where MONTH(STR_TO_DATE(Date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Date,'%m/%d/%Y'))="+y+" and unit_id1='"+unitid+"'");
          return(rs2);
          }
          
          public ResultSet pay_slip_table1(String unitid,int m,int y)throws SQLException
          {
          rs2= s.executeQuery("SELECT sum(Net_salary) FROM abhijeet_pay_slip_table where MONTH(STR_TO_DATE(Date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Date,'%m/%d/%Y'))="+y+" and unit_id1='"+unitid+"'");
              System.out.println("excute");
          return(rs2);
          }
          
          public ResultSet pay_slip_table2(String unitid,int m,int y)throws SQLException
          {
          rs2= s.executeQuery("SELECT sum(Net_salary) FROM abhijeet_payslip_table2 where MONTH(STR_TO_DATE(Date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Date,'%m/%d/%Y'))="+y+" and unit_id1='"+unitid+"'");
              System.err.println("executed");
          return(rs2);
          }
          
          public ResultSet pay_slip_table3(String unitid,int m,int y)throws SQLException
          {
          rs2= s.executeQuery("SELECT sum(Net_salary) FROM abhijeet_payslip_table2 where MONTH(STR_TO_DATE(Date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Date,'%m/%d/%Y'))="+y+" and unit_id1='"+unitid+"'");
              System.err.println("executed");
          return(rs2);
          }
          
public ResultSet payroll_view_data() throws SQLException
     {
        rs2 = s.executeQuery ("SELECT * FROM abhijeet_pay_roll_new");
        return(rs2);
     }

public ResultSet salaryhead_view_data() throws SQLException
     {
        rs2 = s.executeQuery ("SELECT Designation,unitName,UnitId,EmpId,EmloyeeName,Basic,Da FROM SalaryHead");
        return(rs2);
     }

public ResultSet PTcalculation(String m,String y) throws SQLException
     {
        rs2 = s.executeQuery ("SELECT sum(PT) FROM abhijeet_payroll2 where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y+"");
        return(rs2);
     }

public ResultSet PT1calculation(String m,String y) throws SQLException
     {
        rs2 = s.executeQuery ("SELECT sum(Professional_Tax) FROM abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y+"");
        return(rs2);
     }

public ResultSet ESICcalculation(String m,String y) throws SQLException
     {
        rs2 = s.executeQuery ("SELECT sum(ESIC_4) FROM abhijeet_payroll2 where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y+"");
        return(rs2);
     }

public ResultSet ESIC1calculation(String m,String y) throws SQLException
     {
        rs2 = s.executeQuery ("SELECT sum(ESIC_4) FROM abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y+"");
        return(rs2);
  
     }

public ResultSet PFcalculation(String m,String y) throws SQLException
     {
        rs2 = s.executeQuery ("SELECT sum(PF_13) FROM abhijeet_payroll2 where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y+"");
        return(rs2);
     }

public ResultSet PF1calculation(String m,String y) throws SQLException
     {
        rs2 = s.executeQuery ("SELECT sum(PF_13) FROM abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y+"");
        return(rs2);
     }

public ResultSet payroll_view_data1() throws SQLException
     {
        rs2 = s.executeQuery ("SELECT * FROM abhijeet_payroll2");
        return(rs2);
     }

   public ResultSet paySlipempno(int month,int year)throws Exception
     {
    rs2=s.executeQuery("select Emp_ID,EMP_NAME,Ifsc_no,ESIC_no1,pf_no_a,bank_name,bank_accno,Duties_to_date,Total_loan_amt,unit_id from abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+month+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+year+"");
    System.out.println("Query is executed");
    return(rs2);
    }
   
   public ResultSet paySlipempno1(int month,int year)throws Exception
     {
    rs2=s.executeQuery("select Emp_ID,EMP_NAME,ifsc_no,ESIC_no1,pf_no_a,bank_name,bank_accno,Duties_to_date,unit_id from abhijeet_payroll2 where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+month+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+year+"");
    System.out.println("Query is executed");
    return(rs2);
    }
   
   public ResultSet unit_id_pay_slip()throws SQLException
          {
          rs2= s.executeQuery("SELECT distinct unit_id1 FROM abhijeet_pay_slip_table");
          return(rs2);
          }
   
   
   public ResultSet unit_name_pay_slip()throws SQLException
          {
          rs2= s.executeQuery("SELECT distinct Unit_name FROM abhijeet_pay_roll_new");
          return(rs2);
          }
   
   public ResultSet unit_name_pay_slip1()throws SQLException
          {
          rs2= s.executeQuery("SELECT distinct Unit_name FROM abhijeet_payroll2");
          return(rs2);
          }
   
   public ResultSet unit_id_pay_slip1()throws SQLException
          {
          rs2= s.executeQuery("SELECT distinct unit_id1 FROM abhijeet_payslip_table2");
          return(rs2);
          }
      
   
   
   
   public ResultSet PF2calculation() throws SQLException
     {
        rs2 = s.executeQuery ("SELECT sum(PF) FROM subunit_designation_value");
        return(rs2);
     }
   
   
    public ResultSet PF3calculation() throws SQLException
     {
        rs2 = s.executeQuery ("SELECT sum(ESIC) subunit_designation_value");
        return(rs2);
     }
   
   
   
    
    
    
    
    
    
    
    public ResultSet unit_PF_ESIC_view_data(String unit) throws SQLException
     {
        rs2 = s.executeQuery ("SELECT unit_id,unit_name,guard_designation,PF,ESIC FROM subunit_designation_value where unit_name='"+unit+"'");
        return(rs2);
     }
    public ResultSet total_Desig() throws SQLException
    {
       rs2 = s.executeQuery("SELECT COUNT(*) total_job , UPPER(guard_designation) desig FROM `subunit_designation_value` GROUP BY UPPER(guard_designation");
       return(rs2);
    }
   

      
public ResultSet viewBenchDetails() throws SQLException
    {
       rs2 = s.executeQuery("select * from abhijtrecruitment where Unit_Name='Employee_Unit_Name'");
       return(rs2);
    }



      public ResultSet Billing_view_data() throws SQLException
    {
    rs2= s.executeQuery("SELECT * FROM Acount_Billing");
      
      return(rs2);
        
    } 
      
      
      
       public   ResultSet selectUnit_bill(String pr) throws Exception
     {
      rs2= s.executeQuery("SELECT sdv.guard_designation,sdv.total_guard,sma.Unit_Adress,sma.Unit_GST_no,\n" +
"	sdv.rate_per_day,SUM(sp.gross_duties) FROM subunit_designation_value sdv,\n" +
"	security_master_account sma,sing_payroll sp WHERE sdv.unit_id=sma.Unit_id \n" +
"	AND sma.unit_id=sp.unit_id AND UPPER(sma.unit_name)='mixbasket' GROUP BY sdv.guard_designation");
      System.out.println("unit id data");
      
      return(rs2);
     
     } 
       
       
       public   ResultSet Petty_Cash_view_data() throws Exception
     {
    rs2= s.executeQuery("select voucher_no,date,debit,purpose,Advance_Amount,Payment_pass_by,approved_by from petty_voucher1");   
      
      return(rs2);
}
       
       
       public   ResultSet Advance_Cash_view_data() throws Exception
     {
    rs2= s.executeQuery("select voucher_no,date,debit,Amount_Paid_To,purpose,Advance_Amount,payment_pass_by,approved_by from Advance_Voucher2");   
      
      return(rs2);
     
}
       
   public ResultSet payroll_view_data2(String m1,String y1) throws SQLException
     {
         int m=Integer.parseInt(m1);
          int y=Integer.parseInt(y1);
        rs2 = s.executeQuery ("select Duties_From_date,unit_id,Unit_name,Emp_ID,EMP_NAME,Designation,pf_no_a,PF from abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y);
              System.err.println("First Query Executed");
        return(rs2);
     }    
       
    public ResultSet payroll_view_data3(String m1,String y1) throws SQLException
     {
         int m=Integer.parseInt(m1);
          int y=Integer.parseInt(y1);
        rs2 = s.executeQuery ("select Duties_From_date,unit_id,Unit_name,Emp_ID,EMP_NAME,Designation,pf_no_a,PF from abhijeet_payroll2 where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y);
              System.err.println("First Query Executed");
        return(rs2);
     }    
       
     public ResultSet payroll_view_data4(String m1,String y1) throws SQLException
     {
         int m=Integer.parseInt(m1);
          int y=Integer.parseInt(y1);
        rs2 = s.executeQuery ("select Duties_From_date,unit_id,Unit_name,Emp_ID,EMP_NAME,Designation,ESIC_no1,ESIC from abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y);
              System.err.println("First Query Executed");
        return(rs2);
     }    
       public ResultSet payroll_view_data5(String m1,String y1) throws SQLException
     {
         int m=Integer.parseInt(m1);
          int y=Integer.parseInt(y1);
        rs2 = s.executeQuery ("select Duties_From_date,unit_id,Unit_name,Emp_ID,EMP_NAME,Designation,ESIC_no1,ESIC from abhijeet_payroll2 where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y);
              System.err.println("First Query Executed");
        return(rs2);
     }  
        public ResultSet payroll_view_data6(String m1,String y1) throws SQLException
     {
         int m=Integer.parseInt(m1);
          int y=Integer.parseInt(y1);
        rs2 = s.executeQuery ("select Duties_From_date,unit_id,Unit_name,Emp_ID,EMP_NAME,Designation,Professional_Tax from abhijeet_pay_roll_new where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y);
              System.err.println("First Query Executed");
        return(rs2);
     }  
        
           public ResultSet payroll_view_data7(String m1,String y1) throws SQLException
     {
         int m=Integer.parseInt(m1);
          int y=Integer.parseInt(y1);
        rs2 = s.executeQuery ("select Duties_From_date,unit_id,Unit_name,Emp_ID,EMP_NAME,Designation,PT from abhijeet_payroll2 where MONTH(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+m+" AND YEAR(STR_TO_DATE(Duties_From_date,'%m/%d/%Y'))="+y);
              System.err.println("First Query Executed");
        return(rs2);
     } 
         public   ResultSet selectEmployee_UnitName1111() throws Exception
     {
      rs2= s.executeQuery("select distinct subunit_name from subunit_designation_value");
      
      return(rs2);
     
     }    
          
     public ResultSet selectEmployee_Name3() throws SQLException
     {
        
        rs = s.executeQuery ("select distinct Unit_Name from security_master_account");
              System.out.println("ESIC first Query Executed");
        return(rs);

  //  public PreparedStatement prepareStatement(String select_Skilled_Employee_from_purchase_ord) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     
        public   ResultSet    selectEmployee_Name12(String pr) throws Exception
     {
      rs2= s.executeQuery("select distinct Unit_id from security_master_account  where Unit_Name='"+pr+"'");
      
      return(rs2);
     
      
     }
        public ResultSet selectUnitNameForEsicAndPf() throws SQLException
     {
        
        rs = s.executeQuery ("select distinct unit_name from subunit_designation_value");
              System.out.println("ESIC first Query Executed");
        return(rs);

  //  public PreparedStatement prepareStatement(String select_Skilled_Employee_from_purchase_ord) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
        public  ResultSet selectLeaveType() throws SQLException{
        String ltype = null ;
            rs=s.executeQuery("select ltype from type");
        return (rs);
        }
        public  ResultSet selectTotalLeave(String ltype) throws SQLException{
        
            rs=s.executeQuery("select tleave from type where ltype='"+ltype+"'");
        return (rs);
        }

        public  ResultSet SelectCompany() throws SQLException{
            rs2=s.executeQuery("select * from company");
        return (rs2);
        }     
       
         public ResultSet create_empclientwise_data()throws SQLException
          {
              
              System.out.println("start1111111");
              rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table");
              System.out.println("Query is executed");
          return(rs2);
          }
       
       
       public ResultSet create_empclientA_data(String alfa)throws SQLException
          {
              
              System.out.println("start1111111");
           rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table where CLIENTS_LIST LIKE '"+alfa+"%'");
           //rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table where CLIENTS_LIST LIKE '%@A%' OR CLIENTS_LIST LIKE '%@a%'");
           //rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table where CLIENTS_LIST LIKE '[A-a]%'");
           //rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table where CLIENTS_LIST LIKE '[^A-a]%'");
           //rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table where CLIENTS_LIST LIKE '[A-C]%'");
           //rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table where CLIENTS_LIST LIKE 'A%'");
           //rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table where CLIENTS_LIST LIKE 'A%'");
           System.out.println("Query is executed");
          return(rs2);
          }
       
//       public ResultSet create_empclientB_data()throws SQLException
//          {
//              
//              System.out.println("start1111111");
//           rs2=s.executeQuery("select CLIENTS_LIST from recruitment_table where CLIENTS_LIST LIKE 'u%'");
//           
//           System.out.println("Query is executed");
//          return(rs2);
//          }
       

       
           public ResultSet create_client_data()throws SQLException
              {
                System.out.println("start1111111");
           rs2=s.executeQuery("select CLIENTS_LIST from client_list");
           System.out.println("Query is executed");
           return(rs2);
          }
       
      public ResultSet create_emp_data(String CLIENTS_LIST)throws SQLException
          {
              System.out.println("start1111111");
           rs=s.executeQuery("select Full_Name from recruitment_table where CLIENTS_LIST='"+CLIENTS_LIST+"'");
          System.out.println("Query ");
          return(rs);
          }
       public ResultSet Select_Employee(String fulname)throws SQLException
          {
              System.out.println("start1111111");
           rs=s.executeQuery("select UAN_NO,Pf_No,Father_Name,relationship,Date_Of_Birth,pencel,Mobile_No from recruitment_table where Full_Name='"+fulname+"'");
          System.out.println("Query  executed");
          return(rs);
          }
       
   
}

    

