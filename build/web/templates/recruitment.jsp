<%-- 
    Document   : Salary_Head_Basic
    Created on : Apr 19, 2019, 6:28:09 PM
    Author     : HP
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SecurityBean.DataService"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"  errorPage="eror.jsp"%>
<%! ResultSet rs1,rs,rs2,rs3,rs5;DataService ds1;ArrayList ar;Iterator ity;Object o1=null; Statement statement=null; String  Skilled_Employee,Semiskilled_Employee, Unskilled_Employee,Supervisor;int Skilled_Employee1=0; %>
<!DOCTYPE html>
<html>
   <div class="right_col" role="main">
        <div class="">
<div class="page-title">
            <div class="title_left">
              <h3 style="color:black;">Add Employee Details</h3>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                 <div class="clearfix"></div>
                   <label style="color:red;margin-left:800px; "></label>
                </div>
<!--                <div class="x_content">-->
                     
                  <br />
                  <%--  <%  try {
                      ds1=new DataService();
                    System.out.println("first try block");
                   // connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                    statement = ds1.c.createStatement();
                    String sql = "SELECT company_name from company";
                     System.out.println("company execution....");
                    rs3 = statement.executeQuery(sql);
                    int i=0;
                     if(rs3.next()) {
                         String s=rs3.getString("company_name");
                         System.out.println("s----->"+s);
                           rs5=ds1.purchase_order(s);
                           if(rs5.next())
                           {
                          Skilled_Employee=rs5.getString(1);
                          System.out.println("Skilled_Employees----->"+Skilled_Employee);
                          Semiskilled_Employee=rs5.getString(2);
                          System.out.println("Semiskilled_Employee----->"+Semiskilled_Employee);
                          Unskilled_Employee=rs5.getString(3);
                          System.out.println("Unskilled_Employee----->"+Unskilled_Employee);
                          Supervisor=rs5.getString(4);
                          System.out.println("Supervisor----->"+Supervisor);
                           }
                     }
                  }catch (Exception ex) {
                      System.out.println("11------>"+ex);
                    
                    }
                 %>  --%>          
        <form id="demo-form3" action="" data-parsley-validate class="form-horizontal form-label-left">
             <div>      
                <center> <h3 style="color:black;">Personal Details</h3> </center>
                <center>  
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                
            </div><br>
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">Date
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                           <body onload="addDate();">
                      <input type="text" id="date" name="date"  class="form-control col-md-7 col-xs-12" readonly="">
                      </div>
                    </div>
             <div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">Ticket No
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="gate_pass" name="gate_pass"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                
                  <div class="form-group">
                    
                          <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Unit Name</label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                           
                          <%try{
                              ds1= new DataService();
                              rs=ds1.create_client_data();
                              ar=new ArrayList();
                              while(rs.next())
                              ar.add(rs.getObject(1));
                              rs.close();
                             %>
           <select name="company_name" id="company_name" class="select2_single form-control" style="color:black;">
             <optgroup label="company_name">
             <option value="Select Company">Select Company</option>

                           <%ity=ar.iterator();
                            while(ity.hasNext()){
                             o1=ity.next();
                           %>
  <option value="<%=o1%>"><%=o1%></option>
                             <%}%> 
                </optgroup>
            </select>
          <!--  Choose unit name from select option & Click on select unit button 
             <input type="button" value="Select unit name " id="bUnit_name"> -->
                     </div>
                     </div>
                
                    

                   <div>
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">Unit Id
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="company_id" name="company_id"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">Full Name
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="full_name" name="full_name"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Father Name
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="father_name" name="father_name" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Education
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="education" name="education"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>   
                       
                         <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Previous Experience
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="previous_experience" name="previous_experience" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>   
                       
                        
                       
                        
                     
                    
                      
                  
                      
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Date Of Birth
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="date" id="dob" name="dob" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>    
                       
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Birth Place
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="b_place" name="b_place"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>    
                <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Gender
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="Gen" name="Gen" value="M" style="color:black;">Male
                        <input  type="radio"  id="Gen" name="Gen" value="F" style="color:black;">Female
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Blood Group
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="b_group" name="b_group"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>  
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Aadhar No.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="adhar" name="adhar"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>  
                   
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Pan No.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="pan_no" name="pan_no"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Nominee Name
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text" id="nomi_name" name="nomi_name"class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                      
                         <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Nominee Date Of Birth
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="date" id="dob" name="nominee_dob" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Relation With Nominee</label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="rel_nominee"name="rel_nominee" class="form-control">
                            <option value="">Select</option>
                            <option value="Mother">Mother</option>
                            <option value="Father">Father</option>
                            <option value="Brother">Brother</option>
                            <option value="Sister">Sister</option>
                            <option value="Husband">Husband</option>
                            <option value="Wife">Wife</option>
                          </select>
                          </div>
  <h3>___________________________________________________________________________________________________________________________________</h3>
                    </div><br><br>
                    
              <div> 
                       <center><h2 style="color:black;">Employee Address</h2></center>
                       
<center><h3 style="color:black;">___________________________</h3></center>
                <center> <h3 style="color:black;">Permanent Address</h3> </center>
                <center> 
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                
            </div><br>
                
                
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Address
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="address" name="address"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Village
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="village" name="village" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Post Office
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="post_off" name="post_off" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Taluka
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="taluka" name="taluka"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                     
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Police Station
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="police_stat" name="police_stat"class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">District
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="district" name="district"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
              
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">State
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text" id="state" name="state"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
              
            <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Pin Code
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="pin_code" name="pin_code" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
              
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Mobile Number
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="mob_no" name="mob_no"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
              
               
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Phone
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="phone" name="phone" class="form-control col-md-7 col-xs-12">
                      </div>
             </div><br>
             
             <div>
            
            <center> <h3 style="color:black;">Temporary Address</h3> 
</center>
                <center> 
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                
            </div><br>
                    
                     
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Address
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="address1" name="address1" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Village
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="village1" name="village1"class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Post Office
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="post_off1" name="post_off1" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Taluka
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="taluka1" name="taluka1" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                     
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Police Station
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="police_stat1" name="police_stat1" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-x12" style="color:black;">District
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="district1" name="district1" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
              
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">State
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="state1" name="state1"class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
              
            <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Pin Code
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="pin_code1" name="pin_code1"  class="form-control col-md-7 col-xs-12">
                      </div>
            </div>
            
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Mobile Number
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="mob_no1" name="mob_no1" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
              
               
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Phone
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="phone1" name="phone1" class="form-control col-md-7 col-xs-12">
                      </div>
             </div><br>
            
             <div>
                 
                 <center> <h3 style="color:black;">Bank Details</h3> 
</center>
                <center> 
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                
            </div><br>
            
             
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Bank Name
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="bank_Name" name="bank_Name"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Account Number
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="acc_no" name="acc_no"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Branch Name
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="b_name" name="b_name"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
              
               
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">IFSC Code
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="ifsc_code" name="ifsc_code"  class="form-control col-md-7 col-xs-12">
                      </div>
                   </div><br>
            
            <div>
            
            <center> <h3 style="color:black;">Payroll Details</h3> 
</center>
                <center> 
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                
            </div><br>
<!--              <div class="form-group" hidden>
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Employee Type</label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="Employee_Type"name="Employee_Type" class="form-control"  onclick="EmployeeType();">
                            <option value="">Select</option>
                            <option value="Skilled Employee">Skilled Employee</option>
                            <option value="Semiskilled Employee">Semiskilled Employee</option>
                            <option value="Unskilled Employee">Unskilled Employee</option>
                            <option value="Supervisor">Supervisor</option>
                            
                          </select>
                          </div>
                          </div>-->
            
          
                
             <div class="form-group">
                    
                         <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Sub Unit
                          </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                           
                          <%try{
                                ds1=new DataService();
                            try {
                    
                   // connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                    statement = ds1.c.createStatement();
                    String sql = "SELECT company_name from company";

                    rs2 = statement.executeQuery(sql);
                    int i=0;
                     if(rs2.next()) {
                         String s=rs2.getString("company_name");
                         System.out.println("s----->"+s);
                           rs1=ds1.create_emp_data(s);
                     }
                  }catch (Exception e) {
                      System.out.println("first------>"+e);
                    
                    }
                             
                              ar=new ArrayList();
                              while(rs1.next())
                              ar.add(rs1.getObject(1));
                              rs1.close();
                             %>
           <select name="sub_unit" id="sub_unit" class="select2_single form-control">
             <optgroup label="sub_unit">
             <option value="Select sub Unit">Select sub unit</option>

                           <%ity=ar.iterator();
                            while(ity.hasNext()){
                             o1=ity.next();
                           %>
  <option value="<%=o1%>"><%=o1%></option>
                             <%}%> 
                </optgroup>
            </select>
          <!--  Choose unit name from select option & Click on select unit button 
             <input type="button" value="Select unit name " id="bUnit_name"> -->
                     </div>
                     </div>
                       
                       
                <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">PF%/ESIC%/HRA%/Bonus%</label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                       <select id="Data" name="Data" class="select2_single form-control">
                       
                       </select>
                      </div>
                    </div>         
                      <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Department
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="DEPARTMENT" name="DEPARTMENT"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 
                       
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Employee Type
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="Employee_Type" name="Employee_Type"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
               <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">Designation
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"   id="designation" name="designation"  class="form-control col-md-7 col-xs-12" >
                      </div>
                    </div>
                       
                       
            
            
              <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">UAN NO
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="uan" name="uan"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
                   
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">PF Number
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="pf_no" name="pf_no"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                   
                    
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">ESIC Number
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="esic_no" name="esic_no"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
            
            
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">EPF%
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="pfp" name="pfp"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
            
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">ESIC%
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="esicp" name="esicp"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
           
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">HRA%
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="hrap" name="hrap"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Bonus%
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="bonusp" name="bonusp"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
            
                    
                    
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Conveyance Allowance
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="Conveyance_Allowance" name="Conveyance_Allowance"  value="0" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                   
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Washing Allowance
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="Washing_Allowance" name="Washing_Allowance"  value="0" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                
                 <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Education Allowance
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="Education_Allowance" name="Education_Allowance"  value="0" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Skill Allowance
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="skill_Allowance" name="skill_Allowance"  value="0" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
            
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Basic Wages
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="pdr" name="pdr"  value="0.00" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
              <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">VDA
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="Wages_Register_Rate" name="Wages_Register_Rate"  value="0" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">LWF
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="LWF" name="LWF"  value="0" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
               <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">PF Type</label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="pf"  name="pf" class="form-control">
                            <option value="">Select PF Category</option>
                            <option value="Full PF">Full PF</option>
                            <option value="Half PF">Half PF</option>
                            <option value="No PF">No PF</option>
                          </select>
                          </div>
                        </div>
               <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Payment Mode</label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <select  id="payment_mode" name="payment_mode" class="form-control">
                          <option value="">Select Payment Mode</option>
                          <option value="Cheque">Cheque</option>
                          <option value="Cash">Cash</option>
                          <option value="Online">Online</option>
                        </select>
                        <div id="err_receival_mode" class="err-msg">Please select Payment Mode Type</div>
                      </div>
                    </div>            
           
                
                
                   <center><button type="submit" class="btn btn-primary">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-bottom: 0;"><a href="index.jsp">Close</a></button></center>
                            </form>
                          </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->
                    
                    
                        
<div class="ln_solid"></div>
<%--!    <div class="form-group">
                      <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button type="submit" class="btn btn-primary">Cancel</button>
                        <button type="submit" class="btn btn-success">Submit</button>
                      </div>
                    </div>  --%>

          <div id="successMessage" class="col-md-6 col-md-offset-3 alert alert-success" style="display:none">
              
              
              
          </div>
<% } catch(Exception u1){ System.out.println("=====>"+u1);  } finally{try{
//ds1.c.close();
}catch(Exception y3){}}%> 
<% } catch(Exception e){
System.out.println(""+e);
}%>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix"></div> 
         <script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <meta charset="utf-8" />
    
    <link rel="stylesheet"   href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

       <script type="text/javascript">
              $(document).ready(function() 
           { 
       
        $('#company_name').change(function(){
        var  company_name = document.getElementById("company_name").value;  
        // alert("product_name"+product_name);
    $.ajax({
       
        type:"POST",
        url:"Recruitment_Combo_Servlet",
        data:{
                 company_name:company_name
       
            },
        dataType:"json",
           
        success:function(data){
            $.each(data.aaData,function(i,data)
            {
            //alert(data.value+":"+data.text);
              //     alert("hello"+Unit_name);

             document.getElementById("company_id").value=data.text;
          
            
             }); 
             
            }
             
      });
     
    });
});
  
    </script>
    
    
    <script>
     $(document).ready(function() 
{ 
         //alert("Unit_name===>123456");
        $('#sub_unit').change(function(){
       var sub_unit = document.getElementById("sub_unit").value;
         var company_name = document.getElementById("company_name").value;
         // var Employee_Type = document.getElementById("Employee_Type").value;
       // alert("company_name===>123456"+company_name);
        $('#Data').find('option').remove().end().append('<option value="whatever">Data</option>').val(' ');

   //    var  Unit_name=$(this).find("[name='Unit_name']").val();
      
    $.ajax({
       type: "POST",
        url:"Combo_department1",
        data:{
               sub_unit:sub_unit,
               company_name:company_name
               //Employee_Type:Employee_Type
             },
                dataType:"json",
           
        success:function(data){
            $.each(data.aaData,function(i,data)
            {
            //alert(data.value+":"+data.text);
            var div_data="<option value="+data.text+">"+data.text+"</option>";
            //alert('Unit_name===>123456');
            $(div_data).appendTo('#Data');
            }); 
           }
             });
     
    });
});


   
    
 $(document).ready(function () {
                  //alert('payroll');
 $('form#demo-form3').submit(function () {
     
              var date  = $(this).find("[name='date']").val();
               var gate_pass= $(this).find("[name='gate_pass']").val();
                    //alert("gate_pass"+gate_pass);
     
                    var company_name= $(this).find("[name='company_name']").val();
                    //alert("company_name"+company_name);
                       
                    var  company_id = $(this).find("[name='company_id']").val();
                  //  alert("company_id->"+company_id);
                      
                  var  sub_unit = $(this).find("[name='sub_unit']").val();
                    //alert("designation->"+designation);
                      
                  
                   // alert("date->"+date);
           
                    var full_name = $(this).find("[name='full_name']").val();
                    //alert("full_name->"+full_name);
        
                    var father_name = $(this).find("[name='father_name']").val();
                    //alert("father_name->"+father_name );
            
                    var education = $(this).find("[name='education']").val();
                     var previous_experience = $(this).find("[name='previous_experience']").val();
                   // alert("education->"+education);
                   var Employee_Type = $(this).find("[name='Employee_Type']").val();
                    var DEPARTMENT= $(this).find("[name='DEPARTMENT']").val(); 
            var designation= $(this).find("[name='designation']").val();
               
                    //alert("previous_experience->"+previous_experience); 
               
                    var dob = $(this).find("[name='dob']").val();
                    //alert("dob->"+dob);
                    
                    
                   var b_place= $(this).find("[name='b_place']").val();
                  // alert("b_place->"+b_place);
                   
                   var Gen = $(this).find("[name='Gen']:checked").val();
                   //alert("Gen->"+Gen);
                   var b_group = $(this).find("[name='b_group']").val();
                   var adhar = $(this).find("[name='adhar']").val();
                  // alert("adhar->"+adhar);
                   
                    var pan_no = $(this).find("[name='pan_no']").val();
                  // alert("pan_no->"+pan_no);
                   
                   var nomi_name = $(this).find("[name='nomi_name']").val();
                   //alert("nomi_name->"+nomi_name);
                   
                   var rel_nominee= $(this).find("[name='rel_nominee']").val();
                  // alert("rel_nominee->"+rel_nominee);
                  
                  var nominee_dob= $(this).find("[name='nominee_dob']").val();
                  // alert("nominee_dob->"+nominee_dob);
                   
                   var address= $(this).find("[name='address']").val();
                   //alert("address->"+address);
                   
                   var village= $(this).find("[name='village']").val();
                  // alert("village->"+village);
                   
                   var post_off = $(this).find("[name='post_off']").val();
                  // alert("post_off->"+post_off);
             
                   var taluka = $(this).find("[name='taluka']").val();
                 //  alert("taluka->"+taluka);
             
                   var police_stat = $(this).find("[name='police_stat']").val();
                  // alert("police_stat->"+police_stat);
               
                   var district = $(this).find("[name='district']").val();
                  // alert("district->"+district);
                   
                   var state = $(this).find("[name='state']").val();
                  // alert("state->"+state);
                   
                   
                   var pin_code = $(this).find("[name='pin_code']").val();
                  // alert("pin_code->"+pin_code);
             
                    
                   var mob_no = $(this).find("[name='mob_no']").val();
                  // alert("mob_no->"+mob_no);
                   
                  
                   var phone = $(this).find("[name='phone']").val();
                  // alert("phone->"+phone);
                   
                 var address1= $(this).find("[name='address1']").val();
                  // alert("address1->"+address1);
                   
                   var village1= $(this).find("[name='village1']").val();
                 //  alert("village1->"+village1);
                   
                   var post_off1 = $(this).find("[name='post_off1']").val();
                  // alert("post_off1->"+post_off1);
             
                   var taluka1 = $(this).find("[name='taluka1']").val();
                   //alert("taluka1->"+taluka1);
             
                   var police_stat1 = $(this).find("[name='police_stat1']").val();
                  // alert("police_stat1->"+police_stat1);
               
                   var district1 = $(this).find("[name='district1']").val();
                   //alert("district1->"+district1);
                   
                   var state1 = $(this).find("[name='state1']").val();
                   //alert("state1->"+state1);
                   
                   
                   var pin_code1 = $(this).find("[name='pin_code1']").val();
                  // alert("pin_code1->"+pin_code1);
             
                    
                   var mob_no1 = $(this).find("[name='mob_no1']").val();
                   //alert("mob_no1->"+mob_no1);
                   
                  
                   var phone1 = $(this).find("[name='phone1']").val();
                  // alert("phone->"+phone);
                   
                   var bank_Name = $(this).find("[name='bank_Name']").val();
                  // alert("bank_Name->"+bank_Name);
             
                   var acc_no = $(this).find("[name='acc_no']").val();
                  // alert("acc_no->"+acc_no);
                   
                   var b_name = $(this).find("[name='b_name']").val();
                  // alert("b_name->"+b_name);
             
                   
                   var ifsc_code = $(this).find("[name='ifsc_code']").val();
                  // alert("ifsc_code->"+ifsc_code);
              var uan = $(this).find("[name='uan']").val();
                   var pf_no = $(this).find("[name='pf_no']").val();
                  // alert("pf_no->"+pf_no);
             
                   var esic_no = $(this).find("[name='esic_no']").val();
                  var pfp = $(this).find("#pfp").val();
                 
                   var esicp = $(this).find("#esicp").val();
          
                 
                     var hrap = $(this).find("#hrap").val();
         
                 
                      var bonusp = $(this).find("#bonusp").val();
           
                 
                
                
             var pf = $(this).find("#pf").val();
         
            //  alert("pf->"+pf);  
                        var pdr = $(this).find("#pdr").val();
         
              //   alert("pdr->"+pdr); 
                   var Wages_Register_Rate = $(this).find("#Wages_Register_Rate").val();
             var payment_mode = $(this).find("#payment_mode").val();
            var Conveyance_Allowance = $(this).find("#Conveyance_Allowance").val();
                  // alert("payment_mode->"+payment_mode); 
         var Washing_Allowance = $(this).find("#Washing_Allowance").val();
           var Education_Allowance = $(this).find("#Education_Allowance").val();  
            var skill_Allowance = $(this).find("#skill_Allowance").val(); 
           var LWF = $(this).find("#LWF").val(); 
           
                   $.ajax({
                   
                            type:"POST",
                           url:"Insert_Recruitment_Servlet",
                           data:{  
                                date:date,
                               gate_pass:gate_pass,
                               company_name:company_name,
                               company_id:company_id,
                               full_name:full_name,
                               father_name:father_name,
                               education:education,
                              previous_experience:previous_experience,
                               Employee_Type:Employee_Type,
                               DEPARTMENT:DEPARTMENT,
                               designation:designation,
                               dob:dob,
                               b_place:b_place,
                               Gen:Gen,
                               b_group:b_group,
                               adhar:adhar,
                               pan_no:pan_no,
                               nomi_name:nomi_name,
                               rel_nominee:rel_nominee,
                               nominee_dob:nominee_dob,
                               address:address,
                               village:village,
                               post_off:post_off,
                               taluka:taluka,
                               police_stat:police_stat,
                               district:district,
                               state:state,
                               pin_code:pin_code,
                               mob_no:mob_no,
                               phone:phone,
                               address1:address1,
                               village1:village1,
                               post_off1:post_off1,
                               taluka1:taluka1,
                               police_stat1:police_stat1,
                               district1:district1,
                               state1:state1,
                               pin_code1:pin_code1,
                               mob_no1:mob_no1,
                               phone1:phone1,
                               bank_Name:bank_Name,
                               acc_no:acc_no,
                               b_name:b_name,
                               ifsc_code:ifsc_code,
                                uan:uan,
                               pf_no:pf_no,
                               esic_no:esic_no,
                               pfp:pfp,
                               esicp:esicp,
                               hrap:hrap,
                               bonusp:bonusp,
                               pf:pf,
                               pdr:pdr,
                               Wages_Register_Rate:Wages_Register_Rate,
                               payment_mode:payment_mode,
                               sub_unit:sub_unit,
                               Conveyance_Allowance:Conveyance_Allowance,
                               Washing_Allowance:Washing_Allowance,
                               Education_Allowance:Education_Allowance,
                               skill_Allowance:skill_Allowance,
                               LWF:LWF
                               
                               
                           },
                           success:function(data)
                           {
                               //alert(data);
                               $('#successMessage').html('Data inserted successfully').delay(5000).fadeOut();
                               $('#successMessage').show();
                               $('#demo-form3').triger("reset");
                           }
                       });
                 
                       return false;
                   });
               });
      


