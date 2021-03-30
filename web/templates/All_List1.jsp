

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
            .company_name {
    border-radius: 0px;
    margin-left: 11px;
}

.size-lbl a{
    color: white;
}


        </style>
    </head>
    <body>
   <div class="right_col" role="main">
        <div class="">
        <div class="page-title">
           <div class="title_left">
                  <h3 style="color:black;">Employee Details</h3>
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
                  <div class="emp-btn">         <div class="btn size-lbl" >
                  <a class="" href="Employee_Detail.jsp">EMP FORM</a> 
                  </div>
                  <div class="btn size-lbl">
                  <a class="" href="Employee_ViewED.jsp">EMP RECORD</a> 
                  </div>
                  <div class="btn size-lbl">
                  <a class="" href="Upload_Employee_List12.jsp">EMP EXCEL SHEET UPLOAD</a> 
                  </div></div>
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
     

    </body>
</html>
