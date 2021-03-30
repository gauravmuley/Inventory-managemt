<%@page import="java.util.ArrayList"%>
<%@page import="SecurityBean.DataService"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="eror.jsp"%>
<%@page import="java.sql.*"%>
  <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SecurityBean.DataService"%>
<%! ResultSet rs1,rs,rs2,rs3,rs5;DataService ds1;ArrayList ar;Iterator ity;Object o1=null; Statement statement=null; String  Skilled_Employee,Semiskilled_Employee, Unskilled_Employee,Supervisor;int Skilled_Employee1=0; %>

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
<!--                        <th style="background-color: darkcyan">CLIENT NAME</th>-->
                        <th style="background-color: darkcyan">DATE</th>
                        <th style="background-color: darkcyan">NAME OF ESTABLISHMENT</th>
                        <th style="background-color: darkcyan">UAN NO</th>
                        <th style="background-color: darkcyan">EMP_NAME</th>
                        <th style="background-color: darkcyan">EMP_NO</th>
                        <th style="background-color: darkcyan">PF NO</th>
                        <th style="background-color: darkcyan">SITE NAME</th>
                        <th style="background-color: darkcyan">FATHERS/HUSBAND NAME</th>
                        <th style="background-color: darkcyan">RELATIONSHIP</th>
                        <th style="background-color: darkcyan">DOB</th>
                        <th style="background-color: darkcyan">PENSION CEILINGH</th>
                        <th style="background-color: darkcyan">DOJ</th>
                        <th style="background-color: darkcyan">BANK NAME/BRANCH</th>
                        <th style="background-color: darkcyan">BANK ACCOUNT NO.</th>
                        <th style="background-color: darkcyan">IFSC CODE</th>
                        <th style="background-color: darkcyan">AADHAR NUMBER</th>
                        <th style="background-color: darkcyan">AADHAR ADDRESS</th>
                        <th style="background-color: darkcyan">PAN NO.</th>
                        <th style="background-color: darkcyan">CONTACT NO.</th>
                        
              
                        <th style="background-color: darkcyan" class=" no-link last"><span class="nobr">Action</span>
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                    <%
                    try {
                    String CLIENTS_LIST=request.getParameter("company_name");
                    System.out.println("company_name"+CLIENTS_LIST);
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                    System.out.println("connection done");
                    Statement st=con.createStatement();
                    System.out.println("Statement");
                    ResultSet rs=st.executeQuery("select Date1,CLIENTS_LIST,UAN_NO,Full_Name,EMP_NO,Pf_No,sname,Father_Name,relationship,Date_Of_Birth,pencel,Date,Bank_Name,Account_No,IFSC_Code,Adhar_No,adharadd,Pan_No,Mobile_No from recruitment_table where CLIENTS_LIST='"+CLIENTS_LIST+"'");
                    //System.out.println("rs=......>>>>>"+rs);
                    //ResultSet rs=st.executeQuery("select * from recruitment_table");
                    System.out.println("pass");
                    int i=0;
                   while (rs.next()) {
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
                           
                            <td class=" last">
                                <%--   <button class="btn btn-danger btn-xs" href="#">Delete User</button>--%>
<!--                            <a><button value="</%=rs.getString("Mobile_No")%>" class="deleteUnit btn btn-danger btn-xs btn_delete" >Delete Users</button></a>-->
                           <button class="btn btn-primary btn-xs btn_edit" data-toggle="modal" data-target="#unit_guard_details" id="<%=i++%>" href="#">Edit Data</button>
                            </td>
                        </tr>
                    <%
                    }
                        
                    } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("excepyion ........>>>>>"+e);
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
                    <span>Employee Details Updated successfully</span>
                </div> 
                   
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">DATE
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                           <body onload="addDate();">
                      <input type="text" id="date" name="date"  class="form-control col-md-7 col-xs-12" required="required" readonly="">
                      <div id="err-uname" class="err-msg">Please enter Your Dates</div>
                      </div>
                    </div>
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">NAME OF ESTABLISHMENT
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          
                          <input type="text" id="CLIENTS_LIST" name="CLIENTS_LIST"  class="form-control col-md-7 col-xs-12" readonly="">
                      </div>
                    </div>
                                    
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">UAN NO
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          
                      <input type="text" id="u_no" name="u_no"  class="form-control col-md-7 col-xs-12" >
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">EMP_NAME
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="fulname" name="fulname"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">EMP_NO
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="EMP_NO" name="EMP_NO"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                 
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">PF NO
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="pfno" name="pfno"  class="form-control col-md-7 col-xs-12">
                      </div>
                   
                   </div>
                       
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12"  style="color:black;">SITE NAME
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="sname" name="sname"  class="form-control col-md-7 col-xs-12">
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
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">RELATIONSHIP
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="relationship" name="relationship" value="F" style="color:black;">FATHERS
                        <input  type="radio"  id="relationship" name="relationship" value="H" style="color:black;">HUSBAND
                    </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">DOB
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="date" id="dob" name="dob"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>   
                       
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">PENSION CEILINGH
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="pencel" name="pencel" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>   
                   
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">DOJ
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="date" id="date" name="date" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>    
                       
                     <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">BANK NAME/BRANCH
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="bname" name="bname"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>    
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">BANK ACCOUNT NO.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="accno" name="accno"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>  
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">IFSC CODE
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="ifscode" name="ifscode"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>  
                   
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">AADHAR NUMBER
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="adhar" name="adhar"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">AADHAR ADDRESS
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text"  id="adharadd" name="adharadd"  class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">PAN NO.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="text" id="panno" name="panno"class="form-control col-md-7 col-xs-12">
                      </div>
                    </div>
                      
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">CONTACT NO.
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="mobno" name="mobno" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div> 
                
                    
            <div class="modal-footer">
              <button type="button" class="btn btn-default sub_unit_details_add_close" data-dismiss="modal" style="margin-bottom: 0;">Close</button>
              <button type="submit" class="btn btn-success ad_dtl_sbmt">Update Employee Details</button>

            </div>
          
          </div><!-- /.modal-content -->
          
            </form>
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    
           <script>
                $("document").ready(function(){
           
            var validationArrayRewardval;
            $('form#unit_details_add').submit(function () {
                var error_text = 0;
                validationArrayRewardval=[];
                $(".err-msg").hide();
                var Date1 = $(this).find("[name='Date1']").val();
//                alert("Date1=====>"+Date1)
                if (Date1 == '') {
                    $("#err_Date1").show();				
                     validationArrayRewardval.push('Date1');
                    error_text = 1;
               }

                var CLIENTS_LIST = $(this).find("[name='CLIENTS_LIST']").val();
//                alert("mobno=====>"+mobno)
                if (CLIENTS_LIST == '') {
                    $("#err_CLIENTS_LIST").show();				
                     validationArrayRewardval.push('CLIENTS_LIST');
                    error_text = 1;
               }
                
                var u_no = $(this).find("#u_no").val();
               //alert("u_no=========>"+u_no);
                if (u_no == '') {
                    $("#err_u_no").show();				
                    validationArrayRewardval.push('u_no');
                    error_text = 1;
                }
                
                var fulname = $(this).find("#fulname").val();
                 //alert("fulname=========>"+fulname);
                if (fulname == '') {
                    $("#err_fulname").show();				
                    validationArrayRewardval.push('fulname');
                    error_text = 1;
                }
                
                 var EMP_NO= $(this).find("[name='EMP_NO']").val();
                 //alert("fulname=========>"+fulname);
                if (EMP_NO == '') {
                    $("#err_EMP_NO").show();				
                    validationArrayRewardval.push('EMP_NO');
                    error_text = 1;
                }

                var pfno = $(this).find("#pfno").val();
                 //alert("pfno=========>"+pfno);
                if (pfno == '') {
                    $("#err_pfno").show();				
                    validationArrayRewardval.push('pfno');
                    error_text = 1;
                }

                var sname = $(this).find("#sname").val();
                //alert("sname=========>"+sname);
                if (sname == '') {
                    $("#err_sname").show();				
                    validationArrayRewardval.push('sname');
                    error_text = 1;
                }

                var fathname = $(this).find("#fathname").val();
                //alert("fathname=========>"+fathname);
                if (fathname == '') {
                    $("#err_fathname").show();				
                    validationArrayRewardval.push('fathname');
                    error_text = 1;
                }
                
                
                var relationship = $(this).find("[name='relationship']:checked").val();
                //var relationship = $(this).find("#relationship").val();
                alert("relationship=========>"+relationship);
                if (relationship == '') {
                    $("#err_relationship").show();				
                    validationArrayRewardval.push('relationship');
                    error_text = 1;
                }

                var dob = $(this).find("#dob").val();
                //alert("dob=========>"+dob);
                if (dob == '') {
                    $("#err_dob").show();				
                    validationArrayRewardval.push('dob');
                    error_text = 1;
                }
                
                var pencel = $(this).find("#pencel").val();
                //alert("pencel=========>"+pencel);
                if (pencel == '') {
                    $("#err_pencel").show();				
                    validationArrayRewardval.push('pencel');
                    error_text = 1;
                }
                
                var date = $(this).find("#date").val();
                //alert("dob=========>"+dob);
                if (date == '') {
                    $("#err_date").show();				
                    validationArrayRewardval.push('date');
                    error_text = 1;
                }
               
               var bname = $(this).find("[name='bname']").val();
                //alert("bname=====>"+bname)
                if (bname == '') {
                    $("#err_bname").show();				
                     validationArrayRewardval.push('bname');
                    error_text = 1;
               }
               
               var accno = $(this).find("[name='accno']").val();
                //alert("accno=====>"+accno)
                if (accno == '') {
                    $("#err_accno").show();				
                     validationArrayRewardval.push('accno');
                    error_text = 1;
               }
               var ifscode = $(this).find("[name='ifscode']").val();
                //alert("ifscode=====>"+ifscode)
                if (ifscode == '') {
                    $("#err_ifscode").show();				
                     validationArrayRewardval.push('ifscode');
                    error_text = 1;
               }
               var adhar = $(this).find("[name='adhar']").val();
                ///alert("adhar=====>"+adhar)
                if (adhar == '') {
                    $("#err_adhar").show();				
                     validationArrayRewardval.push('adhar');
                    error_text = 1;
               }
               
               var adharadd = $(this).find("[name='adharadd']").val();
               ///alert("adhar=====>"+adhar)
                if (adharadd == '') {
                    $("#err_adharadd").show();				
                     validationArrayRewardval.push('adharadd');
                    error_text = 1;
               }
               
               var panno = $(this).find("[name='panno']").val();
//                alert("panno=====>"+panno)
                if (panno == '') {
                    $("#err_panno").show();				
                     validationArrayRewardval.push('panno');
                    error_text = 1;
               }
               
               var mobno = $(this).find("[name='mobno']").val();
//                alert("mobno=====>"+mobno)
                if (mobno == '') {
                    $("#err_mobno").show();				
                     validationArrayRewardval.push('mobno');
                    error_text = 1;
               }
               
               if(error_text == 1){
                    $("#"+validationArrayRewardval[0]).focus();
                    return false;
                }else{
//                    alert("sssss");
                    $.ajax({
                       
                    type: "POST",
                    url: "edit_employee_DetailsED",
                    data: {
//                        CLIENTS_LIST:CLIENTS_LIST,
                        Date1:Date1,
                        CLIENTS_LIST:CLIENTS_LIST,
                        u_no:u_no,
                        fulname:fulname,
                        pfno:pfno,
                        sname:sname,
                        fathname:fathname,
                        EMP_NO:EMP_NO,
                        relationship:relationship,
                        dob:dob,
                        pencel:pencel,
                        date:date,
                        bname:bname,
                        accno:accno,
                        ifscode:ifscode,
                        adhar:adhar,
                        adharadd:adharadd,
                        panno:panno,
                        mobno:mobno
                        
                        },
                        success: function(data){
                        //$('#successMessage2').html('Unit Details Updated Succesfully').delay(5000).fadeOut();
                        $('#successMessage2').show();
                        alert("data update successfully");
                        }
                    });}
                    return false;
                });
            
        });
            
                $(".btn_edit").click(function(){
                var tr_id = this.id;
                var tr = document.getElementById(tr_id);
                var td = tr.getElementsByTagName("td");
                
                   $("#Date1").val(td[0].innerHTML);
                   $("#CLIENTS_LIST").val(td[1].innerHTML);
                   $("#u_no").val(td[2].innerHTML);
                   $("#fulname").val(td[3].innerHTML);
                   $("#pfno").val(td[4].innerHTML);
                   $("#sname").val(td[5].innerHTML);
                   $("#fathname").val(td[6].innerHTML);
                   $("#EMP_NO").val(td[7].innerHTML);
                   $("#relationship").val(td[8].innerHTML);
                   $("#dob").val(td[9].innerHTML);
                   $("#pencel").val(td[10].innerHTML);
                   $("#date").val(td[11].innerHTML);
                   $("#bname").val(td[12].innerHTML);
                   $("#accno").val(td[13].innerHTML);
                   $("#ifscode").val(td[14].innerHTML);
                   $("#adhar").val(td[15].innerHTML);
                   $("#adharadd").val(td[16].innerHTML);
                   $("#panno").val(td[17].innerHTML);
                   $("#mobno").val(td[18].innerHTML);
                   
                   
                   
            });
            
             $(".deleteUnit").click(function(){
                alert("goes")
                var result = confirm("Want to delete?");
                var Mobile_No = $(this).val();
                //alert("deleteid");
               if (result) {
                    //alert("deleteid");
                    $.ajax({
                    type: "POST",
                   url: "Delete_Emp_Record",
                    data: {
                           Mobile_No:Mobile_No
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