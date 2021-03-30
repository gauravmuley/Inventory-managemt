  <%-- 
    Document   : login
    Created on : Aug 19, 2017, 6:18:12 PM
    Author     : kunal
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SecurityBean.DataService"%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<%! ResultSet rs;DataService ds1;ArrayList ar;Iterator ity;Object o1=null; %>
<!DOCTYPE html>
 <html>
    <head>
      <style>
         body{
/*  margin:49px;*/
  color:#6a6f8c;
  background:#F7F7F7 !important;
  font:600 16px/18px 'Open Sans',sans-serif;
}
*,:after,:before{box-sizing:border-box}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}
a{color:inherit;text-decoration:none}

.login-wrap{
  width:100%;
  margin-top: 10px;
  margin:auto;
  max-width:525px;
  min-height:670px;
  position:relative;
/*  background:url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;
  box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);*/
}
.login-html{
  width:100%;
  height:100%;
  position:absolute;
  padding:90px 70px 50px 70px;
  background:rgba(40,57,101,.9);
}
.login-html .sign-in-htm,
.login-html .sign-up-htm{
  top:0;
  left:0;
  right:0;
  bottom:0;
  position:absolute;
  transform:rotateY(180deg);
  backface-visibility:hidden;
  transition:all .4s linear;
}
.login-html .sign-in,
.login-html .sign-up,
.login-form .group .check{
  display:none;
}
.login-html .tab,
.login-form .group .label,
.login-form .group .button{
  text-transform:uppercase;
}
.login-html .tab{
  font-size:22px;
  margin-right:15px;
  padding-bottom:5px;
  margin:0 15px 10px 0;
  display:inline-block;
  border-bottom:2px solid transparent;
}
.login-html .sign-in:checked + .tab,
.login-html .sign-up:checked + .tab{
  color:#fff;
  border-color:#1161ee;
}
.login-form{
  min-height:345px;
  position:relative;
  perspective:1000px;
  transform-style:preserve-3d;
}
.login-form .group{
  margin-bottom:15px;
}
.login-form .group .label,
.login-form .group .input,
.login-form .group .button{
  width:100%;
  color:#fff;
  display:block;
}
.login-form .group .input,
.login-form .group .button{
  border:none;
  padding:15px 20px;
  border-radius:13px;
  background:rgba(255,255,255,.1);
}
.login-form .group input[data-type="password"]{
  text-security:circle;
  -webkit-text-security:circle;
}
.login-form .group .label{
  color:#aaa;
  font-size:12px;
}
.login-form .group .button{
  background:#1161ee;
}
.login-form .group label .icon{
  width:15px;
  height:15px;
  border-radius:2px;
  position:relative;
  display:inline-block;
  background:rgba(255,255,255,.1);
}
.login-form .group label .icon:before,
.login-form .group label .icon:after{
  content:'';
  width:10px;
  height:2px;
  background:#fff;
  position:absolute;
  transition:all .2s ease-in-out 0s;
}
.login-form .group label .icon:before{
  left:3px;
  width:5px;
  bottom:6px;
  transform:scale(0) rotate(0);
}
.login-form .group label .icon:after{
  top:6px;
  right:0;
  transform:scale(0) rotate(0);
}
.login-form .group .check:checked + label{
  color:#fff;
}
.login-form .group .check:checked + label .icon{
  background:#1161ee;
}
.login-form .group .check:checked + label .icon:before{
  transform:scale(1) rotate(45deg);
}
.login-form .group .check:checked + label .icon:after{
  transform:scale(1) rotate(-45deg);
}
.login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
  transform:rotate(0);
}
.login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
  transform:rotate(0);
}

.hr{
  height:2px;
  margin:60px 0 50px 0;
  background:rgba(255,255,255,.2);
}
.foot-lnk{
  text-align:center;
}
</style>
      
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manish Associated Login</title>
        
        <!-- Bootstrap core CSS -->

        <!-- Custom styling plus plugins -->
        <link href="css/custom.css" rel="stylesheet">
        <link href="css/icheck/flat/green.css" rel="stylesheet">


        <script src="js/jquery.min.js"></script>

       
    </head>
    <body style="background:white;">

  <div class="">
    <a class="hiddenanchor" id="toregister"></a>
    <a class="hiddenanchor" id="tologin"></a>


<div class="login-wrap">
<!--  <div class="login-html">-->
      <center>  


     <form id="login_form" method="post" action="Provident_Fund.jsp">

            
         <div class="group">
<!--               <label class="label">Select Client</label>-->
                  <div class="" placeholder="Select Company" required="" >
                         <%try{
                              ds1= new DataService();
                              rs=ds1.create_empclient_data();
                              ar=new ArrayList();
                              while(rs.next())
                              ar.add(rs.getObject(1));
                              rs.close();
                             %>
<!--             <select name="company_name" id="company_name" class="" style="height:32px; background-color:whitesmoke ; border:0px ;color: black; border-radius:10px;width:385px;height:45px;margin-left:2px;">-->
             <select name="company_name" id="company_name" class="form-control" style="height:32px; background-color:rgb(232, 240, 254) !important; box-shadow:0 1px 0 #fff, 0 -2px 5px rgba(0,0,0,0.08) inset; border-radius:10px;width:385px;height:45px;margin-left:2px;">
             <optgroup label="company_name">
             <option value="Select Company">Select Client</option>

                           <%ity=ar.iterator();
                            while(ity.hasNext()){
                             o1=ity.next();
                           %>
  <option value="<%=o1%>"><%=o1%></option>
                             <%}
                             
                             %> 
                </optgroup>
            </select>
          </div>
        </div>

<br>
             <div class="group">
                 <center>    
                     <input type="submit" value="Submit" class="btn btn-default submit input" style="width:115px;height:45px;background-color:lightseagreen;color:white;">
                 </center>
<br>          </div>
<% } catch(Exception u1){ System.out.println("=====>"+u1);  } 
finally{
        try{
        //ds1.c.close();
        }catch(Exception y3){}
}%> 
     </form>
           </div>

   </div>
 </div>
</div>
<script>    
 $(document).ready(function () {
                  //alert('payroll');
 $('form#demo-form3').submit(function () {
    
                var CLIENTS_LIST  = $(this).find("[name='company_name']").val();
                alert("company_name===========>"+CLIENTS_LIST);
                
                   
                   $.ajax({
                           type:"POST",
                           url:"",
                           data:{ 
                               
                               company_name:CLIENTS_LIST
                              
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
              
     
</body>
</html>
