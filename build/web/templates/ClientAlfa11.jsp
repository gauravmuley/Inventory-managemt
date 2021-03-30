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
<!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   -->
        <style>
   
       
              .alpha-btns a:visited{
/*                width: 20px;
                height: 20px;
                background: #333;*/
                
            }
              .alpha-btns a:hover{
/*                width: 20px;
                height: 20px;
                background: #333;*/
                
            }
              .alpha-btns a:active{
/*                width: 20px;
                height: 20px;
                background: #333;*/
                
            }
        
            
         
/*            .alfa a{
                position: relative;
                display: block;
                padding: 13px 15px 7px;
                margin: 8px;
                background: #008b8bd1;
                color: white;
                border-radius: 20%;
                
            }*/

             .x_panel{
                height: 65px;
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
<!--            <div class="title_left">
              <h3 style="color:black;">Add Clients Details</h3>
            </div>-->
          </div>
          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
<!--              <div class="x_panel">-->
      <div class="alpha-btns">
        <ul class="nav navbar alfa" >
            <li  class="nav-item"><a class="nav-link" href="Clients.jsp?alfa=A">A</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">B</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">C</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">D</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">E</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">F</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">G</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">H</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">I</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">J</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">K</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">L</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">M</a></li>
         </ul>
          <hr>
         <ul class="nav navbar alfa">
             <li class="nav-item"><a class="nav-link" href="Client_List.jsp">N</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">O</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">P</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">Q</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">R</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">S</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">T</a></li>
            <li class="nav-item"><a class="nav-link" href="Clients.jsp">U</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">V</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">W</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">X</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">Y</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">Z</a></li>             
         </ul>

    </div>
<!--                <div class="x_title">
                 <div class="clearfix"></div>
                   <label style="color:red;margin-left:800px; "></label>
                </div>-->
<!--                <div class="x_content">-->
                     
                  <br />
                          
<!--        <form id="demo-form3" action="" data-parsley-validate class="form-horizontal form-label-left">
             <div>      
                <center> <h3 style="color:black;">Clients Details</h3> </center>
                <center>  
<h3 style="color:black;">_____________________________________________________________________</h3></center>
                
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
                                  
           
                
                
                   <center><button type="submit" class="btn btn-primary">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-bottom: 0;"><a href="index.jsp">Close</a></button></center>
                            </form>-->

<!--<div class="alpha-btns">
        <ul class="nav navbar" >
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">A</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">B</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">C</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">D</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">E</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">F</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">G</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">H</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">I</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">J</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">K</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">L</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">M</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">N</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">O</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">P</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">Q</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">R</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">S</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">T</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">U</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">V</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">W</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">X</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">Y</a></li>
            <li class="nav-item"><a class="nav-link" href="Client_List.jsp">Z</a></li>
            
        </ul>

    </div>-->
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
                  <!--</form>-->
                </div>
              </div>
          
        <div class="clearfix"></div> 
         <script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <meta charset="utf-8" />
    
    <link rel="stylesheet"   href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<!--    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>-->
 
</html>
