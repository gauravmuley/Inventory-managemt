<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%! 
String uname;
String str1;
%>
<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://103.14.99.198:3306/";
String dbName = "manish_associated";
String userId = "root";
String password ="9QT2{gZvm[Gx~b";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Manish Associated</title>

  <!-- Bootstrap core CSS -->

  <link href="css/bootstrap.min.css" rel="stylesheet">

  <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="css/custom.css" rel="stylesheet">
  <link href="css/icheck/flat/green.css" rel="stylesheet">
  <!-- editor -->
  <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
  <link href="css/editor/external/google-code-prettify/prettify.css" rel="stylesheet">
  <link href="css/editor/index.css" rel="stylesheet">
  <!-- select2 -->
  <link href="css/select/select2.min.css" rel="stylesheet">
  <!-- switchery -->
  <link rel="stylesheet" href="css/switchery/switchery.min.css" />
  <link href="css/datatables/tools/css/dataTables.tableTools.css" rel="stylesheet">

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
<style>
    body{
        background:white;
    }
    ul:active{
        background:whitesmoke;
    }
    li:hover{
        background:whitesmoke;
    }
</style>

<body class="nav-md" style="color: black;">

  <div class="container body" style="color: black;">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <div class="navbar nav_title" style="border: 0; background:teal;">
              <a href="index.html" class="site_title"><i class="fa fa-shield" style="border:none;"></i> <span>Manish Associated</span></a>
          </div>
          <div class="black"></div>

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu" style="margin-top: 65px">
              
           <%               
                    uname =(String) session.getAttribute("uname");
                    try {
                    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                    statement = connection.createStatement();
                    String sql = "SELECT roles FROM admin_user WHERE username='"+uname+"'";

                    resultSet = statement.executeQuery(sql);
                    resultSet.next();
                    str1 = resultSet.getString(1);

                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>
              
                    <div class="menu_section" >
              <ul class="nav side-menu" style="background-color: white;">
                <!--<li><a href="#"><i class="fa fa-home"></i> Home</a></li>-->
                <% if(str1.equals("1")){ %>
                <li><a style="color:whitesmoke; background:white;"><i class="fa fa-user" style="color:black;"></i><label style=" color:black;" >Admin Management</label> <span class="fa fa-chevron-down"></span></a><hr>
                  <ul class="nav child_menu" style="display: none;">
                      <li><a href="add_admin_mail.jsp" style="color:black;"><label style="color:black;">Add Admin Users</label></a></li><hr>
                      <li><a href="admin_view1.jsp" style="color:black;"><label style="color:black;">Manage Admin Users</label></a></li><hr>
                  </ul>
                </li>
                
<!--                 <li><a style="color:whitesmoke; background:white;"><i class="fa fa-user" style="color:black;"></i><label style=" color:black;" >Client Managment</label><span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none;">
                      <li><a href="UploadClientsList.jsp" style="color:black;"><label style="color:black;">Client Excel Sheet Upload</label></a></li>
                      <li><a href="Client_List1.jsp" style="color:black;"><label style="color:black;">Client Form</label></a></li>
                      <li><a href="Client_RecordED.jsp" style="color:black;"><label style="color:black;">Client Record</label></a></li>
                      
                      <li><a href="Clients.jsp" style="color:black;"><label style="color:black;">Clients List</label></a></li>
                      
                  </ul>
                </li>-->
                <li><a style="color:whitesmoke; background:white;"><i class="fa fa-user" style="color:black;"></i><label style=" color:black;" >Create Client</label><span class="fa fa-chevron-down"></span></a><hr>
                  <ul class="nav child_menu" style="display: none;">
<!--                       <li><a href="Upload_Employee_List12.jsp" style="color:black;"><label style="color:black;">Client Excel Sheet Upload</label></a></li>-->
                       <li><a href="Client_List1.jsp" style="color:black;"><label style="color:black;">New Client Form</label></a></li><hr>
<!--                       <li><a href="Client_RecordED.jsp" style="color:black;"><label style="color:black;">Client Record</label></a></li>
                       <li><a href="Clients.jsp" style="color:black;"><label style="color:black;">Client Wise Employee</label></a>-->
                  </ul>
                </li>
                
                <li><a style="color:whitesmoke; background:white;" href="ClientAlfa.jsp"><i class="fa fa-user" style="color:black;"></i><label style=" color:black;" >Client Management</label><span class="fa fa-chevron-down"></span></a><hr>
                  <ul class="nav" style="display: none;"></ul>
                </li>
                
                <li><a style="color:whitesmoke; background:white;"><i class="fa fa-user" style="color:black;"></i><label style=" color:black;" >Employee Management</label><span class="fa fa-chevron-down"></span></a><hr>
                  <ul class="nav child_menu" style="display: none;">
                       <li><a href="Upload_Employee_List12.jsp" style="color:black;"><label style="color:black;">Empoyee Excel Sheet Upload</label></a></li><hr>
                       <li><a href="Employee_Detail.jsp" style="color:black;"><label style="color:black;">Employee Form</label></a></li>
                       <li><a href="Employee_ViewED.jsp" style="color:black;"><label style="color:black;">Empoyee Record</label></a></li>
                       <li><a href="Clients.jsp" style="color:black;"><label style="color:black;">Client Wise Employee</label></a>
                  </ul>
                </li>
                
                <li><a style="color:whitesmoke; background:white;"><i class="fa fa-user" style="color:black;"></i><label style=" color:black;" >Provident_Fund </label><span class="fa fa-chevron-down"></span></a><hr>
                  <ul class="nav child_menu" style="display: none;">
                      <li><a href="Provident_Fund.jsp" style="color:black;"><label style="color:black;">Provident_Fund Form</label></a></li><hr>
                      <li><a href="Provident_Fund.jsp" style="color:black;"><label style="color:black;">Provident_Fund Record</label></a></li><hr>
                      <li><a href="Emp_Client_List.jsp" style="color:black;"><label style="color:black;">Apply For Provident Fund</label></a></li><hr>
                    
                  </ul>
                </li>
                <% } %>
                            
               <% if(str1.equals("2")){ %>
                <li><a style="color:whitesmoke; background:white;"><i class="fa fa-user" style="color:black;"></i><label style=" color:black;" >Client Managment</label><span class="fa fa-chevron-down"></span></a><hr>
                  <ul class="nav child_menu" style="display: none;">
                      <li><a href="Client_List1.jsp" style="color:black;"><label style="color:black;">Client Form</label></a></li>
                      <li><a href="Client_Record.jsp" style="color:black;"><label style="color:black;">Client Record</label></a></li>
                      <!--<li><a href="UploadClientsList.jsp" style="color:black;"><label style="color:black;">Excel Sheet Record</label></a></li>-->
                    
                  </ul>
                </li>
                 
                <li><a style="color:whitesmoke; background:white;"><i class="fa fa-user" style="color:black;"></i><label style=" color:black;" >Employee Managment</label><span class="fa fa-chevron-down"></span></a><hr>
                  <ul class="nav child_menu" style="display: none;">
                      <li><a href="Employee_Detail.jsp" style="color:black;"><label style="color:black;">Employee Form</label></a></li>
                      <li><a href="Employee_View.jsp" style="color:black;"><label style="color:black;">Empoyee Record</label></a></li>
                      <!--<li><a href="Upload_Employee_List12.jsp" style="color:black;"><label style="color:black;">Excel Sheet Record</label></a></li>-->
                    
                  </ul>
                </li>
                 <% } %>
                
                
<!--                <li><a><i class="fa fa-users"></i> Recruit Management  <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none">
                <li><a href="SecurityRecruitment2.jsp">Add a Recruit</a></li>
                <li><a href="Main_Recruitment_View.jsp">View Employees</a></li>
                <li><a href="view_personal_Recruitment.jsp">View Personal Detail</a></li>
                <li><a href="View_ESIC_req.jsp">EMPLOYEE ESIC VIEW </a></li>
                 <li><a href="VIEW_EMP_RECORD_RECRUITMENT.jsp">VIEW EMPLOYEE RECORD </a></li>

                                
                  </ul>
                </li>
                <li><a><i class="fa fa-users"></i> Manage Payroll <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                  <li><a href="Emp_payroll_main.jsp">Payroll Form</a></li>
                  <li><a href="Main_PAYROLL_VIEW.jsp">View Payroll</a></li>
                  <li><a href="view_emp_conveyance.jsp">VIEW EMPLOYEE CONVEYANCE</a></li>
                  <li><a href="ALLOWANCES_PAYROLL.jsp">VIEW ALLOWANCES_PAYROLL</a></li>
                  <li><a href="DEDUCTION_PAYROLL.jsp">VIEW DEDUCTION PAYROLL </a></li>
                  <li><a href="VIEW_LEAVE_MANAGEMENT.jsp"> VIEW LEAVE MANAGEMENT</a></li>
                 
                  <li><a href="empPay_slip.jsp">View Payslip</a></li>
                  <li><a href="empPay_slip_all.jsp">Print All Employee Payslip</a></li>
                  </ul>      -->
                </li>
                
              </ul>
            </div>
            

          </div>
          <!-- /sidebar menu -->

          <!-- /menu footer buttons -->
          <div class="sidebar-footer hidden-small">
            
          </div>
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav" style="background: teal;">

        <div class="nav_menu" style="background: teal;">
          <nav class="" role="navigation" style="background: teal;">
            <div class="nav toggle" style="background: teal; color:white;">
                <a id="menu_toggle" style=" color:white;" ><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right" style="background: teal; color:white;">
                <li class="" style="color: white;">
                <a href="logout.jsp" class="user-profile dropdown-toggle"style="color: white;">
                    <label style="color: white;"> Log Out</label>
                </a>
              </li>

            </ul>
          </nav>
        </div>

      </div>
      <!-- /top navigation -->
