<%@page import="SecurityBean.DataService"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="eror.jsp"%>

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

<!-- page content -->
      <div class="right_col" role="main">
        <div class="">
          <div class="page-title">
            <div class="title_left">
              <h3>
                    Manage Admin Users
                </h3>
            </div>

          </div>
          <div class="clearfix"></div>

          <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_content">
                  

                  <table id="" class="table table-striped responsive-utilities jambo_table">
                    <thead>
                      <tr class="headings">
                        <th>Username</th>
                        <th>Password</th>
                        <th>Name</th>
                        <th>Roles</th>
                        <th>Admin_date</th>
              
                        <th class=" no-link last"><span class="nobr">Action</span>
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                    <%
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                    System.out.println("connection done");
                    Statement st=con.createStatement();
                    System.out.println("Statement");
                    ResultSet rs=st.executeQuery("select * from admin_user");
                    System.out.println("pass");
                    int i=0;
                   while (rs.next()) {
                    %>
                        <tr id="<%=i%>">
                            <td><%=rs.getString("username")%></td>
                            <td><%=rs.getString("password")%></td>
                            <td><%=rs.getString("admin_name")%></td>
                            <td><%=rs.getString("roles")%></td>
                            <td><%=rs.getString("admin_date")%></td>
                           
                            <td class=" last">
                                <%--   <button class="btn btn-danger btn-xs" href="#">Delete User</button>--%>
                            <a><button value="<%=rs.getString("admin_date")%>" class="deleteUnit btn btn-danger btn-xs btn_delete" >Delete Users</button></a>
                           <button class="btn btn-primary btn-xs btn_edit" data-toggle="modal" data-target="#unit_guard_details" id="<%=i++%>" href="#">Edit Data</button>
                            </td>
                        </tr>
                    <%
                    }
                        
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    System.out.println("end");
                    %>
                     
                    </tbody>

                  </table>
                    
        <div class="modal fade" id="unit_guard_details" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
       <button type="button" class="close sub_unit_details_add_close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Edit Admin Details</h4>
            </div>

            <form id="unit_details_add" method="post" action="" class="form-horizontal form-label-left">
            <div class="modal-body">
                <div id="successMessage2" class="col-md-12 alert alert-success successMessage2" style="display:none">
                    <span>Admin Detail Updated successfully</span>
                </div> 
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Username <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="username" name="username" required="required" class="form-control col-md-7 col-xs-12">
                        <div id="err-uname" class="err-msg">Please enter username</div>
                      </div>
                    </div>
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Password <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="password" id="password" name="password" required="required" class="form-control col-md-7 col-xs-12">
                        <div id="err-pass" class="err-msg">Please enter password</div>
                      </div>
                    </div>
                
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="a">Admin Full Name <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="admin_name" name="admin_name" required="required" class="form-control col-md-7 col-xs-12">
                        <div id="err-fname" class="err-msg">Please enter Full Name</div>
                      </div>
                    </div>
                      
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Admin Roles</label>
                       <div class="col-md-6 col-sm-6 col-xs-12">
                          <select id="roles" required="required" name="roles" class="form-control">
                            <option value="">Select Roles</option>
                            <option value="1">Super Admin</option>
                            <option value="2">Main Admin</option>
                            <!--<option value="3">Sub Admin</option>-->
                          </select>
                        <div id="err-roles" class="err-msg">Please select roles</div>
                       </div>
                    </div>
                
                <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">Admin_Date
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                           <body onload="addDate();">
                      <input type="text" id="date" name="date"  class="form-control col-md-7 col-xs-12" required="required" readonly="">
                      <div id="err-uname" class="err-msg">Please enter Your Mail Id</div>
                      </div>
                    </div>
    <script>
        $("document").ready(function(){
           var validationArrayRewardval;
            $('form#unit_details_add').submit(function () {
                var error_text = 0;
                validationArrayRewardval=[];
                $(".err-msg").hide();
                
                var username = $(this).find("#username").val();
                //alert("username=========>"+username);
                if (username == '') {
                    $("#err_username").show();				
                    validationArrayRewardval.push('username');
                    error_text = 1;
                }
                
                var password = $(this).find("#password").val();
                //alert("password=========>"+password);
                if (password == '') {
                    $("#err_password").show();				
                    validationArrayRewardval.push('password');
                    error_text = 1;
                }
                
                var admin_name = $(this).find("#admin_name").val();
                //alert("admin_name=========>"+admin_name);
                if (date == '') {
                    $("#err_admin_name").show();				
                    validationArrayRewardval.push('admin_name');
                    error_text = 1;
                }
               
               var roles = $(this).find("[name='roles']").val();
                //alert("roles=====>"+roles)
                if (roles == '') {
                    $("#err_roles").show();				
                     validationArrayRewardval.push('roles');
                    error_text = 1;
               }
               
               var date = $(this).find("[name='date']").val();
                //alert("date=====>"+date)
                if (date == '') {
                    $("#err_date").show();				
                     validationArrayRewardval.push('date');
                    error_text = 1;
               }
                if(error_text == 1){
                    $("#"+validationArrayRewardval[0]).focus();
                    return false;
                }else{
//                    alert("sssss");
                    $.ajax({
                       
                    type: "POST",
                    url: "edit_Admin",
                    data: {
//                        CLIENTS_LIST:CLIENTS_LIST,
                        username:username,
                        password:password,
                        admin_name:admin_name,
                        roles:roles,
                        date:date
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
                
                   $("#username").val(td[0].innerHTML);
                   $("#password").val(td[1].innerHTML);
                   $("#admin_name").val(td[2].innerHTML);
                   $("#roles").val(td[3].innerHTML);
                   $("#date").val(td[4].innerHTML);
                   
            });
            
                $(".deleteUnit").click(function(){
//                alert("goes")
                var result = confirm("Want to delete?");
                var admin_date = $(this).val();
                //alert(deleteid);
                if (result) {
                    $.ajax({
                    type: "POST",
                    url: "DeleteAdmin",
                    data: {
                           admin_date:admin_date
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
      </div>              
