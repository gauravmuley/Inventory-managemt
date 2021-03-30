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
  margin:49px;
  color:#6a6f8c;
  background:lightblue;
  font:600 16px/18px 'Open Sans',sans-serif;
}
*,:after,:before{box-sizing:border-box}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}
a{color:inherit;text-decoration:none}

.login-wrap{
  width:100%;
  margin:auto;
  max-width:525px;
  min-height:670px;
  position:relative;
  background:url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;
  box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
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
  <div class="login-html">
      <center>  
          <h1>Create Client</h1></center>
<!--    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Create Company</label>-->
      <div class="login-form">
          
<!--    <div class="sign-in-htm">-->
      <form id="login_form" method="post" action="Insert_Add_Client">
        <div class="group">
          <label for="pass" class="label">Client Name</label>
          <input id="company_name" name="company_name" type="text" class="input" placeholder="Company Name" >
        </div>
        <div class="group">
          <label for="pass" class="label">Location</label>
          <input id="location" name="location" type="text" class="input" placeholder="Location" >
        </div>
            
<!--         <div class="group">
                    
                      <label class="label">Select Company</label>
                      <div class="" placeholder="Select Company" required="" />
                         
                          
                             
                             %> 
                </optgroup>
            </select>
            Choose unit name from select option & Click on select unit button 
             <input type="button" value="Select unit name " id="bUnit_name"> 
                     </div>
                     </div>-->
<!--            <div class="group">
              <label > <input id="stud" name="stud" type="radio" value="student" >
             Student </label>
            
              <label><input id="stud" name="stud" type="radio" value="teacher" >
             Teacher </label>
             </div>-->
<br>
<center>    <div class="group">
              <input type="submit" value="ADD" class="btn btn-default submit input" style="width:100px;height:40px;background-color:steelblue;color:white;">
              </br><u><a class="" href="login.jsp" style="color:white;">Login</a></u>
    </div></center>

            </div>
            <div>
              <h1><center></center></h1><br>
              <h5 style="float: right;">@2020 All Rights Reserved.</h5>
            </div>
     </form>
   </div>
    
          
                
                
<!--    <div class="sign-up-htm">
     <form id="login_form" method="post" action="Insert_Add_Company">
        <div class="group">
          <label for="pass" class="label">Company Name</label>
          <input id="company_name" name="company_name" type="text" class="input">
        </div>
        <div class="group">
          <label for="pass" class="label">Create Password</label>
          <input id="location" name="location" type="password" class="input">
        </div>
          
        
          
        <div class="group">
            <button class="button" onclick="fun()">Create</button>
            <input type="button" value="create" class="button" onclick="fun()">
            <input type="submit" value="Add Company" class="btn btn-default submit">
        </div>
        <div>-->
            
<!--        <h1><center></center></h1><br>
      
        <h5 style="float: right;">@2019 All Rights Reserved.</h5>
       </div>-->

       </div>
          
                  </div>
   
                 
        
    

       
         <script>
             /*$(document).ready(function(){
                    
                    $('form#login_form').submit(function () {
                        var username = $(this).find("[name='username']").val();
                         var password = $(this).find("[name='password']").val();
                         $.ajax({
                                type: "POST",
                                url: "LoginServlet",
                                data: {
                                    username: username,
                                    password: password
                                },
                                success: function(data){
                                    window.location.href = "index.html";
                                }
                            });
                            return false;
                                          
                    });
                });*/
    
  
//    function fun() {
//              
//                        var admin = document.getElementById("admin").value;
//                         var pass1 = document.getElementById("pass1").value;
//                          var pass2 = document.getElementById("pass2").value;
//                     
//                       alert("tttt"+admin+" pass1 : "+pass1+" "+pass2);
//                       
//                         if(pass1== pass2){
//                                alert("ininin");
//                                fun2();
//                            }
//                          else{
//                            alert("PLEASE ENTER SAME PASSWORD");
//                        }
//                        
//                        
//               function fun2(){
//                   alert("on fun2" +admin+" "+pass1);
//                   
//                   
//                   
//                     $.ajax({
//                         
//                    type:"POST",
//                     url:"sign_up",
//                           data: 
//                           { 
//                               admin:admin,
//                               pass1:pass1
//                           },
//                           
//                           success:function(data)
//                           {
//                               //alert(data);
//                               $('#successMessage2').html('Data Updated successfully');
//                               $('#successMessage2').show();
//                              alert("Update Successfull ");
//                           }
//                       });
//                    return false;
//                         
//                     
//                    }
//    
//    }
  
    
          </script>
          
         
</body>
</html>
