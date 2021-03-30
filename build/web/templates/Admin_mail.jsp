  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <style>
    .err-msg{display:none; color:#ff0000;}
</style>
      <!-- page content -->
      <div class="right_col" role="main">
        <div class="">

          <div class="page-title">
            <div class="title_left">
              <h3>Add Admin Users</h3>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Add Admin Users</h2>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    
                    <div id="successMessage" class="col-md-6 col-md-offset-3 alert alert-success" style="display:none"></div>                       
                    <div class="clearfix"></div>
                  <br />
                  <form id="admin_add" method="post" action="" data-parsley-validate class="form-horizontal form-label-left">
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
                    
<!--                      <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">Admin_Date <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <body onload="addDate();">
                        <input type="text" id="admin_date" name="admin_date" required="required" class="form-control col-md-7 col-xs-12" readonly="">
                        <div id="err-uname" class="err-msg">Please enter Your Mail Id</div>
                      </div>
                    </div>-->
                      
                    <div class="ln_solid"></div>
                    <div class="form-group">
                      <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="submit" class="btn btn-success">Add Admin</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-bottom: 0;"><a href="index.jsp"> Close</a></button>
                      </div>
                    </div>

                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
          
          <script type="text/javascript">
              $(document).ready(function () {
                 //alert("start")
                    var validationArrayRewardval;
                    $('form#admin_add').submit(function () {
                        var error_text = 0;
                        validationArrayRewardval=[];
                        $(".err-msg").hide();
                        var username = $(this).find("[name='username']").val();
                        //alert("use=====>"+username)
                        if (username == '') {
                            $("#err-uname").show();				
                            validationArrayRewardval.push('username');
                            error_text = 1;
                        }
                        
                        var password = $(this).find("[name='password']").val();   
                         //alert("pass=======>"+password)
                        if (password == '') {
                            $("#err-pass").show();				
                            validationArrayRewardval.push('password');
                            error_text = 1;
                        }
                        
                        var admin_name = $(this).find("[name='admin_name']").val();
                         //alert("admin=====>"+admin_name)
                        if (admin_name == '') {
                            $("#err-fname").show();				
                            validationArrayRewardval.push('admin_name');
                            error_text = 1;
                        }
                        
                       
                        var roles = $(this).find("[name='roles']").val();
                        //alert("role=====>"+roles)
                        if (roles == '') {
                            $("#err-roles").show();				
                            validationArrayRewardval.push('roles');
                            error_text = 1;
                        }
        
                        var admin_date = $(this).find("[name='admin_date']").val();
                         //alert("mail is=====>"+mid)
                        if (admin_date == '') {
                            $("#err-admin_date").show();				
                            validationArrayRewardval.push('admin_date');
                            error_text = 1;
                        }
                        
                        if(error_text == 1){
                            $("#"+validationArrayRewardval[0]).focus();
                            return false;
                        }
                            //alert("ghghgh");
                            $.ajax({
                                type: "POST",
                                url: "AdminServlet1",
                                data: {
                                    username:username,
                                    password:password,
                                   admin_name:admin_name,
//                                   mid:mid,
                                   roles:roles,
                                   admin_date:admin_date
                                },
                                success: function(data){
                                    $('#successMessage').html('Admin Added Succesfully').delay(5000).fadeOut();
                                    $('#successMessage').show();
                                }
                            });
                            return false;
                        
                                                
                    });
                });
                
                
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