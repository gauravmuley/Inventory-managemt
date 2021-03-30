  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <style>
    .err-msg{display:none; color:#ff0000;}
</style>
<!-- page content --><center>
      <div class="right_col" role="main">
        <div class="">

          <div class="page-title">
            <div class="title_left"> 
              <h3>Forget Password??</h3>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Forget Password??</h2>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    
                    <div id="successMessage" class="col-md-6 col-md-offset-3 alert alert-success" style="display:none"></div>                       
                    <div class="clearfix"></div>
                  <br/>
                  <form id="customer_add" method="post" action="ForgetPassword" data-parsley-validate class="form-horizontal form-label-left">
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Username<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="uname" name="uname" required="required" class="form-control col-md-7 col-xs-12">
                        <div id="err-uname" class="err-msg">Please enter Your Password</div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Password<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="password" id="pass" name="pass" required="required" class="form-control col-md-7 col-xs-12">
                        <div id="err-pass" class="err-msg">Please enter Password</div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="a">Conform Password<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="password" id="pass1" name="pass1" required="required" class="form-control col-md-7 col-xs-12">
                        <div id="err-fname" class="err-msg">Please Conform Password</div>
                      </div>
                    </div>
                      
                    
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3"><br>
                            <input type="submit" value="SUBMIT">                                                                
                            <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-bottom: 0;"><a href="login.jsp"> CLOSE</a></button>                            
                        </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div></center>
          
<!--          <script type="text/javascript">
              $(document).ready(function () {
                alert("start")
                    var validationArrayRewardval;
                    $('form#customer_add').submit(function () {
                        var error_text = 0;
                        validationArrayRewardval=[];
                        $(".err-msg").hide();
                        var uname = $(this).find("[name='uname']").val();
                        alert("Userr=====>"+uname)
                        if (uname == '') {
                            $("#err-uname").show();				
                            validationArrayRewardval.push('uname');
                            error_text = 1;
                        }
                        
                        var pass = $(this).find("[name='pass']").val();   
                         alert("pass=======>"+pass)
                        if (pass == '') {
                            $("#err-pass").show();				
                            validationArrayRewardval.push('pass');
                            error_text = 1;
                        }
                        
                        var pass1 = $(this).find("[name='pass1']").val();
                         alert("cpass=====>"+pass1)
                        if (pass1 == '') {
                            $("#err-pass1").show();				
                            validationArrayRewardval.push('pass1');
                            error_text = 1;
                        }
                        
                        if(error_text == 1){
                            $("#"+validationArrayRewardval[0]).focus();
                            return false;
                        }
                            alert("ghghgh");
                            $.ajax({
                                type: "POST",
                                url: "ForgetPassword",
                                data: {
                                   uname:uname,
                                   pass:pass,
                                   pass1:pass1
                                },
                                success: function(data){
                                    $('#successMessage').html('Password Change Succesfully').delay(5000).fadeOut();
                                    $('#successMessage').show();
                                    
                                }
                            });
                            return false;
                                                                       
                    });
                });
          </script>-->