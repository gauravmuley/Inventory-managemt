<%-- 
    Document   : Provident_Fund
    Created on : Feb 18, 2020, 3:51:41 PM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SecurityBean.DataService"%>
<%! ResultSet rs1,rs,rs2,rs3,rs5;DataService ds1;ArrayList ar;Iterator ity;Object o1=null; Statement statement=null; String c,Skilled_Employee,Semiskilled_Employee, Unskilled_Employee,Supervisor;int Skilled_Employee1=0; %>
<!DOCTYPE html>
<%--
    HttpSession session_login = request.getSession();
 String client= session_login.getAttribute("cnameP").toString();

--%>
<html>
    <head>
<!--         style="height:32px; background-color:rgb(232, 240, 254) !important; box-shadow:0 1px 0 #fff, 0 -2px 5px rgba(0,0,0,0.08) inset; border-radius:10px;width:385px;height:45px;margin-left:10px;-->
        <style>
            .company_name {
    border-radius: 0px;
    margin-left: 11px;
}
        </style>
    </head>
    <body>
   <div class="right_col" role="main">
        <div class="">
        <div class="page-title">
           <div class="title_left">
                  <h3 style="color:black;">Employees Provident Fund Organization</h3>
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
                  <script>
                      function myFunction(){
                          var checkbox =document.getElementById("SPECIALLY_ABLED");
                          var text= document.getElementById("LOCOMOTIVE");
                           if(checkbox.checked==true){
                               text.style.display="block";
                               text.style.transition="is";
                           } else{
                               text.style.display="none";
                               text.style.transistion="is"
                           }
                      }
                      </script>
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
                <center> <h3 style="color:black;">Employee Details</h3> </center>
                <center>  
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                
            </div><br>

   <div class="group">
               <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">NAME OF ESTABLISHMENT</label>
                  <div class="" placeholder="Select Company" required="" >
                         <%try{
                            String CLIENTS_LIST=request.getParameter("company_name");
                  //System.out.println("asdfg"+CLIENTS_LIST);
//                              ds1= new DataService();
//                              rs=ds1.create_client_data();
//                              ar=new ArrayList();
//                              while(rs.next())
//                              ar.add(rs.getObject(1));
//                              rs.close();
                             %>
                            
            <select class="company_name" name="company_name" id="company_name" class="form-control"  style="height:35px; background-color:white;  box-shadow:0 1px 0 #fff, 0 -2px 5px rgba(0,0,0,0.08) inset;width:48%;">
             <optgroup label="company_name">
            

                           
  <option value="<%=CLIENTS_LIST%>"><%=CLIENTS_LIST%></option>
                            
                </optgroup>
            </select>
          </div>
        </div>
                <div class="group">
               <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">EMPLOYEE NAME </label>
                  <div class="" placeholder="Select Company" required="" >
                         <%try{
//                             String CLIENTS_LIST=request.getParameter("company_name");
//                            System.out.println("asdfg"+CLIENTS_LIST);
                              ds1= new DataService();
                              rs=ds1.create_emp_data(CLIENTS_LIST);
                              ar=new ArrayList();
                              while(rs.next())
                              ar.add(rs.getObject(1));
                              rs.close();
                             %>
             <select class="fulname " name="fulname" id="fulname" class="form-control" style="height:35px; background-color:white;  box-shadow:0 1px 0 #fff, 0 -2px 5px rgba(0,0,0,0.08) inset;width:48%;">
<!--             <optgroup label="fulname">-->
             <option value="Select Employee Name">Select Employee Name</option>

                           <%ity=ar.iterator();
                            while(ity.hasNext()){
                             o1=ity.next();
                           %>
  <option value="<%=o1%>"><%=o1%></option>
                             <%}
                             
                             %> 
                </optgroup>
            </select>
          </div>
        </div>
                <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">DATA</label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                       <select id="Data" name="Data" class="select2_single form-control">
                       
                       </select>
                      </div>
                    </div> 
                
                        
<!--                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">NAME
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          
                      <input type="text" id="Name" name="Name"  class="form-control col-md-7 col-xs-12" >
                      </div>
                    </div>
                   -->
                      <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">DOB
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="dob" name="dob"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 
                     
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12"  style="color:black;">FATHERS/HUSBAND NAME
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="fathname" name="fathname"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
           
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">RELATIONSHIP
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="relationship" name="relationship"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 

<!--                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">RELATIONSHIP
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">FATHERS
                        <input  type="radio"  id="relationship" name="relationship" value="H" style="color:black;">HUSBAND
                    </div>
                    </div>-->
                     
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">GENDER
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="Gender" name="Gender" value="F" style="color:black;">MALE
                        <input  type="radio"  id="Gender" name="Gender" value="M" style="color:black;">FEMALE
                        <input  type="radio"  id="Gender" name="Gender" value="T" style="color:black;">TRANSGENDER
                    </div>
                    </div>
                    
                    
                 
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">MOBILE NUMBER
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="MOBILE_NUMBER" name="MOBILE_NUMBER"  class="form-control col-md-7 col-xs-12">
                      </div>
                   
                   </div>
                       
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12"  style="color:black;">EMAIL ID
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="EMAIL_ID" name="EMAIL_ID"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">WHETHER EARLIER A MEMBER OF THE EMPLOYEES PROVIDENT FUND SCHEME,1952?
                      </label>
                      <div class="col-sm-6">
                        <input  type="radio"  id="PF" name="PF" value="Y" style="color:black;">YES
                        <input  type="radio"  id="PF" name="PF" value="N" style="color:black;">NO
                    </div>
                    </div>
                     
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">WHETHER EARLIER A MEMBER OF THE EMPLOYEES PENSION SCHEME,1995?
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="PENSION" name="PENSION" value="F" style="color:black;">YES
                        <input  type="radio"  id="PENSION" name="PENSION" value="H" style="color:black;">NO
                    </div>
                    </div>
            <div>      
                <center> <h4 style="color:black;">A. PREVIOUS EMPLOYMENT DETAILS</h4> </center>
                <center>  
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                
            </div><br>
           
            <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">UAN
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="UAN" name="UAN"  class="form-control col-md-7 col-xs-12">
                      </div>
                   
                   </div>
                   
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">PREVIOUS PF MEMBER ID
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="pfno" name="pfno"  class="form-control col-md-7 col-xs-12">
                      </div>
                   
                   </div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;"> IF SCHEME CERTIFICATE ISSUED FOR PREVIOUS EMPLOYMENT, THEN SCHEME CERTIFICATE NUMBER 
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="PFNO" name="PFNO"  class="form-control col-md-7 col-xs-12">
                      </div>
                   
                   </div>
                   
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">IF PENSION PAYMENT ORDER (PPO) ISSUED FOR PREVIOUS EMPLOYMENT,THEN PPO NUMBER
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="PPO" name="PPO"  class="form-control col-md-7 col-xs-12">
                      </div>
                   
                   </div>
            <div>      
                <center> <h4 style="color:black;">B. OTHER DETAILS</h4> </center>
                <center>  
             <h3 style="color:black;">_____________________________________________________________________</h3></center>
                
            </div>
            <br>
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">INTERNATIONAL WORKER 
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="INTERNATIONAL_WORKER " name="INTERNATIONAL_WORKER" value="Y" style="color:black;">YES
                        <input  type="radio"  id="INTERNATIONAL_WORKER " name="INTERNATIONAL_WORKER" value="N" style="color:black;">NO
                    </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">(A)Country Of Origin
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="Country_Of_Origin" name="Country_Of_Origin" value="I" style="color:black;">INDIA
                        <input  type="radio"  id="Country_Of_Origin" name="Country_Of_Origin" value="N" style="color:black;">OTHER
                    </div>
                    </div>
                      <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">PASSPORT NUMBER
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="PASSPORT_NUMBER" name="PASSPORT_NUMBER"  class="form-control col-md-7 col-xs-12">
                      </div>
                   
                   </div>
           
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">VALID FROM
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="date" id="VALID_FROM" name="VALID_FROM"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">VALID TO
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="date" id="VALID_TO" name="VALID _TO"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 
                      <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">EDUCATIONAL QUALIFICATION
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">ILLITRATE
                        <input  type="radio"  id="relationship" name="relationship" value="H" style="color:black;">NON MATRIC
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">MATRIC
                        <input  type="radio"  id="relationship" name="relationship" value="H" style="color:black;">SENIOR SECONDARY
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">GRADUATE
                        <input  type="radio"  id="relationship" name="relationship" value="H" style="color:black;">DOCTOR<BR>
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">TECHNICAL/PROFESSIONAL
                          </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">MARITAL STATUS
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">MARRIED
                        <input  type="radio"  id="relationship" name="relationship" value="H" style="color:black;">UNMARRID
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">WIDOW/WIDOWER
                        <input  type="radio"  id="relationship" name="relationship" value="H" style="color:black;">DIVORCEE
                   </div>
                    </div>
<!--                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">SPECIALLY ABLED
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">YES
                        <input  type="radio"  id="relationship" name="relationship" value="H" style="color:black;">NO
                    </div>
                    </div>-->
<!--                    <div class="form-group">
                        <div class="col-sm-12">
                            <label class="radio-inline"><input class="other_charge" id="other_charges" type="checkbox" name="other_charge" onclick="myfunction();">SPECIALLY ABLED</label>
                            <span id="" style="color:red;"></span>
                        </div>
                    </div>
                    <div class="form-group" id="SPECIALLY_ABLED" style="display:none">
                        <label for="LOCOMOTIVE" class="col-sm-2 control-label">LOCOMOTIVE</label>
                        <div class="col-sm-4">
                            <input autocomplete="off"name="LOCOMOTIVE" type="text" value="" class="form-control" placeholder="" id="LOCOMOTIVE">
                         <span id="err_item_name" style="color:red;"></span>
                    </div>
                        <label for="VISUAL" class="col-sm-2 control-label">VISUAL</label>
                        <div class="col-sm-4">
                            <input autocomplete="off"name="VISUAL" type="text" value="" class="form-control" placeholder="" id="VISUAL">
                         <span id="err_item_name" style="color:red;"></span>
                    </div>
                        <label for="HEARING" class="col-sm-2 control-label">HEARING</label>
                        <div class="col-sm-4">
                            <input autocomplete="off"name="HEARING" type="text" value="" class="form-control" placeholder="" id="HEARING">
                         <span id="err_item_name" style="color:red;"></span>
                    </div>
                    </div>-->

   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">SPECIALLY ABLED
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="show" name="show" value="Y" style="color:black;">YES
                        <input  type="radio"  id="hide" name="show" value="N" style="color:black;">NO
              
                        <div class="form-group" id="SPECIALLY_ABLED" style="display:none">
                             <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="checkbox"  id="LOCOMOTIVE" name="LOCOMOTIVE" value="LOCOMOTIVE" style="color:black;">LOCOMOTIVE
                        <input  type="checkbox"  id="VISUAL" name="VISUAL" value="VISUAL" style="color:black;">VISUAL
                        <input  type="checkbox"  id="HEARING" name="HEARING" value="HEARING" style="color:black;">HEARING
                             </div> <span id="err_item_name" style="color:red;"></span>
                    </div>
                              </div>

                     </div>
<p>  
 
<!--                        <label for="VISUAL" class="col-sm-2 control-label">VISUAL</label>
                        <div class="col-sm-4">
                            <input autocomplete="off"name="VISUAL" type="checkbox" value="" class="form-control" placeholder="" id="VISUAL">
                         <span id="err_item_name" style="color:red;"></span>
                    </div>
                        <label for="HEARING" class="col-sm-2 control-label">HEARING</label>
                        <div class="col-sm-4">
                            <input autocomplete="off"name="HEARING" type="checkbox" value="" class="form-control" placeholder="" id="HEARING">
                         <span id="err_item_name" style="color:red;"></span>
                    </div>
                    </div></p> -->
                     
<!--% } catch(Exception e){
System.out.println(""+e);
}%-->               <center><button type="submit" class="btn btn-primary">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-bottom: 0;"><a href="index.jsp">Close</a></button></center>
                        <% } catch(Exception u1){ System.out.println("=====>"+u1);  } 
