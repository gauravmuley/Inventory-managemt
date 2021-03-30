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
    <head>
        <style>
            .alpha-btns{
                width: 100%;
            }
           .alpha-btns a:link{
                width: 20px;
                height: 20px;
                background: #333;
                
            }
              .alpha-btns a:visited{
                width: 20px;
                height: 20px;
                background: #333;
                
            }
              .alpha-btns a:hover{
                width: 20px;
                height: 20px;
                background: #333;
                
            }
              .alpha-btns a:active{
                width: 20px;
                height: 20px;
                background: #333;
                
            }
        </style>
    </head>
   <div class="right_col" role="main">
        <div class="">
<div class="page-title">
<!--    <div class="alpha-btns">
        <button class="btn btn-primary" href="Client_List">A</button>
        
    </div>
 -->
            <div class="title_left">
              <h3 style="">Add Clients Details</h3>
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
                          
        <form id="demo-form3" action="" data-parsley-validate class="form-horizontal form-label-left">
            <div class="cl-detail">      
                <center> <h1 style="">Clients Details</h1> </center>
<!--                <center>  
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                -->
            </div><br>
            <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">DATE
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                           <body onload="addDate();">
                      <input type="text" id="date" name="date"  class="form-control col-md-7 col-xs-12" required="required" readonly="">
                      <div id="err-uname" class="err-msg">Please enter Your Mail Id</div>
                      </div>
                    </div>	
                   <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">NANE OF ESTABLISHMENT
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
            
                 
                
            
                   <div>
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
                                  
           
                
                
                   <center><button type="submit" class="btn btn-success">Submit</button>
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

<script>    
 $(document).ready(function () {
                  //alert('payroll');
 $('form#demo-form3').submit(function () {
     
             
              
              var COMPANY= $(this).find("[name='COMPANY']").val();
                   // alert("COMPANY--"+COMPANY);
                    
                    var CLIENTS_LIST= $(this).find("[name='CLIENTS_LIST']").val();
                    //alert("CLIENTS_LIST--"+CLIENTS_LIST);
                    
               var CONT_RAGISTER_NO= $(this).find("[name='CONT_RAGISTER_NO']").val();
                    //alert("CONT_RAGISTER_NO--"+CONT_RAGISTER_NO);
     
                    
                     
                    var fILE_NO = $(this).find("[name='fILE_NO']").val();
                    //alert("fILE_NO->"+fILE_NO);
        
                    var EMPLOYER_NAME = $(this).find("[name='EMPLOYER_NAME']").val();
                    //alert("EMPLOYER_NAME->"+EMPLOYER_NAME );
            
                    var DESIGNATION = $(this).find("[name='DESIGNATION']").val();
                           //alert("DESIGNATION->"+DESIGNATION);

                     var CONTACT_NO = $(this).find("[name='CONTACT_NO']").val();
                       //alert("CONTACT_NO->"+CONTACT_NO);
                       
                       var ADDRESS = $(this) .find("[name='ADDRESS']").val();
//                        alert("ADDRESS-->" +ADDRESS);
                       
                   var NG_NAG_NG_AKL = $(this).find("[name='NG_NAG_NG_AKL']").val();
                         //alert("NG_NAG_NG_AKL->"+NG_NAG_NG_AKL);
                   
                    var CODE_NO= $(this).find("[name='CODE_NO']").val(); 
                         //alert("CODE_NO->"+CODE_NO);
                         
                  var NEW_USER_NAME= $(this).find("[name='NEW_USER_NAME']").val();
                        //alert("NEW_USER_NAME->"+NEW_USER_NAME); 
               
                    var PASSWORD = $(this).find("[name='PASSWORD']").val();
                        //alert("PASSWORD->"+PASSWORD);
                    
                    
                   var NEW_PASSWORD= $(this).find("[name='NEW_PASSWORD']").val();
                       //alert("NEW_PASSWORD->"+NEW_PASSWORD);
                   
                   var EMAIL_ID = $(this).find("[name='EMAIL_ID']").val();
                       //alert("EMAIL_ID->"+EMAIL_ID);
                       
                   var DSC = $(this).find("[name='DSC']").val();
                    //alert("DSC->"+DSC);
                    
                   var VALID_FROM = $(this).find("[name='VALID_FROM']").val();
                             //alert("VALID_FROM->"+VALID_FROM);
                   
                    var VALID_TO = $(this).find("[name='VALID_TO']").val();
                                //alert("VALID_TO->"+VALID_TO);
                   
                   var KYC = $(this).find("[name='KYC']").val();
                          //alert("KYC->"+KYC);
                   
                   var FORM11= $(this).find("[name='FORM11']").val();
                           //alert("FORM11->"+FORM11);
                  
                  var KYC_UPDATE= $(this).find("[name='KYC_UPDATE']").val();
                            //alert("KYC_UPDATE->"+KYC_UPDATE);
                   
                   var DSC_RETURN= $(this).find("[name='DSC_RETURN']").val();
                         //alert("DSC_RETURN->"+DSC_RETURN);
                   
                   var FORM_5_A= $(this).find("[name='FORM_5_A']").val();
                       //alert("FORM_5_A->"+FORM_5_A);
                   
                   var FORM_9 = $(this).find("[name='FORM_9']").val();
             //          alert("FORM_9->"+FORM_9);
             
                   var CHALLAN_GENERATED = $(this).find("[name='CHALLAN_GENERATED']").val();
                        //alert("CHALLAN_GENERATED->"+CHALLAN_GENERATED);
             
                   var POSTING_COMPLETE = $(this).find("[name='POSTING_COMPLETE']").val();
                          //alert("POSTING_COMPLETE->"+POSTING_COMPLETE);
               
                 alert('hi====>');
                   $.ajax({
                   
                            type:"POST",
                           url:"ClientList_Servlet1",
                           data:{  
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
