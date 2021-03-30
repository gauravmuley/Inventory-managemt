 <%-- 
    Document   : login
    Created on : Aug 19, 2017, 6:18:12 PM
    Author     : kunal
 --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manish Associated</title>
        
        <!-- Bootstrap core CSS -->

        <!-- Custom styling plus plugins -->
        <link href="css/custom.css" rel="stylesheet">
        
        
        <link href="css/icheck/flat/green.css" rel="stylesheet">


        <script src="js/jquery.min.js"></script>

        <!--[if lt IE 9]>
              <script src="../assets/js/ie8-responsive-file-warning.js"></script>
              <![endif]-->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
              <![endif]-->
    </head>
    <body style="background:#3D4C74;">

  <div class="">
    <a class="hiddenanchor" id="toregister"></a>
    <a class="hiddenanchor" id="tologin"></a>

    <div id="wrapper">
      <div id="login" class="animate form">
        <section class="login_content">
            <form id="login_form" method="post" action="LoginServlet">
                <% String Name=request.getParameter("Name");
                request.setAttribute("Company",Name);
                
                %>  
            <h1>Login</h1>
            <div>
              <input name="username" type="text" class="form-control" placeholder="Username" required="" />
            </div>
            <div>
      <input name="password" type="password" class="form-control" placeholder="Password" required="" />
            </div>
            <div>
              <input type="submit" value="Log In" class="btn btn-default submit">
              <a class="reset_pass" href="#">Lost your password?</a>
            </div>
            <div class="clearfix"></div>
            <div class="separator">

              <div class="clearfix"></div>
              <br/>
              <div>
                  <h1><i class="fa fa-paw" style="font-size: 26px;"></i> <%=Name%></h1>

                <p>&copy;2020 All Rights Reserved.</p>
              </div>
            </div>
          </form>
          <!-- form -->
        </section>
        <!-- content -->
      </div>
    </div>
  </div>

         <script type="text/javascript">
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
          </script>
        
</body>
</html>
