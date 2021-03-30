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
              <h3>Enter Email??</h3>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Enter Email??</h2>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    
                    <div id="successMessage" class="col-md-6 col-md-offset-3 alert alert-success" style="display:none"></div>                       
                    <div class="clearfix"></div>
                  <br/>
                  <form id="customer_add" method="post" action="forget_mail" data-parsley-validate class="form-horizontal form-label-left">
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Email Id<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="email" id="id" name="id" required="required" class="form-control col-md-7 col-xs-12">
                        <div id="err-uname" class="err-msg">Please enter Your email</div>
                      </div>
                    </div>
                      
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Username<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="user" name="user" required="required" class="form-control col-md-7 col-xs-12">
                        <div id="err-uname" class="err-msg">Please enter Your Username</div>
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
        </div>
</center>
          