<%@page import="java.util.ArrayList"%>
<%@page import="SecurityBean.DataService"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="eror.jsp"%>
<%@page import="java.sql.*"%>
  <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SecurityBean.DataService"%>
<%! ResultSet rs1,rs,rs2,rs3,rs5;DataService ds1;ArrayList ar;Iterator ity;Object o1=null; Statement statement=null;  %>

<!DOCTYPE html>
<html>
    <head >
        <!--<link rel="stylesheet" href="../css/datatables.min.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/datatables.css">-->
        
        <style>
        table,th,tr,td{
            border: 1px solid #333;
padding:8px;
        }
        </style>
    </head>
    <body>   
<%
//String driverName = "com.mysql.jdbc.Driver";
//String connectionUrl = "jdbc:mysql://103.14.99.198:3306/";
//String dbName = "security_force";
//String userId = "root";
//String password = "9QT2{gZvm[Gx~b";


DataService c1;
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!--style>
    table_wrapper{
        display: block;
        overfolw-x: auto;
        white-space: nowrap;
        
    }
</style-->

<!-- page content -->
      <div class="right_col" role="main">
        <div class="">
          <div class="page-title">
            <div class="title_left">
              <h3>
                    Manage Employee Details
                </h3>
            </div>

          </div>
          <div class="clearfix"></div>

          <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_content">
                  
                 <div class="test-right">
                        <input type="button" class="DTTT_button" onclick="tableToExcel('example','W3C Example Table')" value="Export to Excel">
                    </div>
                    <table id="example" class="table table-striped responsive-utilities jambo_table table_unit" style="">
                    <thead>
                      <tr class="headings">
                        <th style="background-color: darkcyan">CLIENTS LIST</th>
                        <th style="background-color: darkcyan">COMPANY</th>
                        <th style="background-color: darkcyan">CONT_RAGISTER_NO</th>
                        <th style="background-color: darkcyan">FILE NO.</th>
                        <th style="background-color: darkcyan">EMPLOYER NAME</th>
                        <th style="background-color: darkcyan">DESIGNATION</th>
                        <th style="background-color: darkcyan">CONTACT NO.</th>
                        <th style="background-color: darkcyan">ADDRESS</th>
                        <th style="background-color: darkcyan">NG/NAG & NG/AKL</th>
                        <th style="background-color: darkcyan">CODE_NO</th>
                        <th style="background-color: darkcyan">NEW_USER_NAME</th>
                        <th style="background-color: darkcyan">PASSWORD</th>
                        <th style="background-color: darkcyan">NEW_PASSWORD</th>
                        <th style="background-color: darkcyan">EMAIL_ID</th>
                        <th style="background-color: darkcyan">DSC</th>
                        <th style="background-color: darkcyan">VALID_FROM</th>
                        <th style="background-color: darkcyan">VALID_TO</th>
                        <th style="background-color: darkcyan">KYC</th>
                        <th style="background-color: darkcyan">FORM11</th>
                        <th style="background-color: darkcyan">KYC_UPDATE</th>
                        <th style="background-color: darkcyan">DSC_RETURN</th>
                        <th style="background-color: darkcyan">FORM_5_A</th>
                        <th style="background-color: darkcyan">FORM_9</th>
                        <th style="background-color: darkcyan">CHALLAN_GENERATED</th>
                        <th style="background-color: darkcyan">POSTING_COMPLETE</th>
                        
               <th style="background-color: darkcyan" class=" no-link last"><span class="nobr">Action</span>
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                         <%
                    try {
                    //String UAN_NO=request.getParameter("UAN_NO");
                    //System.out.println("UAN_NO"+UAN_NO);
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                    System.out.println("connection done");
                    Statement st=con.createStatement();
                    System.out.println("Statement");
                    ResultSet rs=st.executeQuery("select CLIENTS_LIST,COMPANY,CONT_RAGISTER_NO,fILE_NO,EMPLOYER_NAME,DESIGNATION,CONTACT_NO,ADDRESS,NG_NAG_NG_AKL,CODE_NO,NEW_USER_NAME,PASSWORD,NEW_PASSWORD,EMAIL_ID,DSC,VALID_FROM,VALID_TO,KYC,FORM_11,KYC_UPDATE,DSC_RETURN,FORM_5_A,FORM_9,CHALLAN_GENERATED,POSTING_COMPLETE from client_list");
                    //System.out.println("rs=......>>>>>"+rs);
                    //ResultSet rs=st.executeQuery("select * from recruitment_table");
                    System.out.println("pass");
                    int i=0;
                   while (rs.next()) {
                       //System.out.println("sdfghj");
                    %>
                   
                    <%
                    //try {
                    //String UAN_NO=request.getParameter("UAN_NO");
                    //System.out.println("UAN_NO"+UAN_NO);
                   // Class.forName("com.mysql.jdbc.Driver");
                    //Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                    //System.out.println("connection done");
                    //Statement st=con.createStatement();
                    //System.out.println("Statement");
                    //ResultSet rs=st.executeQuery("select CLIENTS_LIST,COMPANY,CONT_RAGISTER_NO,fILE_NO,EMPLOYER_NAME,DESIGNATION,CONTACT_NO,NG_NAG_NG_AKL,CODE_NO,NEW_USER_NAME,PASSWORD,NEW_PASSWORD,EMAIL_ID,DSC,VALID_FROM,VALID_TO,KYC,FORM_11,KYC_UPDATE,DSC_RETURN,FORM_5_A,FORM_9,CHALLAN_GENERATED,POSTING_COMPLETE,ADDRESS from client_list");
                    //System.out.println("rs=......>>>>>"+rs);
                    //ResultSet rs=st.executeQuery("select * from recruitment_table");
                    //System.out.println("pass");
                    //int i=0;
                   //while (rs.next()) {
                       //System.out.println("sdfghj");
                       
                    %>
                    
                           <tr id="<%=i%>">
                            <td><%=rs.getObject(1)%></td>
                            <td><%=rs.getObject(2)%></td>
                            <td><%=rs.getObject(3)%></td>
                            <td><%=rs.getObject(4)%></td>
                            <td><%=rs.getObject(5)%></td>
                            <td><%=rs.getObject(6)%></td>
                            <td><%=rs.getObject(7)%></td>
                            <td><%=rs.getObject(8)%></td>
                            <td><%=rs.getObject(9)%></td>
                            <td><%=rs.getObject(10)%></td>
                            <td><%=rs.getObject(11)%></td>
                            <td><%=rs.getObject(12)%></td>
                            <td><%=rs.getObject(13)%></td>
                            <td><%=rs.getObject(14)%></td>
                            <td><%=rs.getObject(15)%></td>
                           <td><%=rs.getObject(16)%></td>
                           <td><%=rs.getObject(17)%></td>
                           <td><%=rs.getObject(18)%></td>
                           <td><%=rs.getObject(19)%></td>
                           <td><%=rs.getObject(20)%></td>
                           <td><%=rs.getObject(21)%></td>
                           <td><%=rs.getObject(22)%></td>
                           <td><%=rs.getObject(23)%></td>
                           <td><%=rs.getObject(24)%></td>
                           <td><%=rs.getObject(25)%></td>
                           
                            <td class=" last">
                                <%--   <button class="btn btn-danger btn-xs" href="#">Delete User</button>--%>
                             <a><button value="<%=rs.getString("CONTACT_NO")%>" class="deleteUnit btn btn-danger btn-xs btn_delete" >Delete Users</button></a>
                           <button class="btn btn-primary btn-xs btn_edit" data-toggle="modal" data-target="#unit_guard_details" id="<%=i++%>" href="#">Edit Data</button>
                            </td>
                        </tr>
                    <%
                    }
                        
                    } catch (Exception e) {
                    e.printStackTrace();
                     System.out.println("exception ........>>>>>"+e);
                    }
                    System.out.println("end");
                    %>
                     
                    </tbody>
                     <!--<td class=" last" style="display:inline-block; width:280px; box-sizing: border-box;"></td>-->
                  </table>
                 
                
                    
      <div class="modal fade" id="unit_guard_details" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
       <button type="button" class="close sub_unit_details_add_close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Edit Employee Details</h4>
            </div>

            <form id="unit_details_add" method="post" action="" class="form-horizontal form-label-left">
            <div class="modal-body">
                <div id="successMessage2" class="col-md-12 alert alert-success successMessage2" style="display:none">
                    <span>Client Details Updated successfully</span>
                </div>             
                                    
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">CLIENTS LIST
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="CLIENTS_LIST" name="CLIENTS_LIST"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
             <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">COMPANY
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="COMPANY" name="COMPANY"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
            
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">CONT.REGISTER NO.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="CONT_RAGISTER_NO" name="CONT_RAGISTER_NO"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">FILE NO.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="fILE_NO" name="fILE_NO"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">EMPLOYER NAME
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="EMPLOYER_NAME" name="EMPLOYER_NAME" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">DESIGNATION
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="DESIGNATION" name="DESIGNATION"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>   
                       
                         <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">CONTACT NO.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="CONTACT_NO" name="CONTACT_NO" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>   
                       
                        <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">ADDRESS
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="ADDRESS" name="ADDRESS" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>   
                   
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">NG/NAG & NG/AKL
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="NG_NAG_NG_AKL" name="NG_NAG_NG_AKL" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>    
                       
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">CODE NO.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="CODE_NO" name="CODE_NO"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 
                       
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">NEW USER NAME
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="NEW_USER_NAME" name="NEW_USER_NAME"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>  
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">PASSWORD
                                                </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="PASSWORD" name="PASSWORD"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>  
                   
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">NEW PASSWORD
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="NEW_PASSWORD" name="NEW_PASSWORD"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">EMAIL_ID
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text" id="EMAIL_ID" name="EMAIL_ID"class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                      
                         <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">DSC</label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="DSC" name="DSC" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">VALID FROM</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="VALID_FROM" name="VALID_FROM" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                      
                      <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">VALID TO</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="VALID_TO" name="VALID_TO" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                      
                      <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">KYC</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="KYC" name="KYC" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
  
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">FORM11</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="FORM11" name="FORM11" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                      
                       <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">KYC UPDATE</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="KYC_UPDATE" name="KYC_UPDATE" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                      
                        <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">DSC RETURN</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="DSC_RETURN" name="DSC_RETURN" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                      
                        <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">FORM 5 A</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="FORM_5_A" name="FORM_5_A" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                    
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">FROM 9,5-A,SPECIMAN</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="FORM_9" name="FORM_9" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                    
                       <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">CHALLAN GENERATED</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="CHALLAN_GENERATED" name="CHALLAN_GENERATED" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                      
                       <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">POSTING COMPLETE</label>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="POSTING_COMPLETE" name="POSTING_COMPLETE" class="form-control col-md-7 col-xs-12">
                      </div>
                      </div> 
                            
                    
            <div class="modal-footer">
              <button type="button" class="btn btn-default sub_unit_details_add_close" data-dismiss="modal" style="margin-bottom: 0;">Close</button>
              <button type="submit" class="btn btn-success ad_dtl_sbmt">Update Employee Details</button>

            </div>
          
          </div><!-- /.modal-content -->
          </div>
            </form>
        <!-- /.modal-dialog -->
    </div><!-- /.modal -->
  
                    
           <script>
                $("document").ready(function(){
           //alert("asdfghjk");
            var validationArrayRewardval;
            //alert("llllll");
            $('form#unit_details_add').submit(function () {
                var error_text = 0;
                validationArrayRewardval=[];
                $(".err-msg").hide();

                var CLIENTS_LIST = $(this).find("#CLIENTS_LIST").val();
//                alert("CLIENTS_LIST=========>"+CLIENTS_LIST);
                if (CLIENTS_LIST == '') {
                    $("#err_CLIENTS_LIST").show();				
                    validationArrayRewardval.push('CLIENTS_LIST');
                    error_text = 1;
                }
                
                var COMPANY = $(this).find("#COMPANY").val();
//                 alert("COMPANY=========>"+COMPANY);
                if (COMPANY == '') {
                    $("#err_COMPANY").show();				
                    validationArrayRewardval.push('COMPANY');
                    error_text = 1;
                }

                var CONT_RAGISTER_NO = $(this).find("#CONT_RAGISTER_NO").val();
//                 alert("CONT_RAGISTER_NO=========>"+CONT_RAGISTER_NO);
                if (CONT_RAGISTER_NO == '') {
                    $("#err_CONT_RAGISTER_NO").show();				
                    validationArrayRewardval.push('CONT_RAGISTER_NO');
                    error_text = 1;
                }

                var fILE_NO = $(this).find("#fILE_NO").val();
//                alert("fILE_NO=========>"+fILE_NO);
                if (fILE_NO == '') {
                    $("#err_fILE_NO").show();				
                    validationArrayRewardval.push('fILE_NO');
                    error_text = 1;
                }
                
                var EMPLOYER_NAME = $(this).find("#EMPLOYER_NAME").val();
//                alert("EMPLOYER_NAME=========>"+EMPLOYER_NAME);
                if (EMPLOYER_NAME == '') {
                    $("#err_EMPLOYER_NAME").show();				
                    validationArrayRewardval.push('EMPLOYER_NAME');
                    error_text = 1;
                }

                var DESIGNATION = $(this).find("#DESIGNATION").val();
//                alert("DESIGNATION=========>"+DESIGNATION);
                if (DESIGNATION == '') {
                    $("#err_DESIGNATION").show();				
                    validationArrayRewardval.push('DESIGNATION');
                    error_text = 1;
                }

                var CONTACT_NO = $(this).find("#CONTACT_NO").val();
//                alert("CONTACT_NO=========>"+CONTACT_NO);
                if (CONTACT_NO == '') {
                    $("#err_CONTACT_NO").show();				
                    validationArrayRewardval.push('CONTACT_NO');
                    error_text = 1;
                }

                var ADDRESS = $(this).find("#ADDRESS").val();
//                alert("ADDRESS=========>"+ADDRESS);
                if (ADDRESS == '') {
                    $("#err_ADDRESS").show();				
                    validationArrayRewardval.push('ADDRESS');
                    error_text = 1;
                }
                
                var NG_NAG_NG_AKL = $(this).find("#NG_NAG_NG_AKL").val();
//                alert("NG_NAG_NG_AKL=========>"+NG_NAG_NG_AKL);
                if (NG_NAG_NG_AKL == '') {
                    $("#err_NG_NAG_NG_AKL").show();				
                    validationArrayRewardval.push('NG_NAG_NG_AKL');
                    error_text = 1;
                }
                 var CODE_NO = $(this).find("#CODE_NO").val();
//                alert("CODE_NO=========>"+CODE_NO);
                if (CODE_NO == '') {
                    $("#err_CODE_NO").show();				
                    validationArrayRewardval.push('CODE_NO');
                    error_text = 1;
                }
                 
                var NEW_USER_NAME = $(this).find("#NEW_USER_NAME").val();
//                alert("NEW_USER_NAME=========>"+NEW_USER_NAME);
                if (NEW_USER_NAME == '') {
                    $("#err_NEW_USER_NAME").show();				
                    validationArrayRewardval.push('NEW_USER_NAME');
                    error_text = 1;
                }
                 
                var PASSWORD = $(this).find("#PASSWORD").val();
//                alert("PASSWORD=========>"+PASSWORD);
                if (PASSWORD == '') {
                    $("#err_PASSWORD").show();				
                    validationArrayRewardval.push('PASSWORD');
                    error_text = 1;
                }
                 var NEW_PASSWORD = $(this).find("#NEW_PASSWORD").val();
//                alert("NEW_PASSWORD=========>"+NEW_PASSWORD);
                if (NEW_PASSWORD == '') {
                    $("#err_NEW_PASSWORD").show();				
                    validationArrayRewardval.push('NEW_PASSWORD');
                    error_text = 1;
                }
                 var EMAIL_ID = $(this).find("#EMAIL_ID").val();
//                alert("EMAIL_ID=========>"+EMAIL_ID);
                if (EMAIL_ID == '') {
                    $("#err_EMAIL_ID").show();				
                    validationArrayRewardval.push('EMAIL_ID');
                    error_text = 1;
                }
                var DSC = $(this).find("#DSC").val();
//                alert("DSC=========>"+DSC);
                if (DSC == '') {
                    $("#err_DSC").show();				
                    validationArrayRewardval.push('DSC');
                    error_text = 1;
                }
                
                var VALID_FROM = $(this).find("#VALID_FROM").val();
//                alert("VALID_FROM=========>"+VALID_FROM);
                if (VALID_FROM == '') {
                    $("#err_VALID_FROM").show();				
                    validationArrayRewardval.push('VALID_FROM');
                    error_text = 1;
                }
                
            var VALID_TO = $(this).find("#VALID_TO").val();
//                alert("VALID_TO=========>"+VALID_TO);
                if (VALID_TO == '') {
                    $("#err_VALID_TO").show();				
                    validationArrayRewardval.push('VALID_TO');
                    error_text = 1;
                }
                 var KYC = $(this).find("#KYC").val();
//                alert("KYC=========>"+KYC);
                if (KYC == '') {
                    $("#err_KYC").show();				
                    validationArrayRewardval.push('KYC');
                    error_text = 1;
                }
                 var FORM11 = $(this).find("#FORM11").val();
//                alert("FORM11=========>"+FORM11);
                if (FORM11 == '') {
                    $("#err_FORM11").show();				
                    validationArrayRewardval.push('FORM11');
                    error_text = 1;
                }
                 var KYC_UPDATE = $(this).find("#KYC_UPDATE").val();
//                alert("KYC_UPDATE=========>"+KYC_UPDATE);
                if (KYC_UPDATE == '') {
                    $("#err_KYC_UPDATE").show();				
                    validationArrayRewardval.push('KYC_UPDATE');
                    error_text = 1;
                }
                 var DSC_RETURN = $(this).find("#DSC_RETURN").val();
//                alert("DSC_RETURN=========>"+DSC_RETURN);
                if (DSC_RETURN == '') {
                    $("#err_DSC_RETURN").show();				
                    validationArrayRewardval.push('DSC_RETURN');
                    error_text = 1;
                }
                 var FORM_5_A = $(this).find("#FORM_5_A").val();
//                alert("FORM_5_A=========>"+FORM_5_A);
                if (FORM_5_A == '') {
                    $("#err_FORM_5_A").show();				
                    validationArrayRewardval.push('FORM_5_A');
                    error_text = 1;
                }
                var FORM_9 = $(this).find("#FORM_9").val();
//                alert("FORM_9=========>"+FORM_9);
                if (FORM_9 == '') {
                    $("#err_FORM_9").show();				
                    validationArrayRewardval.push('FORM_9');
                    error_text = 1;
                }
                
                var CHALLAN_GENERATED = $(this).find("#CHALLAN_GENERATED").val();
               // alert("CHALLAN_GENERATED=========>"+CHALLAN_GENERATED);
                if (CHALLAN_GENERATED == '') {
                    $("#err_CHALLAN_GENERATED").show();				
                    validationArrayRewardval.push('CHALLAN_GENERATED');
                    error_text = 1;
                }
                 var POSTING_COMPLETE = $(this).find("#POSTING_COMPLETE").val();
//                alert("POSTING_COMPLETE=========>"+POSTING_COMPLETE);
                if (POSTING_COMPLETE == '') {
                    $("#err_POSTING_COMPLETE").show();				
                    validationArrayRewardval.push('POSTING_COMPLETE');
                    error_text = 1;
                }
                
                
                 if(error_text == 1){
                    $("#"+validationArrayRewardval[0]).focus();
                    return false;
                }else{
                    //alert("sssss");
                    $.ajax({
                       
                    type: "POST",
                    url: "Edit_Client_Servlet1ED",
                    data: {

                               CLIENTS_LIST:CLIENTS_LIST,
                               COMPANY:COMPANY,
                               CONT_RAGISTER_NO:CONT_RAGISTER_NO,
                               fILE_NO:fILE_NO,
                               EMPLOYER_NAME:EMPLOYER_NAME,
                               DESIGNATION:DESIGNATION,
                               CONTACT_NO:CONTACT_NO,
                               ADDRESS:ADDRESS,
                               NG_NAG_NG_AKL:NG_NAG_NG_AKL,
                               CODE_NO:CODE_NO,
                               NEW_USER_NAME:NEW_USER_NAME,
                               PASSWORD:PASSWORD,
                               NEW_PASSWORD:NEW_PASSWORD,
                               EMAIL_ID:EMAIL_ID,
                               DSC:DSC,
                               VALID_FROM:VALID_FROM,
                               VALID_TO:VALID_TO,
                               KYC:KYC,
                               FORM11:FORM11,
                               KYC_UPDATE:KYC_UPDATE,
                               DSC_RETURN:DSC_RETURN,
                               FORM_5_A:FORM_5_A,
                               FORM_9:FORM_9,
                               CHALLAN_GENERATED:CHALLAN_GENERATED,
                               POSTING_COMPLETE:POSTING_COMPLETE
                        },
                        success: function(data){
                        //$('#successMessage2').html('Unit Details Updated Succesfully').delay(5000).fadeOut();
                        $('#successMessage2').show();
//                        alert("Thank You");
                        }
                    });}
                    return false;
                });
            
        });
    
               $(".btn_edit").click(function(){
                var tr_id = this.id;
                var tr = document.getElementById(tr_id);
                var td = tr.getElementsByTagName("td");
                   $("#CLIENTS_LIST").val(td[0].innerHTML);
                   $("#COMPANY").val(td[1].innerHTML);
                   $("#CONT_RAGISTER_NO").val(td[2].innerHTML);
                   $("#fILE_NO").val(td[3].innerHTML);
                   $("#EMPLOYER_NAME").val(td[4].innerHTML);
                   $("#DESIGNATION").val(td[5].innerHTML);
                   $("#CONTACT_NO").val(td[6].innerHTML);
                   $("#ADDRESS").val(td[7].innerHTML);
                   $("#NG_NAG_NG_AKL").val(td[8].innerHTML);
                   $("#CODE_NO").val(td[9].innerHTML);
                   $("#NEW_USER_NAME").val(td[10].innerHTML);
                   $("#PASSWORD").val(td[11].innerHTML);
                   $("#NEW_PASSWORD").val(td[12].innerHTML);
                   $("#EMAIL_ID").val(td[13].innerHTML);
                   $("#DSC").val(td[14].innerHTML);
                   $("#VALID_FROM").val(td[15].innerHTML);
                   $("#VALID_TO").val(td[16].innerHTML);
                   $("#KYC").val(td[17].innerHTML);
                    $("#FORM11").val(td[18].innerHTML);
                   $("#KYC_UPDATE").val(td[19].innerHTML);
                   $("#DSC_RETURN").val(td[20].innerHTML);
                   $("#FORM_5_A").val(td[21].innerHTML);
                   $("#FORM_9").val(td[22].innerHTML);
                   $("#CHALLAN_GENERATED").val(td[23].innerHTML);
                   $("#POSTING_COMPLETE").val(td[24].innerHTML);
                  
            });
            
                $(".deleteUnit").click(function(){
                alert("goes")
                var result = confirm("Want to delete?");
                var CONTACT_NO = $(this).val();
                //alert("deleteid");
                if (result) {
                    //alert("deleteid");
                    $.ajax({
                    type: "POST",
                    url: "Delete_Client",
                    data: {
                           CONTACT_NO:CONTACT_NO
                          },
                        success: function(data){
                        //$('#successMessage2').html('Unit Details Updated Succesfully').delay(5000).fadeOut();
                        $('#successMassage2').show();
                        alert("Deleted Successfully");
                        location.reload();
                        }
                    });
                    return false;
                }
                
            }); 
           
        </script>
               </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
        <!--script src="js/jquery.js"></script-->
        <!--<script src="js/bootstrap.js"></script>
        <script src="https://kit.fontawesome.com/d98415454e.js" crossorigin="anonymous"></script>
        <script src="../js/datatables.js"></script>
        <script src="../js/javascript.js"></script>-->
<!--                    <script>
        $(document).ready( function (){
    $("#example").DataTable();    
    })
        </script>-->
                    </body>
            </html>