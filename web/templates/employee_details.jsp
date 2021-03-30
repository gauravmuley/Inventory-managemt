

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SecurityBean.DataService"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"  errorPage="eror.jsp"%>
<%! ResultSet rs1,rs,rs2,rs3,rs5;DataService ds1;ArrayList ar;Iterator ity;Object o1=null; Statement statement=null; String  Skilled_Employee,Semiskilled_Employee, Unskilled_Employee,Supervisor;int Skilled_Employee1=0; %>
<!DOCTYPE html>
<!--%
    HttpSession session_login = request.getSession();
 String client= session_login.getAttribute("cnameP").toString();

%-->

<html>
    <head>
        <style>

        </style>
    </head>
    <body>
   <div class="right_col" role="main">
        <div class="">
        <div class="page-title">
           <div class="title_left">
                  <!--<h3 style="color:black;">Employee Details</h3>-->
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
            <div class="bg-design">
                <svg id="adc953c4-1f1c-4de2-8e29-bb7913a5554f" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" width="733.86247" height="702.19479" viewBox="0 0 733.86247 702.19479"><title>cloud_files</title>
                <path d="M257.07474,533.1599a1.11537,1.11537,0,0,1-.23571-.46222,351.19117,351.19117,0,0,1,478.94006-405.746,1.11976,1.11976,0,1,1-.87626,2.061C612.32539,76.89059,473.23316,98.13255,371.90572,184.44937,271.19684,270.23927,227.9405,403.478,259.01686,532.17137a1.12007,1.12007,0,0,1-1.94212.98853Z" transform="translate(-233.06876 -98.90261)" fill="#e6e6e6"/>
                <path d="M461.79585,773.48566a1.11976,1.11976,0,0,1,1.28506-1.75985C585.19759,822.86767,723.62042,801.34331,824.331,715.552,926.61163,628.42316,970.04606,494.49037,937.6846,366.02043a1.12,1.12,0,0,1,2.17242-.54614,346.59614,346.59614,0,0,1-5.75077,189.35434A353.6721,353.6721,0,0,1,825.78337,717.257a351.07362,351.07362,0,0,1-363.569,56.53446A1.113,1.113,0,0,1,461.79585,773.48566Z" transform="translate(-233.06876 -98.90261)" fill="#e6e6e6"/>
                <path d="M435.91449,793.36365a1.11922,1.11922,0,0,1,.12628-1.57869L965.085,341.11317a1.11987,1.11987,0,1,1,1.45241,1.705L437.49318,793.48994A1.11922,1.11922,0,0,1,435.91449,793.36365Z" transform="translate(-233.06876 -98.90261)" fill="#e6e6e6"/>
                <path d="M233.33628,555.55682a1.11959,1.11959,0,0,1,.12629-1.5787L762.50681,103.30633a1.11988,1.11988,0,0,1,1.45241,1.705L234.915,555.6831A1.11959,1.11959,0,0,1,233.33628,555.55682Z" transform="translate(-233.06876 -98.90261)" fill="#e6e6e6"/>
                <path d="M435.91449,793.36365a1.11922,1.11922,0,0,1,.12628-1.57869L965.085,341.11317a1.11987,1.11987,0,1,1,1.45241,1.705L437.49318,793.48994A1.11922,1.11922,0,0,1,435.91449,793.36365Z" transform="translate(-233.06876 -98.90261)" fill="#e6e6e6"/>
                <!--<path d="M851.60079,284.65378H646.84415v-1.07216a3.14805,3.14805,0,0,0-3.14805-3.14805H557.14758a3.14805,3.14805,0,0,0-3.148,3.14805v1.07216H348.39885A13.85024,13.85024,0,0,0,334.54861,298.504V578.87887a13.85024,13.85024,0,0,0,13.85024,13.85024H851.60073a13.8503,13.8503,0,0,0,13.8503-13.85029V298.504A13.85024,13.85024,0,0,0,851.60079,284.65378Z" transform="translate(-233.06876 -98.90261)" fill="#3f3d56"/>-->
                <!--<path d="M359.41357,314.13086a1.29773,1.29773,0,0,0-1.29589,1.29639V581.36914a1.29732,1.29732,0,0,0,1.29589,1.2959H840.58594a1.297,1.297,0,0,0,1.2959-1.2959V315.42725a1.29742,1.29742,0,0,0-1.2959-1.29639Z" transform="translate(-233.06876 -98.90261)" fill="#6c63ff"/>-->
                <!--<circle cx="366.50903" cy="197.56776" r="5.06425" fill="#6c63ff"/>-->
                <!--<path d="M874.67264,573.83276H826.48442v-4.97648c0-.27332-.30819-.49487-.6884-.49487H809.27435c-.38021,0-.68841.22155-.68841.49487v4.97648h-10.326v-4.97648c0-.27332-.3082-.49487-.68841-.49487H781.04982c-.38021,0-.6884.22155-.6884.49487v4.97648H770.03537v-4.97648c0-.27332-.30819-.49487-.6884-.49487H752.8253c-.38021,0-.68841.22155-.68841.49487v4.97648h-10.326v-4.97648c0-.27332-.3082-.49487-.68841-.49487H724.60077c-.38021,0-.6884.22155-.6884.49487v4.97648H713.58632v-4.97648c0-.27332-.30819-.49487-.6884-.49487H696.37625c-.38021,0-.68841.22155-.68841.49487v4.97648h-10.326v-4.97648c0-.27332-.3082-.49487-.68841-.49487H668.15172c-.38021,0-.6884.22155-.6884.49487v4.97648H657.13727v-4.97648c0-.27332-.30819-.49487-.6884-.49487H527.0291c-.38021,0-.68841.22155-.68841.49487v4.97648h-10.326v-4.97648c0-.27332-.3082-.49487-.68841-.49487H498.80457c-.38021,0-.6884.22155-.6884.49487v4.97648H487.79012v-4.97648c0-.27332-.30819-.49487-.6884-.49487H470.58005c-.38021,0-.68841.22155-.68841.49487v4.97648h-10.326v-4.97648c0-.27332-.3082-.49487-.68841-.49487H442.35552c-.38021,0-.6884.22155-.6884.49487v4.97648H431.34107v-4.97648c0-.27332-.30819-.49487-.6884-.49487H414.131c-.38021,0-.68841.22155-.68841.49487v4.97648h-10.326v-4.97648c0-.27332-.3082-.49487-.68841-.49487H385.90647c-.38021,0-.6884.22155-.6884.49487v4.97648H374.892v-4.97648c0-.27332-.30819-.49487-.6884-.49487H357.68195c-.38021,0-.68841.22155-.68841.49487v4.97648H325.327c-9.12466,0-16.52167,5.31743-16.52167,11.8768V591.08c0,6.55934,7.397,11.87677,16.52167,11.87677H874.67264c9.12466,0,16.52167-5.31743,16.52167-11.87677v-5.37041C891.19431,579.15019,883.7973,573.83276,874.67264,573.83276Z" transform="translate(-233.06876 -98.90261)" fill="#3f3d56"/>-->
                <path d="M543.97808,426.01694H401.75433a1.11987,1.11987,0,1,1,0-2.23974H543.97808a1.11987,1.11987,0,1,1,0,2.23974Z" transform="translate(-233.06876 -98.90261)" fill="#f2f2f2"/>
                <path d="M543.97808,450.65413H401.75433a1.11987,1.11987,0,1,1,0-2.23974H543.97808a1.11987,1.11987,0,1,1,0,2.23974Z" transform="translate(-233.06876 -98.90261)" fill="#f2f2f2"/>
                <path d="M543.97808,475.29132H401.75433a1.11988,1.11988,0,1,1,0-2.23975H543.97808a1.11988,1.11988,0,1,1,0,2.23975Z" transform="translate(-233.06876 -98.90261)" fill="#f2f2f2"/>
                <!--<rect x="373.06222" y="262.72169" width="182.53915" height="175.81992" rx="3.35962" fill="#fff"/><path d="M642.683,454.67371a45.00606,45.00606,0,0,1,88.30268-9.48886c.54524-.01956,1.09-.04147,1.64-.04147a17.66745,17.66745,0,0,1,5.51476.93823c22.387,7.35112,16.49195,40.7751-7.07106,40.7751H673.1604a30.44228,30.44228,0,0,1-30.5093-31.51923Q642.66463,455.0061,642.683,454.67371Z" transform="translate(-233.06876 -98.90261)" fill="#6c63ff"/>-->
                <polygon points="462.397 355.07 462.397 336.649 452.478 336.649 452.478 355.07 444.559 355.07 450.998 366.224 457.438 377.377 463.877 366.224 470.316 355.07 462.397 355.07" fill="#fff"/></svg>

            </div> 
            <div>      
                <center> <h1 style="color:black;">Add Employee Details</h1> </center>
                <center>  
                    <hr class="line">                
            </div><br>
            
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">DATE
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                           <body onload="addDate();">
                      <input type="text" id="Date1" name="Date1"  class="form-control col-md-7 col-xs-12" required="required" readonly="">
                      <div id="err-uname" class="err-msg">Please enter Your Mail Id</div>
                      </div>
                    </div>
          <div class="group">
               <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="color:black;">NAME OF ESTABLISHMENT</label>
                  <div class="" placeholder="Select Company" required="" >
                         <%try{
                            String CLIENTS_LIST=request.getParameter("company_name");
                  System.out.println("asdfg"+CLIENTS_LIST);
//                              ds1= new DataService();
//                              rs=ds1.create_client_data();
//                              ar=new ArrayList();
//                              while(rs.next())
//                              ar.add(rs.getObject(1));
//                              rs.close();
                             %>
                            
            <select class="company_name" name="company_name" id="company_name" class="form-control"  style="height:35px; ">
             <optgroup label="company_name">
            

                           
  <option value="<%=CLIENTS_LIST%>"><%=CLIENTS_LIST%></option>
                            
                </optgroup>
            </select>
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
                    <!--div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name" style="color:black;">RELATIONSHIP
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="relationship" name="relationship" class="form-control col-md-7 col-xs-12">
                      </div>
                    </div-->
                    
                    <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">RELATIONSHIP
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <label class="r-label"> <input  type="radio"  id="relationship" name="relationship"  value="F" style="color:black;">FATHER</label>
                          <label class=""><input  type="radio"  id="relationship" name="relationship"  value="H" style="color:black;">HUSBAND</label>
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
                <!--div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" style="color:black;">Gender
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input  type="radio"  id="Gen" name="Gen" value="M" style="color:black;">Male
                        <input  type="radio"  id="Gen" name="Gen" value="F" style="color:black;">Female
                      </div-->
                    
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
                
<!--% } catch(Exception e){
System.out.println(""+e);
}%-->               <center><button type="submit" class="btn btn-success">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-bottom: 0;"><a href="index.jsp">Close</a></button></center>
        <% } catch(Exception u1){ System.out.println("=====>"+u1);  } 
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

       <!--script type="text/javascript">
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
  
    </script-->
    
    
    <!--script>
     $(document).ready(function() 
{ 
         //alert("Unit_name===>123456");
        $('#sub_unit').change(function(){
       var sub_unit = document.getElementById("sub_unit").value;
         var company_name = document.getElementById("company_name").value;
         // var Employee_Type = document.getElementById("Employee_Type").value;
       // alert("company_name===>123456"+company_name);
        $('#Data').find('option').remove().end().append('<option value="whatever">Data</option>').val(' ');

   //    var  Unit_name=$(this).find("[name='Unit_name']").val();
      
    $.ajax({
       type: "POST",
        url:"Combo_department1",
        data:{
               sub_unit:sub_unit,
               company_name:company_name
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

</script-->
   
<script>    
 $(document).ready(function () {
                  //alert('payroll');
 $('form#demo-form3').submit(function () {
     var Date1  = $(this).find("[name='Date1']").val();
                alert("Date1===========>"+Date1);
                
                var CLIENTS_LIST  = $(this).find("[name='company_name']").val();
                alert("company_name===========>"+CLIENTS_LIST);
                
                var u_no  = $(this).find("[name='u_no']").val();
                //alert("u_no===========>"+u_no);
                
                var fulname= $(this).find("[name='fulname']").val();
                //alert("fulname====>"+fulname);
                    
                var EMP_NO= $(this).find("[name='EMP_NO']").val();
                //alert("EMP_NO====>"+EMP_NO);
                
                var pfno= $(this).find("[name='pfno']").val();
                //alert("pfno====>"+pfno);
                
                var  sname = $(this).find("[name='sname']").val();
                //alert("sname====>"+sname);
                
                var  fathname = $(this).find("[name='fathname']").val();
                //alert("fathname====>"+fathname);
                
                var relationship = $(this).find("[name='relationship']:checked").val();
                //alert("relationship====>"+relationship);
                
                var dob = $(this).find("[name='dob']").val();
                //alert("dob====>"+dob);
                
                var pencel = $(this).find("[name='pencel']").val();
                //alert("pencel====>"+pencel);
                
                var date = $(this).find("[name='date']").val();
                ///alert("date====>"+date);
                
                var bname = $(this).find("[name='bname']").val();
                ///alert("bname====>"+bname);
                
                var accno= $(this).find("[name='accno']").val(); 
                //alert("accno====>"+accno);
                
                var ifscode= $(this).find("[name='ifscode']").val();
                //alert("ifscode====>"+ifscode);
                
                var adhar = $(this).find("[name='adhar']").val();
                //alert("adhar====>"+adhar);
                
                var adharadd = $(this).find("[name='adharadd']").val();
                //alert("adharadd====>"+adharadd);
                
                var panno= $(this).find("[name='panno']").val();
                //alert("panno====>"+panno);
                
                var mobno = $(this).find("[name='mobno']").val();
                //alert("mobno====>"+mobno);
                   
                   $.ajax({
                           type:"POST",
                           url:"Employee_Details123",
                           data:{ 
                               Date1:Date1,
                               company_name:CLIENTS_LIST,
                               u_no:u_no,
                               fulname:fulname,
                               EMP_NO:EMP_NO,
                               pfno:pfno,
                               sname:sname,
                               fathname:fathname,
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
                           success:function(data)
                           {
                               //alert(data);
                               $('#successMessage').html('Data inserted successfully').delay(5000).fadeOut();
                               $('#successMessage').show();
                               $('#demo-form3').triger("reset");
                               alert("Data inserted successfully");
                           }
                       });
                 
                       return false;
                   });
               });
               function addDate(){
Date1 = new Date();
var month = Date1.getMonth()+1;
var day = Date1.getDate();
var year = Date1.getFullYear();

if (document.getElementById('Date1').value == ''){
document.getElementById('Date1').value = day + '-' + month + '-' + year;
}

}   
</script>      
<!--script>
    $(document).ready(function() {
//     alert("unidt=============> ");
      $("#Data").change( function(){
   //        alert("unidt=============> 1111111111111111");
        var  Data = document.getElementById("Data").value;
   //  alert("unidt=============> "+Unit_Id);
          var res=Data.split("-");
        
        // document.getElementById("company_name").value=res[0];
          //  alert("unidt=============> "+res[0]);
           document.getElementById("DEPARTMENT").value=res[0];
           document.getElementById("Employee_Type").value=res[1];
           document.getElementById("designation").value=res[2];
          document.getElementById("pfp").value=res[3];
        
         <!-- document.getElementById("esicp").value=res[4];
          document.getElementById("hrap").value=res[5];
          document.getElementById("bonusp").value=res[6];
          document.getElementById("Conveyance_Allowance").value=res[7];
          document.getElementById("Education_Allowance").value=res[8];
          document.getElementById("Washing_Allowance").value=res[9];
          document.getElementById("skill_Allowance").value=res[10];
          document.getElementById("pdr").value=res[11];
          document.getElementById("Wages_Register_Rate").value=res[12];
          document.getElementById("LWF").value=res[13];
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
</script-->    

<!--script>
   $(document).ready(function() {
      $(".select2_single").select2({
        placeholder: "Select a state",
        allowClear: true
      });
      $(".select2_group").select2({});
      
    $(".select2_multiple").select2({
        maximumSelectionLength: 9,
        placeholder: "With Max Selection limit 9",
        allowClear: true
      });
    });
        $(function() {
          $( ".datepicker" ).datepicker();
        });
         $(function() {
          $( ".datepicker1" ).datepicker();
        });
         $(function() {
          $( ".datepicker2").datepicker();
        });
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
   
 function showState1(){
          var xmlHttp ; 
 var xmlHttp;
     // var  From_Date = $(this).find("[name='From_Date']").val();
                       var  From_Date =document.getElementById("From_Date").value;
       //                alert("From_Date===>"+From_Date);
                       var  To_Date =document.getElementById("To_Date").value;
     //                 alert("To_Date===>"+To_Date);
                  
if (typeof XMLHttpRequest != "undefined"){
   xmlHttp= new XMLHttpRequest();
       }
       else if (window.ActiveXObject){
   xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
       }
if (xmlHttp==null){
   // alert ("Browser does not support XMLHTTP Request");
return
} 
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
   // alert (" aaaaaaaaaaaaaaaaaa ======>");
 document.getElementById("Day_wise_Attendence").innerHTML=xmlHttp.responseText;  
 }   
var url="datecal?From_Date="+From_Date+"&To_Date="+To_Date;
xmlHttp.onreadystatechange = stateChange;
 //alert ("Browser  support XMLHTTP Request");
 
xmlHttp.open("GET", url, true);
xmlHttp.send(null);

}
 function stateChange(){
   //  alert ("Browser  support XMLHTTP Request")
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
 document.getElementById("Day_wise_Attendence").innerHTML=xmlHttp.responseText;  
 }   
 }   

          
 function showState() {
               var  From_Date =document.getElementById("From_Date").value;
                       //alert("From_Date===>"+From_Date);
                       var  To_Date =document.getElementById("To_Date").value;
                      //alert("To_Date===>"+To_Date);
             
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
                        //   alert("To_Date===>111111111111111");
   var p=document.getElementById("Day_wise_Attendence").innerHTML = this.responseText;
   document.getElementById("Day_wise_Attendence").value=p;
   //alert("p===>"+p);
    }
  };
  var url="datecal?From_Date="+From_Date+"&To_Date="+To_Date;
  xhttp.open("GET",url, true);
  xhttp.send();
}
         
  function today1(){
     var Day_wise_Attendence =document.getElementById("Day_wise_Attendence").value;
     //alert("Day_wise_Attendence="+Day_wise_Attendence);
     var Leave_in_between =document.getElementById("Leave_in_between").value;
      //alert("Leave_in_between="+Leave_in_between);
     var Over_Time_Duties =document.getElementById("Over_Time_Duties").value;
     var valueTotal_Duties=parseInt(Day_wise_Attendence)-parseInt(Leave_in_between)+parseInt(Over_Time_Duties);
     //alert("valueTotal_Duties="+valueTotal_Duties);
     document.getElementById("Total_Duties").value=valueTotal_Duties;
      
  }          
      function EmployeeType(){
        
     var Employee_Type =document.getElementById("Employee_Type").value;
    
    if(Employee_Type =='Skilled Employee')
    {
         
        if(Skilled_Employee1=='0'){
        alert("Skilled Employee is 0 select other Employee type");
    }
     else{
    }
    }
   
    if(Employee_Type=='Semiskilled Employee')
    {
       if( Semiskilled_Employee=='0'){
        alert("Semiskilled Employee is 0 select other Employee type");
        
    }
         else{
    }
    
    }
    if(Employee_Type=='Unskilled Employee')
    {
        if(Unskilled_Employee=='0'){
        alert("Unskilled Employee is 0 select other Employee type");
    }
       else{
    }   
    }
    if(Employee_Type=='Supervisor')
    {
        if(Supervisor=='0'){
        alert("Supervisor is 0 select other Employee type");
    }
          else{
    }
    }
    
  } 
      
   function addDate(){
date = new Date();
var month = date.getMonth()+1;
var day = date.getDate();
var year = date.getFullYear();

if (document.getElementById('date').value == ''){
document.getElementById('date').value = day + '-' + month + '-' + year;
}

}            
          
          </script-->
    </body>
</html>
