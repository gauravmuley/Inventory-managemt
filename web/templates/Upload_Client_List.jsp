<html>
   <div class="right_col" role="main">
        <div class="">
<div class="page-title">
            <div class="title_left">
              <h3 style="color:black;">Client List Upload </h3>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2 style="color:black;">Upload Client List</h2>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <br />
 <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_content">
                    <form id="demo-form2" action="Upload_Servlet" method="post" enctype="multipart/form-data">
    <label class="control-label" for="first-name">Choose File <span class="required">*</span></label>
    <input type="file" id="imgInp" name="excel1" required="required" class="" value="excel"> <br/>
                <input type="submit" class="btn btn-success"/>
</form>
                </div>
              </div>
 </div>
    <script type="text/javascript">
              $(document).ready(function () {
                    var validationArrayRewardval;
      /*              $('form#demo-form2').submit(function () {
                        var error_text = 0;
                        validationArrayRewardval=[];
                        $(".err-msg").hide();
                        var excel = $(this).find("[name='excel1']").val();
                        alert("Inserted Successfully");
                        var filename = $("#imgInp").val().replace(/C:\\fakepath\\/i, '');
                        //alert(filename);
                        if (excel == '') {
                            $("#err-excel").show();				
                            validationArrayRewardval.push('excel');
                            error_text = 1;
                        }
                          if(error_text == 1){
                            $("#"+validationArrayRewardval[0]).focus();
                            return false;
                        }else{
                             var form = $('#demo-form2')[0];
                             var data = new FormData(form);
                             alert("data==="+data);
                            $.ajax({
                                type: "POST",
                                url: "newattendance",
                                enctype: 'multipart/form-data',
                                processData: false,
                                contentType: false,
                                cache: false,
                                timeout: 600000,
                                 data: data,
                            /*  data: {
                                    excel: filename
                                },*/
                     /*           success: function(data){
                                    $('#successMessage').html('Admin Added Succesfully');
                                    $('#successMessage').show();
                                }
                            });
                            return false;
                        }
                                                
                    });  */
                });
          </script>
          

</html>