$(document).ready(function() {
//     alert("unidt=============> ");
      $("#Data").change( function(){
   //        alert("unidt=============> 1111111111111111");
        var  Data = document.getElementById("Data").value;
   //  alert("unidt=============> "+Unit_Id);
          var res=Data.split("-");
        
        // document.getElementById("company_name").value=res[0];
          //  alert("unidt=============> "+res[0]);
           document.getElementById("DEPARTMENT").value=res[0];
           document.getElementById("Employee_Type").value=res[1];
           document.getElementById("designation").value=res[2];
          document.getElementById("pfp").value=res[3];
        //  alert("id----->"+res[0]);
          document.getElementById("esicp").value=res[4];
          document.getElementById("hrap").value=res[5];
          document.getElementById("bonusp").value=res[6];
          document.getElementById("Conveyance_Allowance").value=res[7];
          document.getElementById("Education_Allowance").value=res[8];
          document.getElementById("Washing_Allowance").value=res[9];
          document.getElementById("skill_Allowance").value=res[10];
          document.getElementById("pdr").value=res[11];
          document.getElementById("Wages_Register_Rate").value=res[12];
          document.getElementById("LWF").value=res[13];
         //  document.getElementById("bank_Name").value=res[4];
          //  document.getElementById("acc_no").value=res[5];
             //document.getElementById("ifsc_code").value=res[6];
             // document.getElementById("pf_no").value=res[7];
              // document.getElementById("esic_no").value=res[8];
                 
         
        // alert("Designation=====>"+res[3]);
         
          //alert("unidtcccccccccccccccccccccccc=============> "+res[9]);
         // document.getElementById("Designation_Rate").value=0;
 //rs2= s.executeQuery("select Unit_id,emp_id,First_name,Last_name,designation,Ifsc_no,ESIC_no,pf_no_a,bank_name,accno from security_recruityment where Unit_name='"+pr+"'");

       });
    });
    


   $(document).ready(function() {
      $(".select2_single").select2({
        placeholder: "Select a state",
        allowClear: true
      });
      $(".select2_group").select2({});
      
    $(".select2_multiple").select2({
        maximumSelectionLength: 9,
        placeholder: "With Max Selection limit 9",
        allowClear: true
      });
    });
        $(function() {
          $( ".datepicker" ).datepicker();
        });
         $(function() {
          $( ".datepicker1" ).datepicker();
        });
         $(function() {
          $( ".datepicker2").datepicker();
        });