finally{
        try{
        //ds1.c.close();
        }catch(Exception y3){}
}%> 
<%} catch(Exception u1){ System.out.println("=====>"+u1);  } 
finally{
        try{
        //ds1.c.close();
        }catch(Exception y3){}
}%> 
        </form>
                          </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div>
                </div>
            </div>
        <div class="clearfix"></div> 
         <script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <meta charset="utf-8" />
    
    <link rel="stylesheet"   href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<!--   <script type="text/javascript">
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
    -->
    
    <script>
     $(document).ready(function() 
{ 
         //alert("Unit_name===>123456");
        $('#fulname').change(function(){
       var fulname = document.getElementById("fulname").value;
//         var company_name = document.getElementById("company_name").value;
         // var Employee_Type = document.getElementById("Employee_Type").value;
       // alert("company_name===>123456"+company_name);
        $('#Data').find('option').remove().end().append('<option value="whatever">Data</option>').val(' ');

   //    var  Unit_name=$(this).find("[name='Unit_name']").val();
      
    $.ajax({
       type: "POST",
        url:"ComboServlet",
        
        data:{
               fulname:fulname
//               company_name:company_name
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
     
              var fulname  = $(this).find("[name='fulname']").val();
                alert("fulname===========>"+fulname);
                
                var dob= $(this).find("[name='dob']").val();
                alert("dob====>"+dob);
                
                var fathname= $(this).find("[name='fathname']").val();
                alert("fathname====>"+fathname);
                 
                var relationship = $(this).find("[name='relationship']:checked").val();
                alert("relationship====>"+relationship);
               
                var  Gender = $(this).find("[name='Gender']").val();
                alert("Gender====>"+Gender);
                
                var  mobno = $(this).find("[name='mobno']").val();
                alert("mobno====>"+mobno);
              
                var Email = $(this).find("[name='Email']").val();
                alert("Email====>"+Email);
                 
                var pf = $(this).find("[name='pf']").val();
                alert("pf====>"+pf);
                
                var pension = $(this).find("[name='pension']").val();
                alert("pension====>"+pension);
                
                var u_no = $(this).find("[name='u_no']").val();
                alert("u_no====>"+u_no);
                
                var pfno= $(this).find("[name='pfno']").val(); 
                alert("pfno====>"+pfno);
                
                var c_no= $(this).find("[name='c_no']").val();
                alert("c_no====>"+c_no);
               
                var ppo = $(this).find("[name='ppo']").val();
                alert("ppo====>"+ppo);
                
                var Intrnational_Worker= $(this).find("[name='Intrnational_Worker']").val();
                alert("Intrnational_Worker====>"+Intrnational_Worker);
                
                var Country = $(this).find("[name='Country']").val();
                alert("Country====>"+Country);
                   
                var Passport_No = $(this).find("[name='Passport_No']").val();
                alert("Passport_No====>"+Passport_No);
           
                var Valid_from = $(this).find("[name='Valid_from']").val();
                alert("Valid_from====>"+Valid_from);
               
                var Valid_To = $(this).find("[name='Valid_To']").val();
                alert("Valid_To====>"+Valid_To);
                   
                var Education = $(this).find("[name='Education']").val();
                alert("Education====>"+Education);
                
                var Marital_Status= $(this).find("[name='Marital_Status']").val();
                alert("Marital_Status====>"+Marital_Status);
                  
                var Show = $(this).find("[name='Show']").val();
                alert("Show====>"+Show);
                      
                var Abled_Category = $(this).find("[name='Abled_Category']").val();
                alert("Abled_Category====>"+Abled_Category);
               
                var Bank_Acc_Name = $(this).find("[name='Bank_Acc_Name']").val();
                alert("Bank_Acc_Name====>"+Bank_Acc_Name);
                   
                var Bank_Acc_No = $(this).find("[name='Bank_Acc_No']").val();
                alert("Bank_Acc_No====>"+Bank_Acc_No);
                
                var Bank_Acc_Remark= $(this).find("[name='Bank_Acc_Remark']").val();
                alert("Bank_Acc_Remark====>"+Bank_Acc_Remark);
               
                var Addhar_Name = $(this).find("[name='Addhar_Name']").val();
                alert("Addhar_Name====>"+Addhar_Name);
                  
                var Addhar_No = $(this).find("[name='Addhar_No']").val();
                alert("Addhar_No====>"+Addhar_No);
                   
                var Addhar_Remark = $(this).find("[name='Addhar_Remark']").val();
                alert("Addhar_Remark====>"+Addhar_Remark);
               
                var PAN_Name = $(this).find("[name='PAN_Name']").val();
                alert("PAN_Name====>"+PAN_Name);
                   
                var PAN_No = $(this).find("[name='PAN_No']").val();
                alert("PAN_No====>"+PAN_No);
                
                var PAN_Remark= $(this).find("[name='PAN_Remark']").val();
                alert("PAN_Remark====>"+PAN_Remark);
                
                var Passport_Name = $(this).find("[name='Passport_Name']").val();
                alert("Passport_Name====>"+Passport_Name);
                
                var Passport_No = $(this).find("[name='Passport_No']").val();
                alert("Passport_No====>"+Passport_No);
                    
                var Passport_Remark = $(this).find("[name='Passport_Remark']").val();
                alert("Passport_Remark====>"+Passport_Remark);
               
                var Driving_Licence_Name = $(this).find("[name='Driving_Licence_Name']").val();
                alert("Driving_Licence_Name====>"+Driving_Licence_Name);
                   
                var Driving_Licence_No = $(this).find("[name='Driving_Licence_No']").val();
                alert("adhar====>"+adhar);
                
                var Driving_Licence_Remark= $(this).find("[name='Driving_Licence_Remark']").val();
                alert("Driving_Licence_No====>"+Driving_Licence_No);
                 
                var Election_Card_Name = $(this).find("[name='Election_Card_Name']").val();
                alert("Election_Card_Name====>"+Election_Card_Name);
                
                var Election_Card_No = $(this).find("[name='Election_Card_No']").val();
                alert("Election_Card_No====>"+Election_Card_No);
                   
                var Election_Card_Remark = $(this).find("[name='Election_Card_Remark']").val();
                alert("Election_Card_Remark====>"+Election_Card_Remark);
               
                var Ration_Card_Name = $(this).find("[name='Ration_Card_Name']").val();
                alert("Ration_Card_Name====>"+Ration_Card_Name);
                   
                var Ration_Card_No = $(this).find("[name='Ration_Card_No']").val();
                alert("Ration_Card_No====>"+Ration_Card_No);
                  
                var Ration_Card_Remark = $(this).find("[name='Ration_Card_Remark']").val();
                alert("Ration_Card_Remark====>"+Ration_Card_Remark);
                   
                var ESIC_Card_Name = $(this).find("[name='ESIC_Card_Name']").val();
                alert("ESIC_Card_Name====>"+ESIC_Card_Name);
                   
                var ESIC_Card_No = $(this).find("[name='ESIC_Card_No']").val();
                alert("ESIC_Card_No====>"+ESIC_Card_No);
                   
                var ESIC_Card_Remark = $(this).find("[name='ESIC_Card_Remark']").val();
                alert("ESIC_Card_Remark====>"+ESIC_Card_Remark);
           
                   $.ajax({
                   
                            type:"POST",
                           url:"Provident_fund_Servlet",
                           data:{  
                                 fulname:fulname,
                               dob:dob,
                               fathname:fathname,
                               relationship:relationship,
                               Gender:Gender,
                               mobno:mobno,
                               Email:Email,
                               pf:pf,
                               pension:pension,
                               u_no:u_no,
                               pfno:pfno,
                               c_no:c_no,
                               ppo:ppo,
                               Intrnational_Worker:Intrnational_Worker,
                               Country:Country,
                               Passport_No:Passport_No,
                               Valid_from:Valid_from,
                               Valid_To:Valid_To,
                               Education:Education,
                               Marital_Status:Marital_Status,
                               Show:Show,
                               Abled_Category:Abled_Category,
                               Bank_Acc_Name:Bank_Acc_Name,
                               Bank_Acc_No:Bank_Acc_No,
                               Bank_Acc_Remark:Bank_Acc_Remark,
                               Addhar_Name:Addhar_Name,
                               Addhar_No:Addhar_No,
                               Addhar_Remark:Addhar_Remark,
                               PAN_Name:PAN_Name,
                               PAN_No:PAN_No,
                               PAN_Remark:PAN_Remark,
                               Passport_Name:Passport_Name,
                               Passport_No:Passport_No,
                               Passport_Remark:Passport_Remark,
                               Driving_Licence_Name:Driving_Licence_Name,
                               Driving_Licence_No:Driving_Licence_No,
                               Driving_Licence_Remark:Driving_Licence_Remark,
                               Election_Card_Name:Election_Card_Name,
                               Election_Card_No:Election_Card_No,
                               Election_Card_Remark:Election_Card_Remark,
                               Ration_Card_Name:Ration_Card_Name,
                               Ration_Card_No:Ration_Card_No,
                               Ration_Card_Remark:Ration_Card_No,
                               ESIC_Card_Name:ESIC_Card_Name,
                               ESIC_Card_No:ESIC_Card_No,
                               ESIC_Card_Remark:ESIC_Card_Remark
                               
                               
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
           document.getElementById("dob").value=res[0];
           document.getElementById("fathname").value=res[1];
           document.getElementById("relationship").value=res[2];
           document.getElementById("mobno").value=res[3];
           document.getElementById("u_no").value=res[4];
           document.getElementById("pencel").value=res[5];
//           document.getElementById("fulname").value=res[1];
           document.getElementById("pfno").value=res[7];
          
        //  alert("id----->"+res[0]);
          
         
          
          
//          document.getElementById("Education_Allowance").value=res[8];
//          document.getElementById("Washing_Allowance").value=res[9];
//          document.getElementById("skill_Allowance").value=res[10];
//          document.getElementById("pdr").value=res[11];
//          document.getElementById("Wages_Register_Rate").value=res[12];
//          document.getElementById("LWF").value=res[13];
         //  document.getElementById("bank_Name").value=res[4];
          //  document.getElementById("acc_no").value=res[5];
             //document.getElementById("ifsc_code").value=res[6];
             // document.getElementById("pf_no").value=res[7];
//          document.getElementById("Education_Allowance").value=res[8];
//          document.getElementById("Washing_Allowance").value=res[9];
//          document.getElementById("skill_Allowance").value=res[10];
//          document.getElementById("pdr").value=res[11];
//          document.getElementById("Wages_Register_Rate").value=res[12];
//          document.getElementById("LWF").value=res[13];
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
    


//   $(document).ready(function() {
//      $(".select2_single").select2({
//        placeholder: "Select a state",
//        allowClear: true
//      });
//      $(".select2_group").select2({});
//      
//    $(".select2_multiple").select2({
//        maximumSelectionLength: 9,
//        placeholder: "With Max Selection limit 9",
//        allowClear: true
//      });
//    });
//        $(function() {
//          $( ".datepicker" ).datepicker();
//        });
//         $(function() {
//          $( ".datepicker1" ).datepicker();
//        });
//         $(function() {
//          $( ".datepicker2").datepicker();
//        });
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
   
// function showState1(){
//          var xmlHttp ; 
// var xmlHttp;
//     // var  From_Date = $(this).find("[name='From_Date']").val();
//                       var  From_Date =document.getElementById("From_Date").value;
//       //                alert("From_Date===>"+From_Date);
//                       var  To_Date =document.getElementById("To_Date").value;
//     //                 alert("To_Date===>"+To_Date);
//                  
//if (typeof XMLHttpRequest != "undefined"){
//   xmlHttp= new XMLHttpRequest();
//       }
//       else if (window.ActiveXObject){
//   xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
//       }
//if (xmlHttp==null){
//   // alert ("Browser does not support XMLHTTP Request");
//return
//} 
//if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
//   // alert (" aaaaaaaaaaaaaaaaaa ======>");
// document.getElementById("Day_wise_Attendence").innerHTML=xmlHttp.responseText;  
// }   
//var url="datecal?From_Date="+From_Date+"&To_Date="+To_Date;
//xmlHttp.onreadystatechange = stateChange;
// //alert ("Browser  support XMLHTTP Request");
// 
//xmlHttp.open("GET", url, true);
//xmlHttp.send(null);
//
//}
// function stateChange(){
//   //  alert ("Browser  support XMLHTTP Request")
// if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
// document.getElementById("Day_wise_Attendence").innerHTML=xmlHttp.responseText;  
// }   
// }   
//
//          
// function showState() {
//               var  From_Date =document.getElementById("From_Date").value;
//                       //alert("From_Date===>"+From_Date);
//                       var  To_Date =document.getElementById("To_Date").value;
//                      //alert("To_Date===>"+To_Date);
//             
//  var xhttp = new XMLHttpRequest();
//  xhttp.onreadystatechange = function() {
//    if (this.readyState == 4 && this.status == 200) {
//                        //   alert("To_Date===>111111111111111");
//   var p=document.getElementById("Day_wise_Attendence").innerHTML = this.responseText;
//   document.getElementById("Day_wise_Attendence").value=p;
//   //alert("p===>"+p);
//    }
//  };
//  var url="datecal?From_Date="+From_Date+"&To_Date="+To_Date;
//  xhttp.open("GET",url, true);
//  xhttp.send();
//}
//         
//  function today1(){
//     var Day_wise_Attendence =document.getElementById("Day_wise_Attendence").value;
//     //alert("Day_wise_Attendence="+Day_wise_Attendence);
//     var Leave_in_between =document.getElementById("Leave_in_between").value;
//      //alert("Leave_in_between="+Leave_in_between);
//     var Over_Time_Duties =document.getElementById("Over_Time_Duties").value;
//     var valueTotal_Duties=parseInt(Day_wise_Attendence)-parseInt(Leave_in_between)+parseInt(Over_Time_Duties);
//     //alert("valueTotal_Duties="+valueTotal_Duties);
//     document.getElementById("Total_Duties").value=valueTotal_Duties;
//      
//  }          
//      function EmployeeType(){
//        
//     var Employee_Type =document.getElementById("Employee_Type").value;
//    
//    if(Employee_Type =='Skilled Employee')
//    {
//         
//        if(Skilled_Employee1=='0'){
//        alert("Skilled Employee is 0 select other Employee type");
//    }
//     else{
//    }
//    }
//   
//    if(Employee_Type=='Semiskilled Employee')
//    {
//       if( Semiskilled_Employee=='0'){
//        alert("Semiskilled Employee is 0 select other Employee type");
//        
//    }
//         else{
//    }
//    
//    }
//    if(Employee_Type=='Unskilled Employee')
//    {
//        if(Unskilled_Employee=='0'){
//        alert("Unskilled Employee is 0 select other Employee type");
//    }
//       else{
//    }   
//    }
//    if(Employee_Type=='Supervisor')
//    {
//        if(Supervisor=='0'){
//        alert("Supervisor is 0 select other Employee type");
//    }
//          else{
//    }
//    }
//    
//  } 
//      
//   function addDate(){
//date = new Date();
//var month = date.getMonth()+1;
//var day = date.getDate();
//var year = date.getFullYear();
//
//if (document.getElementById('date').value == ''){
//document.getElementById('date').value = day + '-' + month + '-' + year;
//}
//
//}            
//          
          </script>
  
          
          
          



   </html>