/* $(document).ready(function () {
                  
 $("#Day_wise_Attendence").click(function () {
                      // var  From_Date = $(this).find("[name='From_Date']").val();
                       var  From_Date =document.getElementById("From_Date").value;
                       alert("From_Date===>"+From_Date);
                       var  To_Date =document.getElementById("To_Date").value;
                      alert("To_Date===>"+To_Date);
                       $.ajax({
                           type: "POST",
                           url: "datecal",
                           data: {  
                               From_Date :From_Date,
                               To_Date :To_Date
                               },
                           success: function(data){
                               alert("data====>"+data);
                               $('#successMessage').html('Admin Added Succesfully');
                               $('#successMessage').show();
                           }
                       });
                       return false;
                   });
               });
               
 $("#Day_wise_Attendence").click(function(e){
          
          var  From_Date = $("input#From_Date").val();
          alert("======>"+From_Date);
          var To_Date = $("input#To_Date").val();
           alert("======>"+To_Date);
          var dataString = "From_Date=" + From_Date+"To_Date="+To_Date;
           
            //make the AJAX request, dataType is set to json
            //meaning we are expecting JSON data in response from the server
            $.ajax({
                type: "POST",
                url:"datecal",
                data:dataString,
                dataType: "json",
               
                //if received a response from the server
                success: function( data, textStatus, jqXHR) {
                    //our country code was correct so we have some information to display
                     alert("======>12345");
                     if(data.success){
                         $("#Day_wise_Attendence").html("");
                         $("#Day_wise_Attendence").append("<b>From_Date:</b> " +data.From_Date+ "<br/>");
                          $("#Day_wise_Attendence").append("<b>To_Date:</b> " +data.To_Date+ "<br/>");
                     } 
                     //display error message
                     else {
                         $("#Day_wise_Attendence").html("<div><b>Country code in Invalid!</b></div>");
                     }
                },
               
                //If there was no resonse from the server
                error: function(jqXHR, textStatus, errorThrown){
                     console.log("Something really bad happened " + textStatus);
                      $("#Day_wise_Attendence").html(jqXHR.responseText);
                },
               
                //capture the request before it was sent to server
                beforeSend: function(jqXHR, settings){
                    //adding some Dummy data to the request
                    settings.data += "&dummyData=whatever";
                    //disable the button until we get the response
                    $('#Day_wise_Attendence').attr("disabled", true);
                },
               
                //this is called after the response or error functions are finsihed
                //so that we can take some action
                complete: function(jqXHR, textStatus){
                    //enable the button 
                    $('#Day_wise_Attendence').attr("disabled", false);
                }
     
            });        
    });

});*/
   
 function showState1(){
          var xmlHttp ; 
 var xmlHttp;
     // var  From_Date = $(this).find("[name='From_Date']").val();
                       var  From_Date =document.getElementById("From_Date").value;
       //                alert("From_Date===>"+From_Date);
                       var  To_Date =document.getElementById("To_Date").value;
     //                 alert("To_Date===>"+To_Date);
                  
if (typeof XMLHttpRequest != "undefined"){
   xmlHttp= new XMLHttpRequest();
       }
       else if (window.ActiveXObject){
   xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
       }
if (xmlHttp==null){
   // alert ("Browser does not support XMLHTTP Request");
return
} 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
   // alert (" aaaaaaaaaaaaaaaaaa ======>");
 document.getElementById("Day_wise_Attendence").innerHTML=xmlHttp.responseText;  
 }   
var url="datecal?From_Date="+From_Date+"&To_Date="+To_Date;
xmlHttp.onreadystatechange = stateChange;
 //alert ("Browser  support XMLHTTP Request");
 
xmlHttp.open("GET", url, true);
xmlHttp.send(null);

}
 function stateChange(){
   //  alert ("Browser  support XMLHTTP Request")
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
 document.getElementById("Day_wise_Attendence").innerHTML=xmlHttp.responseText;  
 }   
 }   

          
 function showState() {
               var  From_Date =document.getElementById("From_Date").value;
                       //alert("From_Date===>"+From_Date);
                       var  To_Date =document.getElementById("To_Date").value;
                      //alert("To_Date===>"+To_Date);
             
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
                        //   alert("To_Date===>111111111111111");
   var p=document.getElementById("Day_wise_Attendence").innerHTML = this.responseText;
   document.getElementById("Day_wise_Attendence").value=p;
   //alert("p===>"+p);
    }
  };
  var url="datecal?From_Date="+From_Date+"&To_Date="+To_Date;
  xhttp.open("GET",url, true);
  xhttp.send();
}
         
  function today1(){
     var Day_wise_Attendence =document.getElementById("Day_wise_Attendence").value;
     //alert("Day_wise_Attendence="+Day_wise_Attendence);
     var Leave_in_between =document.getElementById("Leave_in_between").value;
      //alert("Leave_in_between="+Leave_in_between);
     var Over_Time_Duties =document.getElementById("Over_Time_Duties").value;
     var valueTotal_Duties=parseInt(Day_wise_Attendence)-parseInt(Leave_in_between)+parseInt(Over_Time_Duties);
     //alert("valueTotal_Duties="+valueTotal_Duties);
     document.getElementById("Total_Duties").value=valueTotal_Duties;
      
  }          
      function EmployeeType(){
        
     var Employee_Type =document.getElementById("Employee_Type").value;
    
    if(Employee_Type =='Skilled Employee')
    {
         
        if(Skilled_Employee1=='0'){
        alert("Skilled Employee is 0 select other Employee type");
    }
     else{
    }
    }
   
    if(Employee_Type=='Semiskilled Employee')
    {
       if( Semiskilled_Employee=='0'){
        alert("Semiskilled Employee is 0 select other Employee type");
        
    }
         else{
    }
    
    }
    if(Employee_Type=='Unskilled Employee')
    {
        if(Unskilled_Employee=='0'){
        alert("Unskilled Employee is 0 select other Employee type");
    }
       else{
    }   
    }
    if(Employee_Type=='Supervisor')
    {
        if(Supervisor=='0'){
        alert("Supervisor is 0 select other Employee type");
    }
          else{
    }
    }
    
  } 
      
   function addDate(){
date = new Date();
var month = date.getMonth()+1;
var day = date.getDate();
var year = date.getFullYear();

if (document.getElementById('date').value == ''){
document.getElementById('date').value = day + '-' + month + '-' + year;
}

}            
          
          </script>
  
          
          
          



   </html>
